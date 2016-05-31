require "hashtag_url/version"

module HashtagUrl
  SUPPORTED_NETWORKS = [ 'vk', 'vkontakte', 'twitter', 'instagram', 'facebook', 'fb' ]
  def hashtag_url(hashtag, social_network)
    if SUPPORTED_NETWORKS.include? social_network.to_s.underscore
      send social_network, hashtag.to_s.gsub('#', '')
    else
      raise "Gem HashtagUrl doesn't support #{social_network} hashtag links. You can update gem on http://github.com/kalashnikovisme/hashtag_url It's easy!"
    end
  end

  private

  def vk(hashtag)
    "http://vk.com/feed?q=%23#{hashtag}&section=search"
  end

  alias vkontakte vk

  def twitter(hashtag)
    "http://twitter.com/hashtag/#{hashtag}?src=hash"
  end

  def instagram(hashtag)
    "http://instagram.com/explore/tags/#{hashtag}"
  end
  
  def facebook(hashtag)
    "http://facebook.com/hashtag/#{hashtag}?source=feed_text"
  end

  alias fb facebook
end
