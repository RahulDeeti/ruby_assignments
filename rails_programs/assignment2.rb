def take_input
    puts 'Enter the word to be matched'
    word = gets.chomp
    puts 'Enter length of the array'
    len = gets
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
        if start_with_word?(word, temp_arr[i])
            temp_arr.delete_at(i)
            len -= 1
            i -= 1
        end
       
        i += 1        
    end
    puts 'Output array'
    puts temp_arr
end

def start_with_word?(word, arr_word)
    if arr_word.length < word.length
        return false
    end
    i = 0
    word = word.split('')
    arr_word = arr_word.split('')
    while i < word.length do
        if word[i] == arr_word[i]
            i += 1
        else
            break
        end
    end
    if i == word.length
        return true
    else
        return false
    end
end

take_input
