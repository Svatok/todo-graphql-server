module Lib::Resolvers
  class Base < GraphQL::Schema::Resolver
    private

    def run(operation, params = nil)
      result = operation.call(params: params, 'object' => object, 'context' => context)
      @model = result[:model]
      result
    end
  end
end
