# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:first_name) { |m| "MyString#{m}" }
    sequence(:last_name) { |m| "MyString#{m}" }
    status { "active" }
  end
end
