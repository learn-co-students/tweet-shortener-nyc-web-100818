require 'pry'

def dictionary
  dictionary = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
end

#Write a method, word_substituter that takes in a string of a tweet as an argument and shortens that string based on the allowed substitutes.
def word_substituter(tweet)
  array = tweet.split(" ") #puts all the tweet hash into indivdual array to allow iterate
    #binding.pry
     array.collect do |tweet_words|   #itereate through tweet blocks.
        if dictionary.keys.include?(tweet_words.downcase)  #dictionay.key => pulls only keys in dictionary then check to see if keys are included in tweet
          tweet_words = dictionary[tweet_words.downcase] #downcased so it will match with key
        else
          tweet_words
        end
      end.join(" ")
  end


#Write a method, bulk_tweet_shortener that takes in an array of tweets, iterates over them, shortens them, and puts out the results to the screen.
def bulk_tweet_shortener(array)
# binding.pry
  array.collect do |tweet|
    puts word_substituter(tweet)
  end
end

#Write a new method, selective_tweet_shortener, that only does the substitutions if the tweet is longer than 140 characters. If the tweet is 140 characters or shorter, just return the original tweet.
def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
    else
      tweet
  end
end

#method, shortened_tweet_truncator, that truncates the tweet to 140 characters with an ellipsis (...) if it's still too long after substitution.
def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
      return "#{tweet[0..136]}..."  #interpolate tweet to truncate the tweet => "text here is displayed up till set number..."
    else
    tweet
  end
end


#If you want "Hello, World!" to be limited to the first five letters, you can do:

#   str = "Hello, World!"
#   str[0...5] # => "Hello"
#   If you want an ellipses, just interpolate it:

#   "#{str[0...5]}..." #=> "Hello..."


