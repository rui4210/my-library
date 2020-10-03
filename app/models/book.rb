class Book < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  #読書状況（ActiveHash）のアソシエーションの設定
  belongs_to_active_hash :reading_situation
  #評価（ActiveHash）のアソシエーションの設定
  belongs_to_active_hash :evaluation

  #アソシエーション
  belongs_to :user
  has_one_attached :image
  has_one_attached :cover


  #検索機能
  def self.search(search)
    if search != ""
      Book.where('title LIKE(?)', "%#{search}%")
      Book.where('author LIKE(?)', "%#{search}%")
      Book.where('genre LIKE(?)', "%#{search}%")
      Book.where('publishing LIKE(?)', "%#{search}%")
      Book.where('record_date LIKE(?)', "%#{search}%")
      Book.where('memo LIKE(?)', "%#{search}%")
    else
      Book.all
    end
  end

  #本情報
  #必須であること
  with_options presence: true do
    #タイトル
    validates :title
    #表紙
    validates :cover
    #登録日
    validates :record_date
    #読書状況
    validates :reading_situation_id
  end

  #「--」の時は保存できないようにする
  with_options numericality: { other_than: 1 } do
    #カテゴリーの選択
    validates :reading_situation_id
  end

end
