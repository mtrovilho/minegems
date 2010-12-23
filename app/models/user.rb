class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :name, :email, :password, :password_confirmation, :remember_me

  validates_presence_of :name
  validates_uniqueness_of :name, :email, :case_sensitive => false

  has_friendly_id :name, :use_slug => true, :strip_non_ascii => true
end