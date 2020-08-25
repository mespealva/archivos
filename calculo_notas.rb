data = File.open('notas.data').readlines
data.map!{|line| line.split(",")}

def nota_mas_alta(student)
 name = student.delete_at(0)
 grades = student.map{|e| e.to_i}
 max_grade = grades.max
 return max_grade
end

data = open('notas.data').readlines.map(&:chomp)
data_student = data.map{|v| v.split(',')}

puts nota_mas_alta(data_student[0])
puts nota_mas_alta(data_student[1])