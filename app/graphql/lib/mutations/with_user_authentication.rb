class Lib::Mutations::WithUserAuthentication < Lib::Mutations::Base
  def ready?(**_args)
    return true if context[:current_user].present?

    raise GraphQL::ExecutionError, 'Only authenticated users can run this mutation'
  end
end
