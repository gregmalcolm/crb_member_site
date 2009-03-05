class Member < ActiveRecord::Base
  has_many :projects_members
  has_many :projects, :through => :projects_members
  has_many :links, :as => :linkable
  
  validates_presence_of :first_name, :last_name, :email
  validates_uniqueness_of :email
end
