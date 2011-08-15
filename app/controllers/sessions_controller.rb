class SessionsController < Clearance::SessionsController
  protected
  def url_after_create
    burgers_path
  end
end