class ApplicationController < ActionController::Base
  def hello
    render html: 'hello, world world!'
  end
end
