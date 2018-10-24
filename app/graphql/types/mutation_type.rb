module Types
  class MutationType < Lib::Objects::Base
    field :createUser, mutation: Users::Mutations::Create
  end
end
