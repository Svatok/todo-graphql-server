module Types::Objects
  class ProjectType < BaseObject
    description 'A project'

    field :id, ID, null: false
    field :title, String, null: false
    field :position, Int, null: false
    field :created_at, Types::Scalars::DateTime, null: false
    field :updated_at, Types::Scalars::DateTime, null: false
    field :tasks, [TaskType], null: false
    field :user, UserType, null: false
  end
end
