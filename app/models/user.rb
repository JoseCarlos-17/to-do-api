# frozen_string_literal: true

class User < ApplicationRecord
  has_many :tasks, dependent: :destroy

  enum status: { active: 0, inactive: 1 }
end
