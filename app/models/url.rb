class Url < ApplicationRecord
  validates :url
  validates :url, format: URI::regexp(%w[http https])
end
