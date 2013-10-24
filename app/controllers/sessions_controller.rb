class SessionsController < ApplicationController
  def new
  end

  def create
  	user = login(params[:username], params[:password], params[:remember_me])
  	if user
  		redirect_back_or_to root_url, :notice => "Conectado!"
  	else
  		flash[:danger] = "Datos erroneos"
  		# render :new	
      redirect_back_or_to root_url
  	end	
  end

  def destroy
  	logout
  	redirect_to root_url, :notice => "Desconectado!"
  end
end
