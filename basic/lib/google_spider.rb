#!/usr/bin/env ruby

require 'uri'
require 'cgi'

def curl(headers_txt, target, post_data = nil)

    header_param = headers_txt.split("\n").map {|header| "-H \"#{header}\""}.join(' ')

    cmd = "curl #{header_param}"
    cmd += " -d \"#{post_data}\"" if post_data
    cmd += " \"#{target}\" --compressed"
    cmd += " 2>/dev/null"

    puts "Execute:\n#{cmd}"
    2.times {puts}

    `#{cmd}`
end

google_token = nil
x_gwt_permutation = nil
adwords_token = nil
captcha_code = nil

DEFAULT_HEADER =  <<-EOF
Host: adwords.google.com
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.9.2.10) Gecko/20100914 Firefox/3.6.10
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8
Accept-Language: en-us,zh-cn;q=0.7,zh;q=0.3
Accept-Encoding: gzip,deflate
Accept-Charset: utf-8,GB2312;q=0.7,*;q=0.7
Keep-Alive: 115
Connection: keep-alive
EOF

lambda do
    headers_txt = DEFAULT_HEADER
    target = "https://adwords.google.com/o/Targeting/Explorer?__u=1000000000&__c=1000000000&ideaRequestType=KEYWORD_IDEAS#search.none"

    stuff = curl(headers_txt, target)

    google_token = /,token:'([^',]{38,})',/.match(stuff)[1]
    puts "Got google_token:\n#{google_token}"
    x_gwt_permutation = /'([\w\d]{32})'/.match(stuff)[1]
    puts "Got x_gwt_permutation:\n#{x_gwt_permutation}"

    3.times{puts}
    puts '##################################################'
end.call

lambda do
    headers_txt = DEFAULT_HEADER + <<-EOF
Content-Type: text/x-gwt-rpc; charset=utf-8
X-GWT-Permutation: #{x_gwt_permutation}
X-GWT-Module-Base: https://adwords.google.com/o/Targeting/
Referer: https://adwords.google.com/o/Targeting/Explorer?__u=1000000000&__c=1000000000&ideaRequestType=KEYWORD_IDEAS
EOF

    target = "https://adwords.google.com/o/Targeting/captcha?__u=1000000000&__c=1000000000&challengedService=/o/Targeting/g"

    post_body = "6|1|4|https://adwords.google.com/o/Targeting/|02990CDDCF521142AE1B373ED2008D94|_|getToken|1|2|3|4|0|"

    # value 02990CDDCF521142AE1B373ED2008D94 was from a large cache.html file, and seems like a constant

    stuff = curl(headers_txt, target, post_body)

    adwords_token = /\["([^"]{20,})"\]/.match(stuff)[1]
    puts "Got adwords_token:\n#{adwords_token}"

    3.times{puts}
    puts '##################################################'
end.call



lambda do
    headers_txt = DEFAULT_HEADER
    target = "https://adwords.google.com/o/Targeting/captchaData?token=#{adwords_token}&type=IMAGE"
    stuff = curl(headers_txt, target)
    File.open('/tmp/captchaData.jpg', 'w') do |file|
        file.write(stuff)
    end
    puts "Please view the captcha image manually from /tmp/captchaData.jpg, and type the txt below."
    `open /tmp/captchaData.jpg`
    start_at = Time.now
    puts "Got the captcha image from server at: #{start_at.to_s}"
    captcha_code = gets

    puts "Got captcha_code:\n#{captcha_code}"
    end_at = Time.now
    puts "Got captcha_code from user at: #{end_at.to_s}, used: #{end_at - start_at} seconds"

    3.times{puts}
    puts '##################################################'
end.call


lambda do
    headers_txt = DEFAULT_HEADER + <<-EOF
Content-Type: application/x-www-form-urlencoded; charset=utf-8
X-GWT-Permutation: #{x_gwt_permutation}
X-GWT-Module-Base: https://adwords.google.com/o/Targeting/
Referer: https://adwords.google.com/o/Targeting/Explorer?__u=1000000000&__c=1000000000&ideaRequestType=KEYWORD_IDEAS
Cookie: CaptchaToken=#{adwords_token}; CaptchaAnswer=#{captcha_code}; AdsUserLocale=en_US
EOF
    target = "https://adwords.google.com/o/Targeting/file/DownloadAll"


    puts "Please input your prefered keyword."
    keyword = gets.strip

# old body
#       post_body = <<-EOF
#   __c=1000000000&__u=1000000000&format=CSV&selector=6|1|43|https://adwords.google.com/o/Targeting/|C5B00FFD951AC6A3D904B99DFD00CD63|13k|1bc|14b|en_US|xt|15r|14q|1b3|14t|DUPLICATE|NEGATIVE_KEYWORDS|KEYWORD|COMPETITION|GLOBAL_MONTHLY_SEARCHES|AVERAGE_TARGETED_MONTHLY_SEARCHES|TARGETED_MONTHLY_SEARCHES|IDEA_TYPE|AD_SHARE|EXTRACTED_FROM_WEBPAGE|SEARCH_SHARE|KEYWORD_CATEGORY|NGRAM_GROUP|16n|1b9|cj|16a|1cq|17h|United States|US|16o|17j|English|en|165|166|16v|1ag|1b7|ci|#{keyword}|1|2|3|4|235|5|0|6|7|50|0|8|0|0|9|0|10|11|11|12|11|13|11|14|11|15|11|16|11|17|11|18|11|19|11|20|11|21|11|22|10|3|-10|11|23|11|24|10|5|25|26|27|2|28|29|1|30|31|0|1|32|0|33|29|1|34|35|36|37|38|5|39|40|41|42|-25|43|0|0|0|&token=#{google_token}
#   EOF

    post_body = <<-EOF
__c=1000000000&__u=1000000000&format=CSV&selector=6|1|43|https://adwords.google.com/o/Targeting/|C5B00FFD951AC6A3D904B99DFD00CD63|13y|1br|14p|en_US|y5|165|154|1bi|157|IDEA_IN_ADGROUP|NEGATIVE_KEYWORDS|KEYWORD|COMPETITION|GLOBAL_MONTHLY_SEARCHES|AVERAGE_TARGETED_MONTHLY_SEARCHES|TARGETED_MONTHLY_SEARCHES|IDEA_TYPE|AD_SHARE|EXTRACTED_FROM_WEBPAGE|SEARCH_SHARE|KEYWORD_CATEGORY|NGRAM_GROUP|171|1bo|cv|16o|1d5|17v|United States|US|172|17x|English|en|16j|16k|179|1au|1bm|cu|#{keyword}|1|2|3|4|235|5|0|6|7|50|0|8|0|0|9|0|10|11|11|12|11|13|11|14|11|15|11|16|11|17|11|18|11|19|11|20|11|21|11|22|10|3|-10|11|23|11|24|10|5|25|26|27|2|28|29|1|30|31|0|1|32|0|33|29|1|34|35|36|37|38|5|39|40|41|42|-25|43|0|0|0|&token=#{google_token}
EOF


    pairs = post_body.strip.split('&')

    encoded_post_body = pairs.map do |pair_txt|
        pair = pair_txt.split('=')
        "#{pair[0]}=#{CGI.escape(pair[1])}"
    end.join('&')
    
    stuff = curl(headers_txt, target, encoded_post_body)
    puts stuff

    3.times{puts}
    puts '##################################################'
end.call
