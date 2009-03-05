class Link < ActiveRecord::Base
  belongs_to :linkable, :polymorphic => true
  
  validates_presence_of :url
end
