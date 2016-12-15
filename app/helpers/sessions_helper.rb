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

	def dout2028
		@aux=Dado.find(1)
		@aux.ano = '2028'
		@aux.nivel = 'Doutorado'
		salve()
	end
	
	def dout2027
		@aux=Dado.find(1)
		@aux.ano = '2027'
		@aux.nivel = 'Doutorado'
		salve()
	end
	
	def dout2026
		@aux=Dado.find(1)
		@aux.ano = '2026'
		@aux.nivel = 'Doutorado'
		salve()
	end
	
	def dout2025
		@aux=Dado.find(1)
		@aux.ano = '2025'
		@aux.nivel = 'Doutorado'
		salve()
	end

	def dout2024
		@aux=Dado.find(1)
		@aux.ano = '2024'
		@aux.nivel = 'Doutorado'
		salve()
	end
	
	def dout2023
		@aux=Dado.find(1)
		@aux.ano = '2023'
		@aux.nivel = 'Doutorado'
		salve()
	end

	def dout2022
		@aux=Dado.find(1)
		@aux.ano = '2022'
		@aux.nivel = 'Doutorado'
		salve()
	end
	
	def dout2021
		@aux=Dado.find(1)
		@aux.ano = '2021'
		@aux.nivel = 'Doutorado'
		salve()
	end

	def dout2020
		@aux=Dado.find(1)
		@aux.ano = '2020'
		@aux.nivel = 'Doutorado'
		salve()
	end
	
	def dout2019
		@aux=Dado.find(1)
		@aux.ano = '2029'
		@aux.nivel = 'Doutorado'
		salve()
	end
	
		def dout2018
		@aux=Dado.find(1)
		@aux.ano = '2018'
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

	def dout2012
		@aux=Dado.find(1)
		@aux.ano = '2012'
		@aux.nivel = 'Doutorado'
		salve()
	end
	
	def dout2011
		@aux=Dado.find(1)
		@aux.ano = '2011'
		@aux.nivel = 'Doutorado'
		salve()
	end
	
		def dout2010
		@aux=Dado.find(1)
		@aux.ano = '2010'
		@aux.nivel = 'Doutorado'
		salve()
	end
	
	def dout2009
		@aux=Dado.find(1)
		@aux.ano = '2009'
		@aux.nivel = 'Doutorado'
		salve()
	end

	
	def mest2030
		@aux=Dado.find(1)
		@aux.ano = '2030'
		@aux.nivel = 'Mestrado'
		salve()
	end
	
	def mest2029
		@aux=Dado.find(1)
		@aux.ano = '2029'
		@aux.nivel = 'Mestrado'
		salve()
	end
	
	def mest2028
		@aux=Dado.find(1)
		@aux.ano = '2028'
		@aux.nivel = 'Mestrado'
		salve()

	end
	
	def mest2027
		@aux=Dado.find(1)
		@aux.ano = '2014'
		@aux.nivel = 'Mestrado'
		salve()

	end
	
	def mest2027
		@aux=Dado.find(1)
		@aux.ano = '2013'
		@aux.nivel = 'Mestrado'
		salve()

	end
	
	def mest2026
		@aux=Dado.find(1)
		@aux.ano = '2026'
		@aux.nivel = 'Mestrado'
		salve()

	end

	
	def mest2025
		@aux=Dado.find(1)
		@aux.ano = '2025'
		@aux.nivel = 'Mestrado'
		salve()
	end
	
	def mest2024
		@aux=Dado.find(1)
		@aux.ano = '2024'
		@aux.nivel = 'Mestrado'
		salve()
	end
	
	def mest2023
		@aux=Dado.find(1)
		@aux.ano = '2023'
		@aux.nivel = 'Mestrado'
		salve()

	end
	
	def mest2022
		@aux=Dado.find(1)
		@aux.ano = '2022'
		@aux.nivel = 'Mestrado'
		salve()

	end
	
	def mest2021
		@aux=Dado.find(1)
		@aux.ano = '2021'
		@aux.nivel = 'Mestrado'
		salve()

	end
	
	def mest2020
		@aux=Dado.find(1)
		@aux.ano = '2020'
		@aux.nivel = 'Mestrado'
		salve()

	end
	def mest2019
		@aux=Dado.find(1)
		@aux.ano = '2019'
		@aux.nivel = 'Mestrado'
		salve()

	end
	
	def mest2018
		@aux=Dado.find(1)
		@aux.ano = '2018'
		@aux.nivel = 'Mestrado'
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

	def mest2011
		@aux=Dado.find(1)
		@aux.ano = '2011'
		@aux.nivel = 'Mestrado'
		salve()

	end
	
	def mest2010
		@aux=Dado.find(1)
		@aux.ano = '2010'
		@aux.nivel = 'Mestrado'
		salve()

	end
	def mest2009
		@aux=Dado.find(1)
		@aux.ano = '2009'
		@aux.nivel = 'Mestrado'
		salve()

	end
	
	def mest2008
		@aux=Dado.find(1)
		@aux.ano = '2008'
		@aux.nivel = 'Mestrado'
		salve()

	end


end
