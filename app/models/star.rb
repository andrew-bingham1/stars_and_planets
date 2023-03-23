class Star < ActiveRecord::Base 
  has_many :planets

  def self.order_by
    order(created_at: :desc)
  end

  def planets_count
    planets.size
  end
end