class Book < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :reading_situation
  
  #アソシエーション
  belongs_to :user
  has_one_attached :image
  has_one_attached :cover

  #本情報
  #必須であること
  with_options presence: true do
    #タイトル
    validates :title
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
