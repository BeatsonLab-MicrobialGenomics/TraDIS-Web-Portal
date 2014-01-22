class Mynewdatum < ActiveRecord::Base
	belongs_to :user
	has_many :experiment_data
	accepts_nested_attributes_for :experiment_data 
	default_scope -> { order('created_at DESC') }
  validates :user_id, presence: true
end
