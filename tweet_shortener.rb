def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter tweet
  tweets_array = tweet.split
  tweets_array.map! do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
  tweets_array.join " "

end
