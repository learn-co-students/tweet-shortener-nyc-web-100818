require 'pry'


  def word_substituter(string)
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
words = string.split(" ")

  words.collect do |x|
    if dictionary.include?(x)
      x = dictionary[x]
    else
      x
      end

    end.join(" ")

  end

  def bulk_tweet_shortener(tweets)

 tweets.collect do |words|
  words = words.split(" ")
  puts changed_sentence(words)
   end
end

def changed_sentence(words)
  dictionary = {
"hello" => 'hi',
"to" => '2',
"two" => '2',
"too" => '2',
"for" => '4',
"For" => '4',
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@",
"and" => "&"
}
words.collect do |word|
      if dictionary.include?(word)
          word = dictionary[word]
      else
          word
      end
    end.join(" ")
end

def selective_tweet_shortener(tweets)
  if tweets.length > 140
    word_substituter(tweets)
  else
    tweets
  end
end



def shortened_tweet_truncator(tweet)
if tweet.length > 140
  tweet1 = word_substituter(tweet)
  if tweet1.length > 140
    return tweet1[0...140]
  else
    return tweet
  end
else
  tweet
end
end
