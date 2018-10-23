module Resolvers::Users
  class Index < ::Resolvers::Base
    type [::Types::Objects::UserType], null: false

    def resolve
      run ::Users::Index
      @model
    end
  end
end
