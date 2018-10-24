class MutationType < Lib::Objects::Base
  field :createUser, mutation: Users::Mutations::Create
  field :createProject, mutation: Projects::Mutations::Create
  field :createSession, mutation: Sessions::Mutations::Create
end
