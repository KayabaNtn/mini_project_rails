# frozen_string_literal: true

module CommonResponse
  SUCCESS_CODE = 200
  CREATED_CODE = 201

  BAD_REQUEST = 400
  UNAUTHORIZED = 401
  FORBIDDEN = 403
  NOT_FOUND = 404
  UNPROCESSABLE_ENTITY = 422
  SERVER_ERROR = 500

  def response_success data = {}, message = "Success", code = SUCCESS_CODE
    body = { success: true, code:, message:, data: }
    render status: :ok, json: body
  end

  def response_error data = {}, code = BAD_REQUEST, message = "False"
    body = { success: false, code:, message:, data: }
    render status: code, json: body
  end

  def bad_request message = "Bad request"
    response_error({}, BAD_REQUEST, message)
  end

  def unprocessable_entity entity = nil, message = "Unprocessable Entity"
    message = entity.errors.full_messages if entity.present?

    response_error({}, UNPROCESSABLE_ENTITY, message)
  end

  def unauthorized message = "Unauthorized"
    response_error({}, UNAUTHORIZED, message)
  end

  def not_found message = "Not found"
    response_error({}, NOT_FOUND, message)
  end
end
