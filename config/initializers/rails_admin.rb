RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  config.authorize_with :cancan, AdminAbility

  ## == PaperTrail ==
  config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    charts
    new
    clone
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    history_index
    history_show
  end

  config.model Project do
    configure :asset, :jcrop
  
    #field :asset do
    #  jcrop_options aspectRatio: 500.0/320.0
    #end
  end
 
  config.model Faq do
    field :question do
      group :default
    end
    field :answer do
      group :default
    end
    field :ftype do
      group :default
    end

    group :advanced do
      active false
      #hide
    end

    field :versions do
      group :advanced
    end
    field :roles do
      group :advanced
    end
  end
end
