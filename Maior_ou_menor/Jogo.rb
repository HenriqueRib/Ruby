def da_boas_vindas
	puts "Bem vindo ao jogo"
	puts "Qual o seu nome?"
	nome = gets.strip
	puts "\nComeçaremos o jogo para voce " + nome + "\n"
	nome
end

def sorteia_numero_secreto
	puts "Escolha um numero limite"
	aleatorio = gets.strip
	puts "Escolhendo um numero secreto entre 0 até " + aleatorio.to_s
	numero_secreto = rand(0..aleatorio.to_i)
	#puts numero_secreto
	puts "..."
	puts "\nQue tal adivinhar hoje nosso número secreto?"
	return numero_secreto
end

def pede_numero(chute, tentativa, limite_de_tentativa)
	puts "\n"
	puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativa.to_s
	if tentativa != 1
		puts "Anteriormente voce chutou: " + chute.to_s
	end
	puts "Entre com o numero"
	chute = gets.strip 
	puts "Será que acertou? Voçê chutou " + chute
	chute.to_i
end

def interativo(nome)
	puts ("Quantas vezes " + nome + " quer tentar?")
	limite = gets.strip
	limite_de_tentativa = limite.to_i
	limite_de_tentativa
end

def verifica_se_acertou(numero_secreto, chute)
	acertou = chute == numero_secreto

	if acertou
		puts "Acertou!"
		return true
	else
		maior = numero_secreto > chute
		if maior
			puts "\nO numero secreto é MAIOR"
			return false	
		else
			puts "\nO numero secreto é MENOR"
			return false		
		end
	end
end


nome = da_boas_vindas
numero_secreto = sorteia_numero_secreto
limite_de_tentativa = interativo(nome)

for tentativa in 1..limite_de_tentativa
	chute = pede_numero(chute, tentativa, limite_de_tentativa)
	
	break if verifica_se_acertou numero_secreto, chute
end

if numero_secreto != chute
	puts "O numero secreto era " + numero_secreto.to_s
end