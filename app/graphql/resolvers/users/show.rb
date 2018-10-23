module Resolvers::Users
  class Show < ::Resolvers::Base
    type ::Types::Objects::UserType, null: true

    argument :id, ID, required: true

    def resolve(**args)
      run ::Users::Show, args
      @model
    end
  end
end
