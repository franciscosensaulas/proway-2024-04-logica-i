algoritmo "Exemplo SE 06 Ou"
var
nome: caracter
categoria: caracter
preco: real
desconto: real
total: real
inicio
escreva("Digite o nome do produto: ")
leia(nome)
escreva("Digite a categoria do produto: ")
leia(categoria)
escreva("Digite o preço do produto: ")
leia(preco)
se ((categoria = "Acessórios") ou (categoria = "monitores") ou (categoria = "monitor")) entao
   // 1750.90                  100
   //                          90
   //desconto := (preco * 90) / 100    1.575,81
   total := preco * 0.10 //            175,09
   desconto := preco * 0.90 //         1.575,81
fimse
escreval("Desconto: ", desconto)
escreval("Total: ", total)
// Ex 01: Solicitar um número e presentar de acordo com os seguintes tópicos:
//   Se o número é par ou positivo
//   Se o número é ímpar ou negativo

// Ex 02: Solicitar 3 números e informar o tipo de triangulo
//   Triangulo equilátero
//   Triangulo isósceles
//   Triangulo escaleno

fimalgoritmo
