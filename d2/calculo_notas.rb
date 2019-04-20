def nota_mas_alta(archivo_con_notas, nombre = "Francisca")
    data = open(archivo_con_notas).read.split()
    arrayx = 0
    data.count.times do |i|
        if data[i].include?(nombre)
        arrayx = data[i]
        end
    end
    arrayx = arrayx.split(',')
    arrayx.map!{|e| e.to_i}
    return arrayx.max
end

nota_mas_alta("notas.data",)