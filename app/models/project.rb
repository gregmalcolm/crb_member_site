class Project < ActiveRecord::Base
  has_many :projects_members
  has_many :members, :through => :projects_members
  has_many :links, :as => :linkable
end
