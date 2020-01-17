class Application
  # To change this template use File | Settings | File Templates.
  def initialize
  	mainMenu
  end

  def navigateTo(what)
  	what.new.display
  	mainMenu
  end

  def mainMenu
  	puts "O que voçê quer fazer?
  	1: Jogar
  	2: Configurações
  	3: Sair"
  	case gets.strip
  	when "1"
  		Jogar
  	when "2"
  		Configurações
  	when "3"
  		system "exit"
  		defaut:
  		puts"Opcao invalida"
  		break;	

  	end
  end
  Application.new
end