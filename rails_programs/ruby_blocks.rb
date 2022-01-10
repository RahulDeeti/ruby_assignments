def hello
    yield
end

hello { 
    puts 'This is blocks demo file' 
}

# Block with arguments

def test
    yield(10)
    yield(20)
end

test{
    |num|
    puts "The value you entered is #{num}"
}

#Block with more than one argument
def sum
    yield(10,20)
end
sum{
    |a,b|
    puts "Sum of two values is #{a+b}"
}

#Block with '&' parameter

def some_param(&block)
    block.call(10,20)
end

some_param{
    |a|
    puts "Hello, you entered #{a}"
}
some_param{
    |a,b|
    puts "#{a}, #{b}"
}