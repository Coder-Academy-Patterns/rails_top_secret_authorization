class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  # e.g. with email 'sue@spacex.com', will return 'spacex.com'
  def domain
    self.email.split('@').last
  end

  def company
    Company.find_by(domain: self.domain)
  end
end
