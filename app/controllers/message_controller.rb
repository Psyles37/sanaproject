class MessageController < ApplicationController
  def index
    @messages = Message.all.order(created_at: :desc)
  end

  def show
    # find_byを用いてpostsテーブルから「params[:id]」に対応するデータを取り出し、変数@postに代入してください
    @message = Message.find_by(id:params[:id])
    #@id = params[:id]
  end

  def new 
  end


  def create
    @message = Message.new(content:params[:content])
    @message.save
    redirect_to("/message")
    
  end

  def edit
    @message = Message.find_by(id:params[:id])
  end

  def update
    @message = Message.find_by(id: params[:id])
    @message.content = params[:content]
    
    if @message.save
      #保存が成功したら一覧に
    redirect_to("/message")
    else 
      #失敗したら、そのページに
      redirect_to("/message/#{@message.id}/edit")
    end
  end

  def destroy
    @message = Message.find_by(id: params[:id])
    @message.destroy
    redirect_to("/message")
  end

end
