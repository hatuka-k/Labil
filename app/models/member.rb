class Member < ActiveRecord::Base
  before_save {self.email = email.downcase}
  before_create :create_remember_token

  has_one :user

  has_many :statuses
  has_many :locations, through: :statuses

  has_many :messages

  has_secure_password
  validates :password, length: {is:4}

  def Member.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def Member.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = Member.encrypt(Member.new_remember_token)
    end
end
