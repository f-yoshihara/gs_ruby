# http://totutotu.hatenablog.com/entry/2015/05/27/Sinatra%2BMySQL%2BActiveRecord%E3%81%A7Database%E3%81%AE%E8%A8%AD%E5%AE%9A%E3%82%92%E8%A1%8C%E3%81%86

require 'sinatra'
require 'sinatra/reloader'
require './common'

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

get '/register' do
  erb :register
end

# https://qiita.com/ms2sato/items/901d8c5ca77c1133522c

post '/save' do
  user = User.new
  user.name      = params[:name]
  user.gender    = params[:gender]
  user.pref_name = params[:pref_name]
  user.save
  erb :save
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