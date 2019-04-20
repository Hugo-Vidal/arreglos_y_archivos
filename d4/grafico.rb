def chart(array)
    i = 0
    array.count.times do |i|
        print "|"+"*"*2*array[i]+"\n"
    end

    print ">"+"-"*2*array.max
    print "\n"

    while i != (array.max + 1)
        print "#{i} "
        i = i.next
    end
    print "\n"
end

chart([5, 3, 2, 5, 10])

