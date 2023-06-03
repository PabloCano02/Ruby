=begin
  Write a program that iterates over a string (paragraph) and prints:
  1. The shortest word.
  2. The longest work.
  3. The palindromes present in the paragraph.
=end

print "Escriba un parrafo sobre el cual se hará el ejercicio: "
paragraph = gets.chomp

def shortest_word(paragraph)
  words = paragraph.split(" ")
  shortest = words[0]
  words.each do |word|
    if word.length < shortest.length
      shortest = word
    end
  end
  shortest
end

def longest_word(paragraph)
  words = paragraph.split(" ")
  longest = words[0]
  words.each do |word|
    if word.length > longest.length
      longest = word
    end
  end
  longest
end

def palindromes(paragraph)
  words = paragraph.split(" ")
  palindrome_words = []
  words.each do |word|
    if word.downcase == word.downcase.reverse
      palindrome_words << word
    end
  end
  palindrome_words
end

# Print shortest word
shortest = shortest_word(paragraph)
puts "Shortest word: #{shortest}"

# Print longest word
longest = longest_word(paragraph)
puts "Longest word: #{longest}"

# Print palindromes
palindrome_words = palindromes(paragraph)
puts "Palindromes: #{palindrome_words}"
