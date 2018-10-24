class Users::Mutations::Create < Lib::Mutations::Base
  argument :email, String, required: true
  argument :password, String, required: true
  argument :password_confirmation, String, required: true

  field :user, Objects::User, null: true
  field :errors, [Objects::Error], null: false

  def resolve(**args)
    result = Users::Create.call(params: args, 'object' => object, 'context' => context)
    if result.success?
      {
        user: result[:model],
        errors: []
      }
    else
      {
        user: nil,
        errors: Lib::Service::ErrorsConverter.call(result['contract.default'])
      }
    end
  end
end
