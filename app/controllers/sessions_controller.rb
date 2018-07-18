class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    #render plain: user
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to '/orders'
    else
      respond_to do |format|
        format.html { render :new }
        format.json { render json: 'Invalid email/password combination', status: :unprocessable_entity }
      end
      #flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
      #render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
