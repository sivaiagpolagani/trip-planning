class Customer < ApplicationRecord
  validates :gender, inclusion: { in: %w(male female) }, allow_blank: false
end
