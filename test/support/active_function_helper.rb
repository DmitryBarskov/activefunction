# frozen_string_literal: true

module ActiveFunctionHelper
  def response
    ActiveFunction::Functions::Response.new
  end

  def committed_response
    response.tap(&:commit!)
  end
end

Minitest::Test.include ActiveFunctionHelper
