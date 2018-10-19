module RootQuery::Users::Resolvers
  class Index < ::Resolvers::Base
    type [::Types::Objects::UserType], null: false

    def resolve
      run ::RootQuery::Users::Index
      @model
    end
  end
end
