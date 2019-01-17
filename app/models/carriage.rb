class Carriage < ApplicationRecord
  belongs_to :train

  validates :number, :top_seats, :bottom_seats, presence: true

  # default_scope { order(:number) }

  scope :economy, -> { where(type: 'EconomyCarriage') }
  scope :coupe, -> { where(type: 'CoupeCarriage') }
  scope :ordered, -> { order(:number) }
end
