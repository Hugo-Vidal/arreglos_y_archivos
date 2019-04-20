def proyecciones(archivo_externo, mes_i1, mes_f1, ponderador_1, mes_i2, mes_f2, ponderador_2)
    data = open(archivo_externo).read.split(',')
    array1 = []

    sum = 0
    sum1 = 0

    data.each do |e|
        array1.push(e.to_i)
    end

    array1.count.times do |i|
        if i+1 >= mes_i1 and i+1 <= mes_f1
            sum += (array1[i] * ponderador_1)
        else
            sum += array1[i]
        end
    end

    array1.count.times do |i|
        if i+1 >= mes_i2 and i+1 <= mes_f2
            sum1 += (array1[i] * ponderador_2)
        else
            sum1 += array1[i]
        end
    end

    array2 = [sum.round(2), sum1.round(2)]

    File.write('resultados.data',array2.join("\n"))

    puts "Proceso Completado"
end

proyecciones('ventas_base.db', 0, 6, 1.1, 7, 12, 1.2)
