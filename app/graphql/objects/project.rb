module Objects
  class Project < Lib::Objects::Base
    description 'A project'

    field :id, ID, null: false
    field :title, String, null: false
    field :position, Int, null: false
    field :created_at, Types::Scalars::DateTime, null: false
    field :updated_at, Types::Scalars::DateTime, null: false
    field :tasks, [Objects::Task], null: false
    field :user, Objects::User, null: false
  end
end
