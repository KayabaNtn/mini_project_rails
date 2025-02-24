# frozen_string_literal: true

class Api::V1::Users::SessionsController < Devise::SessionsController
  include CommonResponse

  private

  def respond_with resource, _options = {}
    if resource.persisted?
      response_success({ resource: UserSerializer.new(resource).serializable_hash }, "Success")
    else
      unprocessable_entity(resource)
    end
  end

  def respond_to_on_destroy
    jwt_payload = JWT.decode(request.headers["Authorization"].split[1], ENV.fetch("SECRET_KEY_BASE", nil)).first

    user = User.find(jwt_payload["sub"])
    if user
      response_success({}, "Successfully signed")
    else
      response_error({}, UNAUTHORIZED, "Error authenticating")
    end
  end
end
