module SessionsHelper
  
	def salve()
		if @aux.save
			redirect_to egressos_url
		end
	end
	
	def ingles()
		@idioma=1
		redirect_to home_url
	end
	
	def espanhol()
		@idioma=1
		redirect_to espanhol_url
	end
	
	def portugues()
		@idioma=1
		redirect_to home_url
		
	end
	
	def dout2030
		@aux=Dado.find(1)
		@aux.ano = '2030'
		@aux.nivel = 'Doutorado'
		salve()
	end
	
	def dout2029
		@aux=Dado.find(1)
		@aux.ano = '2029'
		@aux.nivel = 'Doutorado'
		salve()
	end
	
	def dout2017
		@aux=Dado.find(1)
		@aux.ano = '2017'
		@aux.nivel = 'Doutorado'
		salve()
	end

	def dout2016
			@aux=Dado.find(1)
		@aux.ano = '2016'
		@aux.nivel = 'Doutorado'
		salve()
	end
	
	def dout2015
		@aux=Dado.find(1)
		@aux.ano = '2015'
		@aux.nivel = 'Doutorado'
		salve()
	end
	
	def dout2014
		@aux=Dado.find(1)
		@aux.ano = '2014'
		@aux.nivel = 'Doutorado'
		salve()
	end
	
	def dout2013
		@aux=Dado.find(1)
		@aux.ano = '2013'
		@aux.nivel = 'Doutorado'
		salve()
	end
	
	def mest2017
		@aux=Dado.find(1)
		@aux.ano = '2017'
		@aux.nivel = 'Mestrado'
		salve()
	end
	
	def mest2016
		@aux=Dado.find(1)
		@aux.ano = '2016'
		@aux.nivel = 'Mestrado'
		salve()
	end
	
	def mest2015
		@aux=Dado.find(1)
		@aux.ano = '2015'
		@aux.nivel = 'Mestrado'
		salve()

	end
	
	def mest2014
		@aux=Dado.find(1)
		@aux.ano = '2014'
		@aux.nivel = 'Mestrado'
		salve()

	end
	
	def mest2013
		@aux=Dado.find(1)
		@aux.ano = '2013'
		@aux.nivel = 'Mestrado'
		salve()

	end
	
	def mest2012
		@aux=Dado.find(1)
		@aux.ano = '2012'
		@aux.nivel = 'Mestrado'
		salve()

	end


  def log_in(user)
    session[:user_id] = user.id
  end
  
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  def logged_in?
    !current_user.nil?
  end
  
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
  
end
