module Types
  class QueryType < Types::Objects::BaseObject
    field :users, resolver: RootQuery::Users::Resolvers::Index, description: 'All users'
    field :user, resolver: RootQuery::Users::Resolvers::Show, description: 'User'
  end
end
