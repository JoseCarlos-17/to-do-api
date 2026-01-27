# frozen_string_literal: true

class User < ApplicationRecord
  include Rails.application.routes.url_helpers

  has_many :tasks, dependent: :destroy

  enum status: { active: 0, inactive: 1 }

  has_one_attached :profile_image

  def profile_image_url
    if self.profile_image.attached?
      "#{ENV['BASE_URL']}#{rails_blob_path(self.profile_image, only_path: true)}"
    end
  end
end
