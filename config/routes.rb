Rails.application.routes.draw do
  #TOPページ
  get "/" => "home#top"
  #artページ（イラストなどが投稿できるページ）
  get "art" => "home#art"
  #novelページ（小説を投稿できるページ（フォームでいけるもんなのか？））
  get "novel" => "home#novel"
  #？？？ページ（闇名取をだすところ）
  get "yami" => "home#yami"


  #messageページ（名取へのメッセージを送ることのできるページ）
  get "message" => "message#index"
  #新規投稿
  get "new" => "message#new"
  #showページ
  get "message/:id" => "message#show"
  #投稿内容を受け取るアクション
  post "create" => "message#create"
  #投稿の編集
  get "message/:id/edit" => "message#edit"
  #投稿の編集内容を受け取る
  post "message/:id/update" => "message#update"
  #投稿の削除
  post "message/:id/destroy" => "message#destroy"


  







  
 #get "message/index" => "message#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
