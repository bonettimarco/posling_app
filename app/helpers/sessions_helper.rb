module SessionsHelper
  
  	def salve()
		if @aux.save
			redirect_to egressos_url
		end
	end
	
	def ingles()
		@idioma=Dado.find(1)
		@idioma.ano = '1'
		@idioma.save
	end
	
	def espanhol()
		@idioma=Dado.find(1)
		@idioma.ano = '2'
		@idioma.save
	end
	
	def portugues()
		@idioma=Dado.find(1)
		@idioma.ano = '3'
		@idioma.save
	end
	
	
	def ingles_colaboradores()
		ingles()
		redirect_to colaboradores_url
	end
	
	def ingles_finais()
		ingles()
		redirect_to finais_url
	end
	
	def ingles_grupos()
		ingles()
		redirect_to grupos_url
	end
	
	def ingles_linhas()
		ingles()
		redirect_to linhas_url
	end
	
	def ingles_financas()
		ingles()
		redirect_to financas_url
	end
		def ingles_links()
		ingles()
		redirect_to links_url
	end
	
	def ingles_publicas()
			ingles()
			redirect_to publicas_url
	end
	
	def ingles_eventos()
			ingles()
			redirect_to eventos_url
	end

	
	def ingles_seletivos()
		ingles()
		redirect_to processo_seletivos_url
	end
	
	def ingles_docentes()
		ingles()
		redirect_to docentes_url
	end
	
		
	def ingles_disciplinas()
		ingles()
		redirect_to disciplinas_url
	end

	def ingles_disciplinas2s()
		ingles()
		redirect_to disciplinas2s_url
	end
		def ingles_disciplinas3s()
		ingles()
		redirect_to disciplinas3s_url
	end
	
	def espanhol_disciplinas3s()
		espanhol()
		redirect_to disciplinas3s_url
	end
	def espanhol_disciplinas2s()
		espanhol()
		redirect_to disciplinas2s_url
	end
	
	def espanhol_disciplinas()
		espanhol()
		redirect_to disciplinas_url
	end
	
	
	def espanhol_docentes()
		espanhol()
		redirect_to docentes_url
	end
	
	
	def espanhol_seletivos()
		espanhol()
		redirect_to processo_seletivos_url
	end

	
	def espanhol_eventos()
		espanhol()
		redirect_to eventos_url
	end
	
	def espanhol_publicas()
		espanhol()
		redirect_to publicas_url
	end
	def espanhol_links()
		espanhol()
		redirect_to links_url
	end

	def espanhol_colaboradores()
		espanhol()
		redirect_to colaboradores_url
	end
	
	def espanhol_finais()
		espanhol()
		redirect_to finais_url
	end
	
	def espanhol_grupos()
		espanhol()
		redirect_to grupos_url
	end
	
	def espanhol_linhas()
		espanhol()
		redirect_to linhas_url
	end
	
	def espanhol_financas()
		espanhol()
		redirect_to financas_url
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
