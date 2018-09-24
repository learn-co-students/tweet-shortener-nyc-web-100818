sample_tweet = "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"

def dictionary
  dictionary = {
    'hello' => 'hi',
    'too' => '2',
    'two' => '2',
    'to' => '2',
    'for' => '4',
    'be' => 'b',
    'you' => 'u',
    'at' => '@',
    'and' => '&'
  }
end

def word_substituter(tweet)
  short_tweet = []
  tweet.split(' ').each do |word|
    dictionary.each do |k,v|
      word.replace v if k == word.downcase
    end
    short_tweet << word
  end
  short_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  short_tweet = selective_tweet_shortener(tweet)
  short_tweet.length > 140 ? short_tweet[0..139] : short_tweet
end
