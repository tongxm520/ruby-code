require 'rubygems'
require 'active_record'

class Money
	UP_ID = ["零", "壹", "贰", "叁", "肆", "伍", "陆", "柒", "捌", "玖"]

	def test
	  puts translate("5999")
  end
	
	def translate(money) 
    return "" if money.to_i >= 1000000
		chinese_money = ""
		money =  check_start(money)
		zero_num = 0
		digit = money.split("").count #判断总位数		      
		temp = digit #保存位数
    i = 0
    while i < temp do      
			#判断当前位数是几
			pos = money.at(i).to_i
			#获取大写表示
			chinese_digit = UP_ID[pos]
			unit = ""

			if (pos != 0) 
				#得到当前最高位的中文表示
				unit = get_unit(digit)
				zero_num = 0
			else 
				# 如果亿、万为零，须特殊处理，零不说出，而保留亿或万，这时flag增加
				if (digit == 9 || digit == 5) 
				  chinese_digit = ""
				  unit = get_unit(digit)				
				elsif (1 == digit) #最后一位零不写				
				  chinese_digit = ""			
				else				
				  zero_num += 1
				end
			end
						     
			#判断零的个数
			if (zero_num > 1)
				# 忽略该位，处理下一位
				if(pos==0 && (i+1)<temp)
					_next = money.at(i+1).to_i
					#下一位不为零则加入
					if(0!=_next)
						chinese_money << unit << chinese_digit
					elsif(9==digit)
            chinese_money << unit << chinese_digit
					elsif(5==digit)
            chinese_money << unit << chinese_digit
					end
				end
				digit -= 1			
			else
				# 如果是一十亿、一十万之类的，前面的“一”不要，这样更符合中文习惯
				if (pos == 1)
					if ((digit == 6 || digit == 10)&&0==i)
						chinese_digit = ""
					end
				end

				if(pos==0 && zero_num>0 && (i+1)<temp && (5!=digit || 9!=digit))		
				  _next = money.at(i+1).to_i
					if 0!=_next
						#chinese_digit = UP_ID[pos]
						chinese_money << unit << chinese_digit
					end
				else		
					chinese_money << chinese_digit << unit
				end
				digit -= 1	
			end
      i += 1
    end 
					
		chinese_money + "元整"
	end



#  检查输入是否以零开头
#  @param money
#  @return
	def check_start(money)	
		money = money.slice(1..-1) if money.start_with? "0"
		money.start_with?("0") ? check_start(money) : money
	end


#	位数表示，如亿、万等
#	@param digit
#	@return
	def get_unit(digit) 
		unit = nil
		unit = case digit
		when 12, 8, 4	 then "千"
		when 11, 7, 3	 then "百"
		when 10, 6, 2	 then "十"
		when 9 then "亿"
		when 5 then "万"
		else 
      ""
		end						
	end
end 

m = Money.new
m.test

