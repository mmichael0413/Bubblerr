#require "rails_admin/application_controller"

#module RailsAdmin
 #class ApplicationController < ::ApplicationController
 #  before_filter :is_admin?
#
 #  private
#
#   def is_admin?
#     if current_user.nil? || current_user.role.name != "Sysadmin"
#       head(:forbidden)
#       false
#     end
#   end
# end
#end