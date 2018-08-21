class ApiController < ApplicationController
  before_action :set_default_format

  private
  def set_default_format
  unless request.format == :xml
    request.format = :json
  end
  end
end
