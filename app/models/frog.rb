# frozen_string_literal: true

# This is the model for the frog
class Frog < ApplicationRecord
  validates :name, presence: true
end
