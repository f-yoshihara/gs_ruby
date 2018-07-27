require './common'

url = 'http://www.city.kosai.shizuoka.jp/'

charset = nil
html = open(url) do |f|
    charset = f.charset
    f.read
end

doc = Nokogiri::HTML.parse(html, nil, charset)

# pp doc.css(".columnTop").count
pp doc.css(".MTitleLink").text
