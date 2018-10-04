
def word_substituter(string)
  dictionary = {
    "hello"=> "hi",
    "two"=> 2,
    "to"=> 2,
    "too"=> 2,
    "for"=> 4,
    "four"=> 4,
    "be"=> "b",
    "you"=> "u",
    "at"=> "@",
    "and"=> "&"
  }
  array = string.split(" ")
  new_array = []
    array.each do |word|
      if dictionary.has_key?(word)
        new_array << dictionary.fetch(word)
      else
        new_array << word
      end
    end
return new_array.join(" ")
end

def bulk_tweet_shortener(tweets)
  dictionary = {
    "hello"=> "hi",
    "two"=> 2,
    "to"=> 2,
    "too"=> 2,
    "for"=> 4,
    "four"=> 4,
    "be"=> "b",
    "you"=> "u",
    "at"=> "@",
    "and"=> "&"
  }
tweets.each do |string|
  new_tweets = ""
  array = string.split(" ")
  new_array = []
    array.each do |word|
      if dictionary.has_key?(word.downcase)
        new_array << dictionary.fetch(word.downcase)
      else
        new_array << word
      end
    end
    new_tweets << new_array.join(" ")
puts new_tweets
end
end


def selective_tweet_shortener(tweets)
    dictionary = {
      "hello"=> "hi",
      "two"=> 2,
      "to"=> 2,
      "too"=> 2,
      "for"=> 4,
      "four"=> 4,
      "be"=> "b",
      "you"=> "u",
      "at"=> "@",
      "and"=> "&"
    }

if tweets.length > 140
  array = tweets.split(" ")
  new_array = []
    array.each do |word|
      if dictionary.has_key?(word)
        new_array << dictionary.fetch(word)
      else
        new_array << word
      end
    end
return new_array.join(" ")

else
  return tweets
end
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = ""
  truncated_tweet = ""

if tweet.length > 140
  shortened_tweet = selective_tweet_shortener(tweet)
    if shortened_tweet.length > 140
      truncated_tweet = shortened_tweet[0..139]
      return truncated_tweet
    else
      return shortened_tweet
    end
else
  return tweet
end


end
