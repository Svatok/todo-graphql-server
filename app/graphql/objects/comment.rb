module Objects
  class Comment < Lib::Objects::Base
    description 'A project'

    field :id, ID, null: false
    field :body, String, null: false
    field :attachment, String, null: true
    field :created_at, Lib::Scalars::DateTime, null: false
    field :updated_at, Lib::Scalars::DateTime, null: false
    field :task, Objects::Task, null: false
  end
end
