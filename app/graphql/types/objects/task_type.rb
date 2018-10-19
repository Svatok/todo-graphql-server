module Types::Objects
  class TaskType < BaseObject
    description 'A project'

    field :id, ID, null: false
    field :name, String, null: false
    field :done, Boolean, null: false
    field :position, Int, null: false
    field :deadline, Types::Scalars::DateTime, null: false
    field :created_at, Types::Scalars::DateTime, null: false
    field :updated_at, Types::Scalars::DateTime, null: false
    field :comment, CommentType, null: false
    field :project, ProjectType, null: false
  end
end
