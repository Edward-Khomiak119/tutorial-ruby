=begin
age = 18
puts (age)

age = 24
print (age)

text = "Hello all"
puts (text)

happines = 0.98
person_has_car = false
none = nil
print (none)
=end

=begin
words = " Web sait IT proger\nhello"
word = "!"
puts (words.upcase() + word)

some_text = "many shits"
puts(some_text.strip())

some_text = "many shits"
puts(some_text.ength())

website = "itProger"
puts(website,include? "it")
=end

=begin
x = 5
y = 10
res = x + y
res = x - y
res = x * y
res x / y
res = 2 ** 3
puts res 
res = y % x 
puts("results math" + res.to_s)

num = -14.65
puts(num.abs())
puts(num.round())
puts Math.sqrt(144)
puts Math.log(1)
=end

=begin
print("select your name:")
name = gets 
puts("your name:" + name + ",you are cool")
=end

=begin
# команда :ruby (название файла в котором пишешь) - выодит информацию в консоль

print ("select first number:")
x = gets.chomp()
print ("select second number:")
y = gets.chomp().to_f
puts(x.to_f + y) #to_i означает привести к целому числу так же to_f  означает, что выведет числа с точкой
=end

=begin 
#массивы массивы массивы массивы массивы
num = 4
arr = Array[4, 6, 8, 12, "hi", "Hello", 5.67]
puts(arr)

names = Array["George", "Bob", "Alex"]
names[0] = "Diana" 
puts(names)

list = Array.new
list [0] = 29
list[7] = 90
puts (list)
puts list.length()
puts list.reverse()
puts list.include? 29


#Аосциативные массивы
countries = {
    "RU" => "Russia",
    1 => 1.01,
    :UA => "Ukraine"
}

puts countries[:UA]
=end

=begin
#методы методы методы методы методы методы
def sayHello(word = "Notsing", num = 0)
    puts "Hello world"
    puts ("Your word:" + word + " and your number:" + num.to_s)
end    

sayHello("BOOM" ,89)

def summa(x, y)
    return x + y, 70
   
end   

res = summa(56, 4)
puts res[1]
=end



=begin
#условные операторы условные операторыусловные операторыусловные операторы
x = 8
y = 5

if x < y
    puts ("x menshe y")
    puts ("!")
  elsif x == y
    puts("x raven y")
  else
    puts("x libo ravno liboolshe chex y")
end    

isSmall = true
if isSmall or x == 8
    puts("ok")
end    

#возвращаем день недели в зависимости от параметра, который мы будем передавать в метод
def getDayWeek(day)
    nameOfDay = ""

 case day
 when "1"
    nameOfDay = "Monday"
   
when "2"
    nameOfDay = "Thuesday"

when "3"
    nameOfDay = "Wednesday" 

when "4"
    nameOfDay = "Thirsday"  

when "5"
    nameOfDay = "Friday"

when "6"
    nameOfDay = "Saturday"

when "7"
    nameOfDay = "Sunday"
else 
    nameOfDay = "nevernoe znachenie"
 end   

    return nameOfDay
end

puts getDayWeek("4")
=end


=begin
# Цикл While и цикл For Цикл While и цикл For Цикл While и цикл For Цикл While и цикл For

# i = 0
# while i <=5
#     puts i
#     i += 1

# end

# secret = "Blue" # Выводит команду для неверного или верного слова, типа как для пароля
# guess = ""

# while guess != secret
#     puts ("enter word:")
#     guess = gets.chomp()
# end
# puts "Good word"

# x = 1
# y = 6
# for el in x..y
#     puts el 
# end

# names = ["Bob","Kevin","Alex","George"]

# #

# # for name in names 
# #     name += "!"
# #     puts name 
# # end

# # 

# # for el in 0..names.length() - 1
# #     names[el] += "!"
# # end

# # puts names

# #

# names.each do |name_man|
#     puts name_man +="?"
# end
=end


=begin
# Работа с файлами Работа с файлами Работа с файлами Работа с файлами

#
# File.open("text/simple.txt", "r") do |file|
#     puts file.read()
#     # puts file.readchar()
#     # puts file.readline()
#     for line in file.readlines()
#         puts line
#     end
# end

#
# file = File.open("text/simple.txt", "r") do |file|
#    puts file.read()

# end

#
# File.open("text/simple.txt", "a") do |file| #Для записи в сами файлы какого-либо текста
#     file.write("BMW good car")
# end

#
# File.open("text/simple.txt", "w") do |file| #Полностью перезаписывает весь файл, удаляя старую
#     file.write("BMW good car")
# end

#
File.open("text/index.html", "a") do |file| #Для записи в сами файлы какого-либо текста или создания новых файлов
    file.write("<h1>BMW good car</h1>")
end
=end



=begin
# Отслеживание ошибок Отслеживание ошибок Отслеживание ошибок Отслеживание ошибок

list = [6, 8, 9, 23, 78, 12]
# Когда нам выдает какую-либо ошибку, мы можем ее копировать и сразуп ропитсывать ее НО перед ней ставить  rescue
begin
    list ["dog"]
    num 10 / 0

rescue TypeError => e
    puts "e" #или любой другой текс
rescue ZeroDivisionError #Таким образом можем сообщать пользователю, что пошло не так
    puts "delenie na nol" 
end

puts "hi"
=end


=begin
# Объекты и классы  Объекты и классы  Объекты и классы  Объекты и классы  Объекты и классы 

class Car 
   attr_accessor :speed, :model, :color, :wheels  

   def initialize(speed, model, color) #initialize означает, что это именно то, что вызоветсчя при создании объекта
        @speed = speed
        @model = model
        @color = color
   end

   def isSpeedCar
        if @speed > 200
            return true
        end
        return false
   end
   def sayBIPBIP
    puts "BIP"
   end

end

bmw = Car.new(199, "BMW", "Black")

audi = Car.new(250, "audi", "Silwer")

puts bmw.isSpeedCar, bmw.sayBIPBIP
puts audi.isSpeedCar
=end



# Наследование, модули и завершение курса Наследование, модули и завершение курса Наследование, модули и завершение курса

#
# class Transport
#     attr_accessor :color, :wheels

#     def sayBIPBIP
#         puts "Bip Bip"
#     end
# end

# class Cars < Transport
#     attr_accessor :isMechanic 
#     def saySome
#         puts @color
#     end
# end

# class Moto < Transport
#     attr_accessor :isMechanic 
# end


# bmw = Cars.new()
# audi = Cars.new()
# bmw.color = "Black"

# puts bmw.sayBIPBIP, bmw.saySome
# puts audi.sayBIPBIP

=begin
# модули
require_relative "tools.rb"
include Tools

Tools.sayHello('George')
Tools.sayBye('George')
=end