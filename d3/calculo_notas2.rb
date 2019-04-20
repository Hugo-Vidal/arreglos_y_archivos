def nota_mas_alta(nombre_archivo = "notas.data")
    data = open(nombre_archivo).read.split()
    array = [] 
    arrayf = []
    data.map!{|e| e.split(',')}
    data.count.times do |i|
        array.push(data[i].map{|e| e.to_i})
        print "Nota más alta de #{data[i][0]}, es #{array[i].max} \n"
        arrayf.push(array[i].max)
    end
    return arrayf
end

nota_mas_alta()
