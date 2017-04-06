class User < ActiveRecord::Base
  validates :username, :email, { presence: true }
  validates :email, { uniqueness: true }
  has_many  :questions
  has_many  :answers
  has_many  :comments
  has_many  :votes

  validate :check_password

  def check_password
    if @raw_password == ""
      @errors.add(:password, "needs to be 8 characters or more")
    end
  end

  def self.authenticate(email, raw_password)
    user = User.find_by(email: email)
    return user if user && (user.password == raw_password)
  end

  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end

  def password=(new_password)
    @raw_password = new_password
    @password = BCrypt::Password.create(@raw_password)
    self.hashed_password = password
  end

end
