class QuestsController < InheritedResources::Base
  skip_before_filter :verify_authenticity_token
  respond_to :html, :json
end
