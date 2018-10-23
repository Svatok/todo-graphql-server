module Types
  class QueryType < Types::Objects::BaseObject
    field :users, resolver: Resolvers::Users::Index, description: 'All users'
    field :user, resolver: Resolvers::Users::Show, description: 'User'
  end
end
