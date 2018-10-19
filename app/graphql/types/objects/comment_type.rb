module Types::Objects
  class CommentType < BaseObject
    description 'A project'

    field :id, ID, null: false
    field :body, String, null: false
    field :attachment, String, null: true
    field :created_at, Types::Scalars::DateTime, null: false
    field :updated_at, Types::Scalars::DateTime, null: false
    field :task, TaskType, null: false
  end
end
