def display_current_inventory(inventory_list)
  # use #each to iterate through each item of the inventory_list (a hash)
  # use puts to output each list item "<key>, quantity: <value>" to console
  inventory_list.each { |item, quantity| puts "#{item}, quantity: #{quantity}" }
end

def display_guess_order(guesses)
  # use #each_with_index to iterate through each item of the guesses (an array)
  # use puts to output each list item "Guess #<number> is <item>" to console
  # hint: the number should start with 1
  guesses.each_with_index() { |item, number| puts "Guess ##{number+1} is #{item}" }
end

def find_absolute_values(numbers)
  # use #map to iterate through each item of the numbers (an array)
  # return an array of absolute values of each number
  numbers.map() { |number| number > 0 ? number : -number }
end

def find_low_inventory(inventory_list)
  # use #select to iterate through each item of the inventory_list (a hash)
  # return a hash of items with values less than 4
  inventory_list.select() { |item, number| number < 4}
end

def find_longest_word(word_list)
  # use #reduce to iterate through each item of the word_list (an array)
  # return the longest word in the word_list
  # hint: the result of each iteration should be the accumulator when its 
  # length is greater than word.length (otherwise the result should be the word)
  word_list.reduce { |longest_word, current_word| longest_word.length > current_word.length ? longest_word : current_word }
end

def find_longer_words(word_list, base_word)
  # use #reduce to iterate through each item of the word_list (an array)
  # return an array of words that is longer than the base_word (a string)
  # hint: use a new array or an empty array as the initial accumulator value
  word_list.reduce([]) do |longer_words, current_word| 
    if current_word.length > base_word.length
      longer_words.push(current_word)
    else
      longer_words
    end
  end
end

def find_word_lengths(word_list)
  # use #reduce to iterate through each item of the word_list (an array)
  # return a hash with each word as the key and its length as the value
  # hint: use a new hash or an empty hash as the initial accumulator value
  word_list.reduce({}) do |word_lengths, current_word| 
    word_lengths[current_word] = current_word.length
    word_lengths
  end
end
