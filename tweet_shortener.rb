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


def word_substituter(tweet)
  array = tweet.split(" ") #puts all the tweet indivdual array to allow iterate
    #binding.pry
     array.collect do |words|   #itereate through tweet blocks
        if dictionary.keys.include?(words.downcase)  #dictionay.key => pulls only keys in dictionary then check to see if keys are included in tweet
          words = dictionary[words.downcase] #downcased so it will match with key
        else
          words
        end
      end.join(" ")
  end

def bulk_tweet_shortener(array)
# binding.pry
  array.collect do |tweet|
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
  if word_substituter(tweet).length > 140
      return "#{tweet[0..136]}..."  #interpolate tweet to truncate the tweet => "text here is displayed up till set number..."
  else
  tweet
  end
end

#If you want "Hello, World!" to be limited to the first five letters, you can do:

# str = "Hello, World!"
# str[0...5] # => "Hello"
# If you want an ellipses, just interpolate it:

# "#{str[0...5]}..." #=> "Hello..."
