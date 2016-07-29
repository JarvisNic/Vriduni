class SessionsController < ApplicationController
 
  def new
  end
  def create
    user = User.find_by_siglas(params[:siglas])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: 'Exito!'
    else
      flash.now[:error] = 'Invalid email/password combination'
      render :new , notice: 'Algo salió mal!'
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Hasta Luego' 
  end
end
