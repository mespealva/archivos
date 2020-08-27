data = File.open('notas.data').readlines
data.map!{|line| line.split(",")}

def nota_mas_alta(student)
 [student[0], student.map{|x| x.to_i}.max]
end

puts nota_mas_alta(data[0])
puts nota_mas_alta(data[1])