class Message < ActiveRecord::Base

#　名前は必須かつ20文字以内
validates :name , length: { maximum: 20 } , presence: true
#内容は必須入力かつ2文字以上100文字以下
validates :body , length: {minimum: 2 , maximum: 100 } , presence: true

# 年齢は必須入力かつ0歳以上
validates :age ,numericality:{only_interger: true, greater_than:-1 }, presence: true
end
