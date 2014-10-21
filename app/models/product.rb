class Product < ActiveRecord::Base
  mount_uploader :file, FileUploader

  belongs_to :user
  has_many :sales

  validates :price, numericality: { greater_than: 49, message: "must be at least 50 cents" }

  delegate :email, to: :user, prefix: true
end
