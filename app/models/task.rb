class Task < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :project
end
