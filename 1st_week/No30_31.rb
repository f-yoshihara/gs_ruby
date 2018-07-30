require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

post '/hello_post' do
  @name = params[:name]
  erb :hello
end

get '/hello_get' do
  @name = params[:name]
  erb :hello
end

# post ''
# get '/path/to' do
#   "ルーティング成功！"
# end

# # *の部分がブロック引数に入る
# get '/hello/*' do |name|
#   "hello #{name}. how are you?"
# end

# get '/erb_template_page' do
#   erb :erb_template_page
# end

# get '/markdown_template_page' do
#   markdown :markdown_template_page
# end

# get '/erb_and_md_template_page' do
#   erb :erb_and_md_template_page, :locals => { :md => markdown(:erb_and_md_template_page) }
# end