require "hashtag_url/version"

module HashtagUrl
  SUPPORTED_NETWORKS = [ 'vk', 'vkontakte', 'twitter', 'instagram', 'facebook' 'fb' ]
  def hashtag_url(hashtag, social_network)
    ht = hashtag.to_s.gsub('#', '')
    if SUPPORTED_NETWORKS.include? ht
      send social_network, ht
    else
      raise "Gem HashtagUrl doesn't support #{social_network} hashtag links. You can update gem on http://github.com/kalashnikovisme/hashtag_url It's easy!"
    end
  end

  private

  def vk
    "vk.com/feed?q=##{hashtag}&section=search"
  end

  alias vkontakte vk

  def twitter
    "twitter.com/hashtag/#{hashtag}?src=hash"
  end

  def instagram
    "instagram.com/explore/tags/#{hashtag}"
  end
  
  def facebook
    "facebook.com/hashtag/#{hashtag}?source=feed_text"
  end

  alias fb facebook
end
