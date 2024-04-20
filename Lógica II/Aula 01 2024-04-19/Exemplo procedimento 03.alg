algoritmo "Exemplo procedimento 03"
var
nomes: vetor[0..2] de caracter
idades: vetor[0..2] de inteiro

procedimento solicitarInformacoes()
var
i: inteiro
inicio
para i de 0 ate 2 faca
   solicitarNome(i)
   solicitarIdade(i)
fimpara
fimprocedimento

procedimento solicitarNome(i: inteiro)
inicio
escreva("Digite o nome: ")
leia(nomes[i])
enquanto ((compr(nomes[i]) < 3) ou (compr(nomes[i]) > 20)) faca
   escreval("Nome deve conter no mínimo 3 caracteres e no máximo 20")
   escreva("Digite o nome: ")
   leia(nomes[i])
fimenquanto
fimprocedimento

procedimento solicitarIdade(i: inteiro)
inicio
escreva("Digite a idade: ")
leia(idades[i])
enquanto ((idades[i] < 0) ou (idades[i] > 130)) faca
   escreval("Idade deve ser entre 0 e 130 anos")
   escreva("Digite a idade: ")
   leia(idades[i])
fimenquanto
fimprocedimento

inicio
solicitarInformacoes()
fimalgoritmo
