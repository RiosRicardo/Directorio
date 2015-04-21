class UsuarioSessionsController < ApplicationController
  def new
  end

 def create
  usuario = Usuario.find_by_username(params[:username])
  if usuario && Usuario.find_by_password(params[:password])
    session[:usuario_id] = usuario.id
    render :text => "Login exitoso", :status => 500
  else
    render :text => "This is an error", :status => 500
  end
end

  def destroy
    session[:usuario_id] = nil
   	render "new"
  end
end
