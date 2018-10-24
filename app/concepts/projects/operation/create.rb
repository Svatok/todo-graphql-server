class Projects::Create < Trailblazer::Operation
  step :model!
  step Contract::Build(constant: Projects::Contract::Create)
  step Contract::Validate()
  step Contract::Persist()

  def model!(options, current_user:, **)
    options[:model] = current_user.projects.new
  end
end
