require './common'

headline = HeadLine.new
headline.label = "BOOKMARK"
headline.title = "G's ACADEMY FUKUOKA 第1期満員御礼！8月より第2期生募集！"
headline.save

__END__

HeadLine.create(
    label: 'EVENT',
    title: '【結果速報】GLOBAL GEEK AUDITION "LAB4"開催しました！'
)