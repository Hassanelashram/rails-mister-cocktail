class ApplicationController < ActionController::Base
  def theLink(instance)
    "https://res.cloudinary.com/dlseg9qtn/image/upload/v1591956648/#{instance.photo.key}.png"
  end
end
