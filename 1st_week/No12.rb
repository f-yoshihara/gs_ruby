require './common'

url = 'https://gsacademy.tokyo/'

def open_html(url)
  charset = nil
  html = open(url) do |f|
      charset = f.charset
      f.read
  end
  Nokogiri::HTML.parse(html, nil, charset)
end

doc = open_html(url)

doc.css("a").each do |link|
  url_news_md = link[:href].match(/https:\/\/gsacademy\.tokyo\/news.+$/)
  if url_news_md
    url_news = url_news_md.to_s
    doc_news = open_html(url_news)
    doc_news.xpath("//div[@class='row']/p[1]").each do |node|
      p node.text
    end
  end
end