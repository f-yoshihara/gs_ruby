require './common'

url = 'https://gsacademy.tokyo/'

charset = nil
html = open(url) do |f|
    charset = f.charset
    f.read
end

doc = Nokogiri::HTML.parse(html, nil, charset)

doc.css("a").each do |link|
  link_news_md = link[:href].match(/https:\/\/gsacademy.tokyo\/news.+$/)
  if link_news_md
    link_news = link_news_md.to_s
    charset_news = nil
    html_news = open(link_news) do |f|
      charset_news = f.charset
      f.read
    end
    doc_news = Nokogiri::HTML.parse(html_news, nil, charset_news)
    doc_news.xpath("//div[@class='row']/p[1]").each do |node|
      p node.text
    end
  end
end