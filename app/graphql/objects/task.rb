module Objects
  class Task < Lib::Objects::Base
    description 'A project'

    field :id, ID, null: false
    field :name, String, null: false
    field :done, Boolean, null: false
    field :position, Int, null: false
    field :deadline, Types::Scalars::DateTime, null: false
    field :created_at, Types::Scalars::DateTime, null: false
    field :updated_at, Types::Scalars::DateTime, null: false
    field :comment, Objects::Comment, null: false
    field :project, Objects::Project, null: false
  end
end
