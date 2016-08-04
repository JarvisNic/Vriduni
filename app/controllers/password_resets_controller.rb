class PasswordResetsController < ApplicationController
 def create
  user = User.find_by_email(params[:email])
  user.send_password_reset if user
  redirect_to root_url, :notice => "Correo Envíado con instrucciones"
end

def edit
  @user = User.find_by_password_reset_token!(params[:id])
end

def update
  @user = User.find_by_password_reset_token!(params[:id])
  if @user.password_reset_sent_at < 2.hours.ago
    redirect_to new_password_reset_path, :alert => "El tiempo de cambio ha expirado"
  elsif @user.update_attributes(params[:user])
    redirect_to root_url, :notice => "La contraseña ya fue cambiada"
  else
    render :edit
  end
end
end
