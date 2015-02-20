class WelcomeController < ApplicationController
  load_and_authorize_resource :class => false, :only => [:index]

  def index
  end
  
  def about 
  end
end
