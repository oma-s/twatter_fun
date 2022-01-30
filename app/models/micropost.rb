# frozen_string_literal: true

class Micropost < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  validates :image,   content_type: { in: %w[image/jpeg image/gif image/png],
                                      message: 'must be a valid image format' },
                      size: { less_than: 4.megabytes,
                              message: 'should be less than 4 MB' }

  # Returns a resized image for display.
  def display_image
    image.variant(resize_to_limit: [500, 300])
  end
end
