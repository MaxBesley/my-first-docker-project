# Sums whole numbers that are provided as user input.
#     example usage:
#         $ ruby sum.rb
#         Enter numbers:   40    21      50
#         sum is 111
#         Enter numbers: ^C

loop do
    print "Enter numbers: "
    input = gets.chomp
    if input.match /^ *\d*( +\d+)* *$/  # spaces can be put anywhere in the line
        list = input.scan /\b\d+\b/     # extract out all the whole number substrings
        numbers = list.map {|str| str.to_i}
        puts "sum is #{numbers.sum}"
    else
        raise RuntimeError, "Bad input"
    end
end
