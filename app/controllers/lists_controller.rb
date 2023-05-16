class ListsController < ApplicationController
  def index
        @list = Book.new
        @lists = Book.all  
  end
  def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
    list = Book.new(list_params)
    # 3. データをデータベースに保存するためのsaveメソッド実行
    list.save
    # 4. トップ画面へリダイレクト
    redirect_to '/'
  end
  def show
  end

  def edit
  end
  
  
    private
  # ストロングパラメータ
  def list_params
    params.require(:book).permit(:title, :body)
  end
end
