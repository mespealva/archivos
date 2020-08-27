data = File.open('ventas_base.db').read.split(",")
arr= data.map!{|x| x.to_f}

def proyeccion (arr, aumento, desde, hasta)
    filtered_arr = arr[desde..hasta]
    sum =filtered_arr.map{|x| x*aumento}.sum
end

primero = proyeccion(arr, 1.1, 0, 5)
segundo = proyeccion(arr, 1.2, 6, 11)

first = primero.to_s
second = segundo.to_s

File.write('resultados.data', first + ("\n") + second)

