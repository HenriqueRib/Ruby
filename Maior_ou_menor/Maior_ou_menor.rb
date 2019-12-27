puts "Bem vindo ao jogo"
puts "Qual o seu nome?"
nome = gets
puts "\n\n\n"
puts "Começaremos o jogo para voce, " + nome
puts "Escolhendo um numero secreto entre 0 e 200"
numero_secreto = 145
puts "Escolhido... Que tal adivinhar hoje nosso número secreto?"
puts ("Quantas vezes " + nome + "quer tentar?")
limite = gets
limite_de_tentativa = limite.to_i
for tentativa in 1..limite_de_tentativa
	puts "\n\n"
	puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativa.to_s
	puts "Entre com o numero"
	chute = gets
	puts "Será que acertou? Voçê chutou " + chute

	# Verificando se acertou
	acertou = chute.to_i == numero_secreto
	if acertou
		puts "Acertou!"
		break
	else
		maior = numero_secreto > chute.to_i
		if maior
			puts "O numero secreto é maior"
		else
			puts "O numero secreto é menor"
		end
	end
end