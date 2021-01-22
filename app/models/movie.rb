class Movie < ApplicationRecord
  validates :title, uniqueness: true
  validates :plot, length: {in: 20..950}
  validates :year, numericality: {only_integer: true}
end
