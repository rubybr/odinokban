#encoding: cp866

puts "�����㪨� ������"

print "��� �⠢�� (���. �㬬� $10): "
stavka = gets.to_i

puts "����쪮 ࠧ ������ ��⮬��?"
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
puts "��� �⠢�� �� ����� ���� �ਭ��!"
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

puts "��� ����� - #{hod}"

if x == 7 && y == 7 && z == 7
puts "�믠�� �᫮ - 777"
puts "��� �먣��� $#{sem}"
puts "�⮣: $#{stavka = stavka + sem}"
elsif x == 8 && y == 8 && z == 8
puts "�믠�� �᫮ - 888"
puts "��� �먣��� $#{vos}"
puts "�⮣: $#{stavka = stavka + vos}"
elsif x == 9 && y == 9 && z == 9
puts "�믠�� �᫮ - 999"
puts "��� �먣��� $#{deva}"
puts "�⮣: $#{stavka = stavka + deva}"
elsif x == 1 && y == 2 && z == 3
puts "�믠�� �᫮ 123"
puts "��� �먣��� $#{tri}"
puts "�⮣: $#{stavka = stavka + tri}"
elsif x == 6 && y == 6 && z == 6
puts "��ୠ� ��⪠! �믠�� �᫮ - 666"
puts "�⮣: $#{stavka = stavka - sat}"
elsif x == 0 && y == 0 && z == 0
puts "�믠�� �᫮ - 000 - ��� ��� ��������!"
puts "��� �㬬�: $#{stavka = nul}"
exit
else
puts "�믠�� �᫮ - #{x}#{y}#{z}"
puts "�� ��祣� �� �먣ࠫ� � ���� $10! �஡�� ᭮��!"
puts "��� �㬬�: $#{stavka = stavka - 10}"
if stavka <= 0 || stavka <= 10
puts "� ��� �������筮 �।�� ��� �த������� ����."
puts "��� �㬬�: $#{stavka}"
exit
end
end
puts "������ �㬬�: $#{stavka}"
end 

