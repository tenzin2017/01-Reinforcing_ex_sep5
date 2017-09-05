#Write code to generate a hash where the keys are the numbers from 1 to 50 and the values follow these rules:

# if the number is divisible by 2 the value should be one more than the key
# if the number is divisible by 7 the value should be one less than the key
# if the number is divisible by 2 and 7 the value should be the key multiplied by 2
# otherwise the value should be the same number as the key



def f(v)
  if v % 2 == 0 && v % 7 != 0
     v + 1
  elsif v % 7 == 0 && v % 2 != 0
     v - 1
  elsif v % 2 == 0 && v % 7 == 0
     v * 2
  else
    v
  end
end

 array = (1..50)
 puts h = Hash[array.collect {|v| [v, f(v)]}]
