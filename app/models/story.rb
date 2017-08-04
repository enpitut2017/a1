class Story < ApplicationRecord
  
  #validates :name, length: { maximum:20 }
  validate :content_error
  validate :name_error

  def content_error
    #contentが空の時にエラーメッセージを追加する
    if content.empty?
      #errors.add(:content, "に関するエラーを追加")
      errors[:base] << "Contentの欄は空白のまま送信できません"
    end
  end

  def name_error
    #nameが空の時にエラーメッセージを追加する
    if name.empty?
      errors[:base] << "Nameの欄は空白のまま送信できません"
    end
    if name.length > 20
      errors[:base] << "Nameには２０文字までしか入力できません"
    end
  end
end
