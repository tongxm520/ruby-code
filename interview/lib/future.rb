def _count
  file=File.dirname(__FILE__)+"/future"
  s=File.read file
  line_c=s.scan(/^.*\n/).size
  vowel_c=s.scan(/[aeiou]/i).count
  [{:line_c=>line_c},{:vowel_c=>vowel_c}]
end

def _caculate
  file=File.dirname(__FILE__)+"/future"
  line_c,vowel_c=0,0
  File.open(file,"r").each_line do |line|
    line_c+=1
    vowel_c+=line.scan(/[aeiou]/i).size
  end
  [{:line_c=>line_c},{:vowel_c=>vowel_c}]
end

def _search
  file=File.dirname(__FILE__)+"/future"
  line_c,vowel_c=0,0
  s=File.read file
  s.scan(/^.*\n/) do |l|
    line_c+=1
    vowel_c+=l.scan(/[aeiou]/i).size
  end
  [{:line_c=>line_c},{:vowel_c=>vowel_c}]
end

def _word_count
  file=File.dirname(__FILE__)+'/future'
  word_c,vowel_word_c=0,0
  s=File.read file
  s.scan(/^.*\n/) do |l|
    word_c +=l.scan(/\w+/).size
    l.scan(/\w+/) do |w|
      vowel_word_c +=1 if w=~/[aeiou]/
    end
  end
  [{:word_c=>word_c},{:vowel_word_c=>vowel_word_c}]
end

puts _search.inspect
puts _caculate.inspect
puts _count.inspect
puts _word_count.inspect

