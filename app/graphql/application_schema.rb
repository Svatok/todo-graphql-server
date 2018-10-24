class ApplicationSchema < GraphQL::Schema
  rescue_from ActiveRecord::RecordNotFound do |exception|
    raise GraphQL::ExecutionError, exception.message.truncate_words(3)
  end

  rescue_from ::Exceptions::AuthenticationError do
    raise GraphQL::ExecutionError, 'You must be authenticated for this action'
  end

  mutation(MutationType)
  query(QueryType)
end
