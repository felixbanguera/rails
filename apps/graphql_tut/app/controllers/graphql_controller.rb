class GraphqlController < ApplicationController
  def execute
    puts "GraphqlController::execute !"
    variables = ensure_hash(params[:variables])
    query = params[:query]
    operation_name = params[:operationName]
    context = {
      # we need to provide session and current user
      session: session,
      current_user: current_user
    }
    puts "GraphqlController::execute >> variables: #{variables}"
    result = GraphqlTutSchema.execute(query, variables: variables, context: context, operation_name: operation_name)
    puts "GraphqlController::execute >> result: #{result}"
    render json: result
  end

  private

  # gets current user from token stored in session
  def current_user
    # if we want to change the sign-in strategy, this is the place todo it
    return unless session[:token]

    crypt = ActiveSupport::MessageEncryptor.new(Rails.application.secrets.secret_key_base.byteslice(0..31))
    token = crypt.decrypt_and_verify session[:token]
    user_id = token.gsub('user-id:', '').to_i
    User.find_by id: user_id
  rescue ActiveSupport::MessageVerifier::InvalidSignature
    nil
  end

  # Handle form data, JSON body, or a blank value
  def ensure_hash(ambiguous_param)
    case ambiguous_param
    when String
      if ambiguous_param.present?
        ensure_hash(JSON.parse(ambiguous_param))
      else
        {}
      end
    when Hash, ActionController::Parameters
      ambiguous_param
    when nil
      {}
    else
      raise ArgumentError, "Unexpected parameter: #{ambiguous_param}"
    end
  end
end
