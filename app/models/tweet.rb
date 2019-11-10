class Tweet < ApplicationRecord
  belongs_to :user

  validates :text, presence: true, unless: 'image.present?'
end
