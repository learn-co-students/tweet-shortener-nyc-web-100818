require 'pry'

# Write your code here.
def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  # binding.pry
end

def word_substituter(tweet)
tweet_array = tweet.split # tweet split to array to iterate

  tweet_array.map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word # else, keep the word the same
    end
  end.join(" ")

  # alternative
 #  new_array = tweet_array.map do |word|
 #   if dictionary.keys.include?(word.downcase)
 #     word = dictionary[word.downcase]
 #   else
 #     word
 #   end
 # end
 # new_array.join(" ")
end

def bulk_tweet_shortener(array)
# binding.pry
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  # trim the fat! 
  if word_substituter(tweet).length > 140
    "#{tweet[0...137]}..."
  else
    tweet
  end
  # binding.pry
#   final_tweet = " "
#   not_short_enough = selective_tweet_shortener(tweet)
#   l = not_short_enough.length
#
#   if l > 140
#     final_tweet = "#{not_short_enough[0...137]}..."
#   else
#     tweet
#   end
end
# do not need a return outside the if else statement bc when it finishes, it returns itself
