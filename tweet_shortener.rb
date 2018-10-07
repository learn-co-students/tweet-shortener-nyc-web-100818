# Write your code here.

def dictionary
  words_to_be_substituted = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end


def word_substituter(tweet)
  array = tweet.split(" ") 
     array.collect do |words|  
        if dictionary.keys.include?(words) 
          words = dictionary[words] 
        else
          words
      end
      end.join(" ")
  end

def bulk_tweet_shortener(tweets)
  tweets.collect do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
  array = tweet.split(" ") 
     array.collect do |words|  
        if dictionary.keys.include?(words) 
          words = dictionary[words] 
        else
          words
      end
      end.join(" ")
    else
      tweet
    end
  end
  
def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    "#{tweet[0..136]}..."
  else
    tweet
  end
end