module NavigationHelpers
  # Put helper methods related to the paths in your application here.
  include Rails.application.routes.url_helpers
  
  def homepage
    "/"
  end
end

RSpec.configuration.include NavigationHelpers, :type => :acceptance