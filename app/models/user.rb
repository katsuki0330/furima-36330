class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  with_options presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/, message: 'に全角文字を使用してください' } do
    validates :first_name
    validates :last_name
  end
  validates :password,:password_confirmation,format:{with: /(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{7,}/}
  with_options presence: true, format: { with: /\A[ァ-ヴー]+\z/, message: 'に全角kanaを使用してください' } do
    validates :first_name_kana
    validates :last_name_kana
  end
  validates :birthday, presence: true
end
