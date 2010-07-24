class ApplicationController < ActionController::Base
 layout 'admin/main'
 before_filter :authenticate_user!

end
