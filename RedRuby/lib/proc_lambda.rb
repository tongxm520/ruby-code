#encoding:utf-8
# To change this template, choose Tools | Templates
# and open the template in the editor.

def proc_test
  f=Proc.new {return "从Proc代码块中直接跳出"}
  f.call
  return "proc_test正常退出"
end

def lambda_test
  f=lambda {return "从lambda代码块中直接跳出"}
  f.call
   return "lambda_test正常退出"
end

puts proc_test
puts lambda_test

#使用lambda时才会按照正常的方式继续执行方法中的代码