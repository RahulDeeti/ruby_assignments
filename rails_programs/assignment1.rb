 
def take_input
    puts 'Enter the word to be matched'
    word = gets.chomp
    puts 'Enter length of the array'
    len = gets.chomp
    len = Integer(len)
    i = 0
    puts 'Enter the values in the array'
    temp_arr = []
    
    while i < len do
        temp_arr.push(gets.chomp)
        i+=1
    end

    process_array(temp_arr,word)
end

def process_array(temp_arr, word)
    len = temp_arr.length
    i = 0
    while i<len do
        if temp_arr[i] == word
            temp_arr.delete_at(i)
            len -= 1
            i -= 1
        end
        i += 1
    end
    puts 'Output array'
    puts temp_arr
end

take_input