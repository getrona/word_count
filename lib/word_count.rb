class String
  define_method(:word_frequency) do |string_input|
    word_input = self.downcase
    word_count = 0
    string_input.downcase.split(" ").each { |word|
      if word == word_input
        word_count += 1
      end
    }
    "Word Input: #{self} String_input: #{string_input} Output: #{word_count}"
  end
end
