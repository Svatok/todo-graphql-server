class Task < ApplicationRecord
  has_one :comment, dependent: :destroy
  belongs_to :project
end
