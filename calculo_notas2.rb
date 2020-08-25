data = File.open('notas.data').readlines
data.map!{|line| line.split(",")}

def notas_mas_alta(students)
  max_grade = []
  students.each do |student|
    name = student.delete_at(0)
    grades = student.map{|e| e.to_i}
    max_grade.push([name, grades.max]) 
  end
  return max_grade
end
 

print notas_mas_alta(data)
puts