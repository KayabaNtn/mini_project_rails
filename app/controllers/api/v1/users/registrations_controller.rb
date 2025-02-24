# frozen_string_literal: true

class Api::V1::Users::RegistrationsController < Devise::RegistrationsController
  include CommonResponse

  private

  def respond_with resource, _options = {}
    if resource.persisted?
      response_success(
        {
          resource: UserSerializer.new(resource).serializable_hash
        },
        "Success",
        CREATED_CODE
      )
    else
      unprocessable_entity(resource)
    end
  end
end
