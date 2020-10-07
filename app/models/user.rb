class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :books

  #ユーザー情報
  #ネームが必須であること
  validates :name, presence: true
  #メールアドレスが必須であること
  validates :email, presence: true
  #メールアドレスが一意性であること
  validates :email, uniqueness: true
  #メールアドレスは@を含む必要があること
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX }
  #パスワードが必須であること
  validates :password, presence: true
  #パスワードは6文字以上であること
  validates :password, length: { minimum: 6 }
  #パスワードは半角英数字混合であること
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i
  validates :password, format: { with: VALID_PASSWORD_REGEX }

end
