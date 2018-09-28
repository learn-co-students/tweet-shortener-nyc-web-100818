# Write your code here.
def word_substituter(string)
  dictionary = {
    :hello => "hi",
    :to => "2",
    :two => "2",
    :too => "2",
    :for => "4",
    :four => "4",
    :be => "b",
    :you => "u",
    :at => "@",
    :and => "&"
  }
  string.split(" ").map{ |w| dictionary.key?(w.downcase.to_sym)? dictionary[w.downcase.to_sym] : w}.join(" ") 
end 

def bulk_tweet_shortener(tweetArray)
  tweetArray.each do |tweet|
    x = word_substituter(tweet) 
    puts x 
  end 
end 

def selective_tweet_shortener(tweet)
  tweet.length > 140? word_substituter(tweet) : tweet 
end 

def shortened_tweet_truncator(tweet) 
  x = word_substituter(tweet) 
  x.length > 140 ? "#{x[0..136]}...": x 
end 

