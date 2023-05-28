###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
    # skip if not integer
    next if arg !~ /^-?[0-9]+$/

    # convert to integer
    i_arg = arg.to_i
    print "Number ", i_arg
    print "\n"
    
    # insert result at the right position
    is_inserted = false
    i = 0
    l = result.size
   puts "i and l are ", i, l, is_inserted
    print "Result is", result
    print "\n" 
    while !is_inserted && i < l do
        if result[i] < i_arg
            i += 1
        else
            result.insert(i - 1, i_arg)
            is_inserted = true
            print "Break out"
            break
        end
        puts "Inside the while loop"
        puts "i and l are ", i, l, is_inserted
        print "Result is", result
        print "\n"
    end
    result << i_arg if !is_inserted
    print "Here"
end

puts result
