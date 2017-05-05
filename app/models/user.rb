class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" },
                    default_url: "http://s1.iconbird.com/ico/2013/12/505/w450h4001385925286User.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  def User
  	@user = current_user
  end

  def full_name
  	"#{first_name} #{last_name}"
  end
end
