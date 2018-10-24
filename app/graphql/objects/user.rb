module Objects
  class User < Lib::Objects::Base
    description 'A user'

    field :id, ID, null: false
    field :email, String, null: false
    field :created_at, Types::Scalars::DateTime, null: false
    field :updated_at, Types::Scalars::DateTime, null: false
    field :projects, [Objects::Project], null: false
  end
end
