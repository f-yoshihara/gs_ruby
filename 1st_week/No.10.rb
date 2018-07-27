require './common'

url = 'https://gsacademy.tokyo/'

charset = nil
html = open(url) do |f|
    charset = f.charset
    f.read
end

doc = Nokogiri::HTML.parse(html, nil, charset)

doc.xpath("//p[contains(text(), 'INTERVIEW')]/following-sibling::h1").each do |node|
  p node.text
end