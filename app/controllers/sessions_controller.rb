class SessionsController < ApplicationController
 
 def create
  user = User.find_by_email(params[:email])
  if user && user.authenticate(params[:password])
    if params[:remember_me]
      cookies.permanent[:auth_token] = user.auth_token
    else
      cookies[:auth_token] = user.auth_token
    end
    redirect_to root_url, :notice => "Logeado con 'exito"
  else
    flash.now.alert = "Datos incorrectos"
    render "new"
  end
end

def destroy
  cookies.delete(:auth_token)
  redirect_to root_url, :notice => "Hasta pronto"
end

end
