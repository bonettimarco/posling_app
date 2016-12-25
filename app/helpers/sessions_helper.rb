module SessionsHelper
  
  # funções que determinam língua
	
	def ingles()
		@idioma=Idioma.find(1)
		@idioma.aux=1
		@idioma.save
	end
	
	def espanhol()
		@idioma=Idioma.find(1)
		@idioma.aux = 2
		@idioma.save
	end
	
	def portugues()
		@idioma=Idioma.find(1)
		@idioma.aux = 3
		@idioma.save
	end
	
	
	# funções que chamam páginas estáticas em portugues
	

	def portugues_home
		troca(3)
		portugues()
		redirect_to homepor_path
	end


	def portugues_calendario
		troca(3)
		portugues()
		redirect_to calendarioematricula_path
	end
	
	def portugues_manual
		troca(3)
		portugues()
		redirect_to manualdoaluno_path
	end
	
	def portugues_quem
		troca(3)
		portugues()
		redirect_to quemsomos_path
	end
	
	def portugues_regimento
		troca(3)
		portugues()
		redirect_to regimentos_path
	end
	
	def portugues_editais
		troca(3)
		portugues()
		redirect_to editais_path
	end
	
	def portugues_curriculo
		troca(3)
		portugues()
		redirect_to estruturacurricular_path
	end
	
	def portugues_legislacao
		troca(3)
		portugues()
		redirect_to legislacao_path
	end
	
	def portugues_formulario
		troca(3)
		portugues()
		redirect_to formularios_path
	end
	
	def portugues_quadro
		troca(3)
		portugues()
		redirect_to quadrodehorarios_path
	end
	
	def portugues_egre
		troca(3)
		portugues()
		redirect_to egress_path
	end
	
# Portugues funçoes de chamada das dinâmicas

	def portugues_colaboradores()
		troca(3)
		portugues()
		redirect_to colaboradores_url
	end
	
	def portugues_contato()
		troca(3)
		portugues()
		redirect_to contatos_url
	end

	def portugues_finais()
		troca(3)
		portugues()
		redirect_to finais_url
	end
	
	def portugues_grupos()
		troca(3)
		portugues()
		redirect_to grupos_url
	end
	
	def portugues_linhas()
		troca(3)
		portugues()
		redirect_to linhas_url
	end
	
	def portugues_financas()
		troca(3)
		portugues()
		redirect_to financas_url
	end
	
	def portugues_links()
		troca(3)
		portugues()
		redirect_to links_url
	end
	
	def portugues_publicas()
		troca(3)
			portugues()
			redirect_to publicas_url
	end
	
	def portugues_eventos()
		troca(3)
			portugues()
			redirect_to eventos_url
	end

	
	def portugues_seletivos()
		troca(3)
		portugues()
		redirect_to processo_seletivos_url
	end
	
	def portugues_docentes()
		troca(3)
		portugues()
		redirect_to docentes_url
	end
	
		
	def portugues_disciplinas()
		troca(3)
		portugues()
		redirect_to disciplinas_url
	end

	def portugues_disciplinas2s()
		troca(3)
		portugues()
		redirect_to disciplinas2s_url
	end
	
	def portugues_disciplinas3s()
		troca(3)
		portugues()
		redirect_to disciplinas3s_url
	end
	

	# funções que chamam páginas estáticas em inglês
	
	def ingles_home
		troca(1)
		ingles()
		redirect_to homeing_path
	end

	def ingles_calendario
		troca(1)
		ingles()
		redirect_to calendarioematriculaing_path
	end
	
	def ingles_manual
		troca(1)
		ingles()
		redirect_to manualdoalunoing_path
	end
	
	def ingles_quem
		troca(1)
		ingles()
		redirect_to quemsomosing_path
	end
	
	def ingles_regimento
		troca(1)
		ingles()
		redirect_to regimentosing_path
	end
	
	def ingles_editais
		troca(1)
		ingles()
		redirect_to editaising_path
	end
	
	def ingles_curriculo
		troca(1)
		ingles()
		redirect_to estruturacurricularing_path
	end
	
	def ingles_legislacao
		troca(1)
		ingles()
		redirect_to legislacaoing_path
	end
	
	def ingles_formulario
		troca(1)
		ingles()
		redirect_to formulariosing_path
	end
	
	def ingles_quadro
		troca(1)
		ingles()
		redirect_to quadrodehorariosing_path
	end
	
	def ingles_egre
		troca(1)
		ingles()
		redirect_to egressing_path
	end
	
	# funções que chamam páginas dinâmicas em inglês
	
	def ingles_contato()
		troca(1)
		ingles()
		redirect_to contatos_url
	end

	def ingles_finais()
		troca(1)
		ingles()
		redirect_to finais_url
	end
	
	def ingles_grupos()
		troca(1)
		ingles()
		redirect_to grupos_url
	end
	
	def ingles_linhas()
		troca(1)
		ingles()
		redirect_to linhas_url
	end
	
	def ingles_financas()
		troca(1)
		ingles()
		redirect_to financas_url
	end
	
	def ingles_links()
		troca(1)
		ingles()
		redirect_to links_url
	end
	
	def ingles_publicas()
		troca(1)
			ingles()
			redirect_to publicas_url
	end
	
	def ingles_eventos()
		troca(1)
			ingles()
			redirect_to eventos_url
	end

	
	def ingles_seletivos()
		troca(1)
		ingles()
		redirect_to processo_seletivos_url
	end
	
	def ingles_docentes()
		troca(1)
		ingles()
		redirect_to docentes_url
	end
	
		
	def ingles_disciplinas()
		troca(1)
		ingles()
		redirect_to disciplinas_url
	end

	def ingles_disciplinas2s()
		troca(1)
		ingles()
		redirect_to disciplinas2s_url
	end
	
	def ingles_disciplinas3s()
		troca(1)
		ingles()
		redirect_to disciplinas3s_url
	end
	
	def ingles_colaboradores()
		troca(1)
		ingles()
		redirect_to colaboradores_url
	end
	
	
	# funções que chamam páginas estáticas em espanhol
	
	def espanhol_home
		troca(2)
		espanhol()
		redirect_to homeesp_path
	end

	def espanhol_calendario
		troca(2)
		espanhol()
		redirect_to calendarioematriculaesp_path
	end
	
	def espanhol_manual
		troca(2)
		espanhol()
		redirect_to manualdoalunoesp_path
	end
	
	def espanhol_quem
		troca(2)
		espanhol()
		redirect_to quemsomosesp_path
	end
	
	def espanhol_regimento
		troca(2)
		espanhol()
		redirect_to regimentosesp_path
	end
	
	def espanhol_editais
		troca(2)
		espanhol()
		redirect_to editaisesp_path
	end
	
	def espanhol_curriculo
		troca(2)
		espanhol()
		redirect_to estruturacurricularesp_path
	end
	
	def espanhol_legislacao
		troca(2)
		espanhol()
		redirect_to legislacaoesp_path
	end
	
	def espanhol_formulario
		troca(2)
		espanhol()
		redirect_to formulariosesp_path
	end
	
	def espanhol_quadro
		troca(2)
		espanhol()
		redirect_to quadrodehorariosesp_path
	end
	
	def espanhol_egre
		troca(2)
		espanhol()
		redirect_to egressesp_path
	end
	
#funções que chamam páginas dinâmicas em espanhol

	
	def espanhol_contato()
		troca(2)
		espanhol()
		redirect_to contatos_url
	end

	def espanhol_disciplinas3s()
		troca(2)
		espanhol()
		redirect_to disciplinas3s_url
	end
	
	def espanhol_disciplinas2s()
		troca(2)
		espanhol()
		redirect_to disciplinas2s_url
	end
	
	def espanhol_disciplinas()
		troca(2)
		espanhol()
		redirect_to disciplinas_url
	end
	
	
	def espanhol_docentes()
		troca(2)
		espanhol()
		redirect_to docentes_url
	end
	
	
	def espanhol_seletivos()
		troca(2)
		espanhol()
		redirect_to processo_seletivos_url
	end

	
	def espanhol_eventos()
		troca(2)
		espanhol()
		redirect_to eventos_url
	end
	
	def espanhol_publicas()
		troca(2)
		espanhol()
		redirect_to publicas_url
	end
	def espanhol_links()
		troca(2)
		espanhol()
		redirect_to links_url
	end

	def espanhol_colaboradores()
		troca(2)
		espanhol()
		redirect_to colaboradores_url
	end
	
	def espanhol_finais()
		troca(2)
		espanhol()
		redirect_to finais_url
	end
	
	def espanhol_grupos()
		troca(2)
		espanhol()
		redirect_to grupos_url
	end
	
	def espanhol_linhas()
		troca(2)
		espanhol()
		redirect_to linhas_url
	end
	
	def espanhol_financas()
		troca(2)
		espanhol()
		redirect_to financas_url
	end

#Funções ligadas ao gerenciamento de sessions

  def mensagem()
  		flash[:notice]= "Você precisa logar antes de realizar esta operação"
  end


def get_idioma()
  	@visitante = Visitante.find_by(id: session[:visitante_id])
  	return @visitante
end

	def troca(arg)
			session.delete(10)
			session.delete(20)
			session.delete(30)
			session[:visitante_id] = arg*10
	end

	def direciona()
		if get_idioma().idioma==1
			redirect_to homeing_path
		elsif get_idioma.idioma==2
			redirect_to homeesp_path
		else
			redirect_to homepor_path
		end
	end
	
	
  def log_in(user)
    session[:user_id] = user.id
  end
  
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  def logged_in?
  	@user = User.find_by(id: session[:user_id])
    return !current_user.nil? && @user.admin==true 
  end
  
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
  
  # funções que setam e chamam os alunos egressos por ano e modalidade
  

	def salve()
		@aux.save
		redirect_to egressos_url
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




