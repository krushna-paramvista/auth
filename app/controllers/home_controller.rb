class HomeController < ApplicationController
  protect_from_forgery with: :null_session, except: [:shopify_webhook]

  skip_before_action :authenticate_user!, only: [:homepage,:shopify_webhook ]
  
  def homepage

  end

  def dashboard
    
  end

  def shopify_webhook 

    data = JSON.parse(request.body.read.blank? ? 'null' : request.body.read )
    # Process webhook data here, such as creating a subscription in Stripe

    #head :ok  # Respond with 200 OK if everything went well
    render json:{data: data}
  end 

  def identity_verification
    image_data = params[:image] # The base64 image data
    # Handle the image data as needed, e.g., save to a file or process it
    render json: { message: 'Image received' }, status: :ok
  end
end

