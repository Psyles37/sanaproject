
class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
  
    def hello
      render html: "ハロー,サナトリウム！！ "
    end
    def hello2
      render html: "せんせぇ？名取にガチ恋しても、いいんだぞい！！"
    end
      def hello3
      render html: "あ、かといって結婚とかそういうのはちょっと…"
    end
      def hello4
      render html: "私は、同じクラスのサッカー部員と付き合ってますので…ごめんね？"
    end
  end