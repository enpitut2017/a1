class Story < ApplicationRecord

  belongs_to :category, optional: true
  belongs_to :department, optional: true

  validate :content_error
  validate :name_error
  validate :title_error
  validate :company_error

  def content_error
    #contentが空の時にエラーメッセージを追加する
    if content.empty?
      #errors.add(:content, "に関するエラーを追加")
      errors[:base] << "体験談の欄は空白のまま送信できません"
    end
  end

  def name_error
    #nameが空の時にエラーメッセージを追加する
    if name.empty?
      errors[:base] << "名前の欄は空白のまま送信できません"
    end
    if name.length > 20
      errors[:base] << "名前には20文字までしか入力できません"
    end
  end

  def title_error
    #titleが空の時にエラーメッセージを追加する
    if title.empty?
      errors[:base] << "タイトルの欄は空白のまま送信できません"
    end
    if title.length > 40
      errors[:base] << "タイトルには40文字までしか入力できません"
    end
  end

  def company_error
    #companyが空の時にエラーメッセージを追加する
    if company.empty?
      errors[:base] << "企業名の欄は空白のまま送信できません"
    end
    if company.length > 40
      errors[:base] << "企業名には40文字までしか入力できません"
    end
  end



end
