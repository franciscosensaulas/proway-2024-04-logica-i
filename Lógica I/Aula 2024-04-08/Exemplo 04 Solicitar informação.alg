algoritmo "Exemplo 04 Solicitar informa��o"
var
nome: caracter
quantidade: inteiro
precoUnitario, valorTotal, valorPago, valorTroco: real
inicio
escreva("Digite nome do produto: ")
leia(nome)
escreva("Digite a quantidade desejada: ")
leia(quantidade)
escreva("Digite o pre�o: ")
leia(precoUnitario)

valorTotal := quantidade * precoUnitario
escreval("Valor total: ", valorTotal)

escreva("Digite o valor pago em esp�cie: ")
leia(valorPago)

valorTroco := valorPago - valorTotal
escreval("Troco: ", valorTroco)
// Ex1: Solicitar nome, nota1, nota2, nota3, nota4
//      Apresentar a m�dia
// Ex2: Solicitar nome, idade, altura e peso
//      Apresentar o IMC do paciente
// Ex3: Solicitar dois n�meros e apresentar a soma, subtra��o, multiplica��o e divis�o
fimalgoritmo
