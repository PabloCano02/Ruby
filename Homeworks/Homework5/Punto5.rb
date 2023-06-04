#Write a function that receives a string and an integer number, returning an array which contains the words
#of that string whose size is greater that the received number

puts "Enter a sentence:"
sentence = gets.chomp

puts "Enter a number:"
number = gets.chomp.to_i


def words_greater_than(string, number)
  words = string.split(" ")
  result = []
  words.each do |word|
    if word.length > number
      result << word
    end
  end
  return result
end

result = words_greater_than(sentence, number)
puts "Words greater than #{number}:"
puts result.inspect

