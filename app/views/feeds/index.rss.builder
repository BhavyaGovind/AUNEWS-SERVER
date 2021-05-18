xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do

  xml.channel do
    xml.title 'News Headlines'
    xml.description 'News Content'
    xml.link 'http://localhost:3000'
    xml.language 'en'


    for post in @posts
      xml.item do
        xml.title post['title']
        xml.pubDate(post['publishedAt'])
        xml.description(h(post['description']))
        xml.link(post['url'])
        xml.image_url(post['urlToImage'])
      end
    end
  end
end
