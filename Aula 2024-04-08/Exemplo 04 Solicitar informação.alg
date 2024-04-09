algoritmo "Exemplo 04 Solicitar informação"
var
nome: caracter
quantidade: inteiro
precoUnitario, valorTotal, valorPago, valorTroco: real
inicio
escreva("Digite nome do produto: ")
leia(nome)
escreva("Digite a quantidade desejada: ")
leia(quantidade)
escreva("Digite o preço: ")
leia(precoUnitario)

valorTotal := quantidade * precoUnitario
escreval("Valor total: ", valorTotal)

escreva("Digite o valor pago em espécie: ")
leia(valorPago)

valorTroco := valorPago - valorTotal
escreval("Troco: ", valorTroco)
// Ex1: Solicitar nome, nota1, nota2, nota3, nota4
//      Apresentar a média
// Ex2: Solicitar nome, idade, altura e peso
//      Apresentar o IMC do paciente
// Ex3: Solicitar dois números e apresentar a soma, subtração, multiplicação e divisão
fimalgoritmo
