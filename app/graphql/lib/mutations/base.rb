class Lib::Mutations::Base < GraphQL::Schema::RelayClassicMutation
  private

  def run(operation, params = nil)
    result = operation.call(params: params, 'object' => object, 'context' => context)
    @model = result[:model]
    result
  end
end
