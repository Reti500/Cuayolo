class SessionsController < ApplicationController
  def new
  end

  def create
  	user = login(params[:username], params[:password], params[:remember_me])
  	if user
  		redirect_back_or_to root_url, :notice => "Conectado!"
  	else
  		flash.now.alert = "Email o password invalido"
  		rende :new	
  	end	
  end

  def destroy
  	logout
  	redirect_to root_url, :notice => "Desconectado!"
  end
end
