puts "Однорукий бандит"

print "Ваша ставка (мин. сумма $10): "
stavka = gets.to_i

puts "Сколько раз крутить автомат?"
raz = gets.to_i

nul = stavka * 0
sat = stavka / 2
tri = 123

if stavka.between?(10, 100)
sem = 70
vos = 80
deva = 90
elsif stavka.between?(101, 1000)
sem = 700
vos = 800
deva = 900
elsif stavka.between?(1001, 10000)
sem = 7000
vos = 8000
deva = 9000
elsif stavka.between?(10001, 100000)
sem = 70000
vos = 80000
deva = 90000
elsif stavka.between?(100001, 1000000)
sem = 700000
vos = 800000
deva = 900000
else
puts "Ваша ставка не может быть принята!"
exit
end



1.upto(raz) do |hod| 
sleep(0.05)
x = rand(0..9)
y = rand(0..9) 
z = rand(0..9)

#nul = stavka * 0
#sem = 70
#vos = 80
#deva = 90
#tri = 123
#sat = stavka / 2

puts "Ход номер - #{hod}"

if x == 7 && y == 7 && z == 7
puts "Выпало число - 777"
puts "Ваш выигрыш $#{sem}"
puts "Итог: $#{stavka = stavka + sem}"
elsif x == 8 && y == 8 && z == 8
puts "Выпало число - 888"
puts "Ваш выигрыш $#{vos}"
puts "Итог: $#{stavka = stavka + vos}"
elsif x == 9 && y == 9 && z == 9
puts "Выпало число - 999"
puts "Ваш выигрыш $#{deva}"
puts "Итог: $#{stavka = stavka + deva}"
elsif x == 1 && y == 2 && z == 3
puts "Выпало число 123"
puts "Ваш выигрыш $#{tri}"
puts "Итог: $#{stavka = stavka + tri}"
elsif x == 6 && y == 6 && z == 6
puts "Черная метка! Выпало число - 666"
puts "Итог: $#{stavka = stavka - sat}"
elsif x == 0 && y == 0 && z == 0
puts "Выпало число - 000 - ваш счет обнуляется!"
puts "Ваша сумма: $#{stavka = nul}"
exit
else
puts "Выпало число - #{x}#{y}#{z}"
puts "Вы ничего не выиграли и теряете $10! Пробуйте снова!"
puts "Ваша сумма: $#{stavka = stavka - 10}"
if stavka <= 0 || stavka <= 10
puts "У вас недостаточно средств для продолжения игры."
puts "Ваша сумма: $#{stavka}"
exit
end
end
puts "Текущая сумма: $#{stavka}"
end 

