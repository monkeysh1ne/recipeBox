class Recipe < ApplicationRecord
	has_many :ingredients, dependent: :delete_all
	has_many :directions, dependent: :delete_all
	has_many :comments, as: :commentable
	belongs_to :user
	has_attached_file :image, styles: {  :medium => "400x400#" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	accepts_nested_attributes_for :ingredients,
									reject_if: :all_blank,
									allow_destroy: true
	accepts_nested_attributes_for :directions,
									reject_if: :all_blank,
									allow_destroy: true
	validates :title, :description, :image, presence: true 
end
