class Url < ApplicationRecord
  validates :origin_url, presence: true
  
  # validates :origin_url, format: { with: /(http|https):\/\/,
  #   message: "only allows letters" }
end
