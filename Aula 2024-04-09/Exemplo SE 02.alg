algoritmo "Exemplo SE 02"
var
numero: inteiro
inicio
escreva("Digite um número: ")
leia(numero)
// Tabela de operadores relacionais
// =      Igual
// >      Maior
// >=     Maior ou igual
// <      Menor
// <=     Menor ou igual
// <>     Diferente
se (numero > 0) entao
    escreval("Número positivo")
senao
    se (numero < 0) entao
       escreval("Número negativo")
    senao
       escreval("Número zero")
    fimse
fimse
fimalgoritmo
