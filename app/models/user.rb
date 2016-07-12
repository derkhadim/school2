class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :role
  has_many :students

  before_create :set_default_role

  private
	  def set_default_role
	    self.role ||= Role.find_by_name('parent')
	  end

end
