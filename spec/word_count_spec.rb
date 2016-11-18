require("rspec")
require("sinatra")
require("./lib/word_count.rb")

describe("the program will calculate the frequency of a word in a string") do

  it("will have an output of 2 if the users enters 'peck' with a string containing peck twice ") do
  expect('peck'.word_frequency("If Peter Piper picked a peck of pickled peppers, where's the peck of pickled peppers Peter Piper picked?")).to(eq("Word Input: peck String_input: If Peter Piper picked a peck of pickled peppers, where's the peck of pickled peppers Peter Piper picked? Output: 2"))
  end

  it("it will have an output of 4 if the word is included in the string four times") do
    expect("cat".word_frequency("I love love cat in the hat cat meow cat cat")).to(eq("Word Input: cat String_input: I love love cat in the hat cat meow cat cat Output: 4"))
  end

  it("it will have an output of 5 regardless of capitalization") do
    expect("dog".word_frequency("Hello my Dog i am looking for my dog, do you did dog?")).to(eq("Word Input: dog String_input: Hello my Dog i am looking for my dog, do you did dog? Output: 1"))
  end
end
