algoritmo "Exemplo procedimento 04"
var
produtos: vetor[0..2] de caracter
quantidades: vetor[0..2] de inteiro
precosUnitarios: vetor[0..2] de real

procedimento solicitarInformacoes()
var
i: inteiro
inicio
para i de 0 ate 2 faca
   escreva("Digite o nome do produto: ")
   leia(produtos[i])
   escreva("Digite a quantidade: ")
   leia(quantidades[i])
   escreva("Digite o pre�o unit�rio: ")
   leia(precosUnitarios[i])
fimpara
fimprocedimento

procedimento apresentarCupom()
var
i: inteiro
totalParcial, total: real
inicio
limpatela
para i de 0 ate 2 faca
   totalParcial := quantidades[i] * precosUnitarios[i]
   total := total + totalParcial
   escreval(produtos[i], " QTD: ", quantidades[i], " PRE�O UNIT�RIO: ", precosUnitarios[i], " => ", totalParcial)
fimpara
escreval
escreval("TOTAL: ", total)
fimprocedimento


procedimento apresentarProdutoMenorPreco()
var
nomeMenorPreco: caracter
menorPreco: real
i: inteiro
inicio
menorPreco := 9999999
para i de 0 ate 2 faca
   se (precosUnitarios[i] < menorPreco) entao
      menorPreco := precosUnitarios[i]
      nomeMenorPreco := produtos[i]
   fimse
fimpara
escreval("O produto ", nomeMenorPreco, " cont�m o menor pre�o de ", menorPreco)
fimprocedimento

inicio
solicitarInformacoes()
apresentarCupom()
apresentarProdutoMenorPreco()
fimalgoritmo
