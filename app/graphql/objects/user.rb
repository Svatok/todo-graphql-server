module Objects
  class User < Lib::Objects::Base
    description 'A user'

    field :id, ID, null: false
    field :email, String, null: false
    field :created_at, Lib::Scalars::DateTime, null: false
    field :updated_at, Lib::Scalars::DateTime, null: false
    # field :projects, [Objects::Project], null: false
    field :projects, resolver: Users::Projects::Resolvers::Index
    # field :errors, [Objects::Error], null: true
  end
end
