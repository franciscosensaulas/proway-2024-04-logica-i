algoritmo "Exemplo procedimento 02"
var
nome, sobrenome: caracter
idade, anoNascimento: inteiro

procedimento solicitarInformacoes()
inicio
escreva("Digite o nome: ")
leia(nome)
escreva("Digite o sobrenome: ")
leia(sobrenome)
escreva("Digite a idade: ")
leia(idade)
fimprocedimento

procedimento calcularAnoNascimento()
var
anoAtual: inteiro
inicio
anoAtual := 2024
anoNascimento := anoAtual - idade
escreval("Ano nascimento: ", anoNascimento)
fimprocedimento

procedimento apresentarNomeCompleto()
var
nomeCompleto: caracter
inicio
nomeCompleto := nome + " " + sobrenome
escreval("O nome completo é: ", nomeCompleto)
fimprocedimento

inicio
solicitarInformacoes()
apresentarNomeCompleto()
calcularAnoNascimento()
fimalgoritmo
