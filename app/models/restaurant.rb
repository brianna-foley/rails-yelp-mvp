class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  @restaurant_categories = %w[chinese italian japanese french belgian]
  validates :category, presence: true, inclusion: { in: @restaurant_categories }
end
