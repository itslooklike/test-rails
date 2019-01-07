class Train < ApplicationRecord
  validates :number, presence: true
  # belongs_to :railway_station
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id, optional: true
  belongs_to :current_route, class_name: 'Route', foreign_key: :current_route_id, optional: true
end
