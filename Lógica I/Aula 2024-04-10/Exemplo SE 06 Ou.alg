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
escreva("Digite o pre�o do produto: ")
leia(preco)
se ((categoria = "Acess�rios") ou (categoria = "monitores") ou (categoria = "monitor")) entao
   // 1750.90                  100
   //                          90
   //desconto := (preco * 90) / 100    1.575,81
   total := preco * 0.10 //            175,09
   desconto := preco * 0.90 //         1.575,81
fimse
escreval("Desconto: ", desconto)
escreval("Total: ", total)
// Ex 01: Solicitar um n�mero e presentar de acordo com os seguintes t�picos:
//   Se o n�mero � par ou positivo
//   Se o n�mero � �mpar ou negativo

// Ex 02: Solicitar 3 n�meros e informar o tipo de triangulo
//   Triangulo equil�tero
//   Triangulo is�sceles
//   Triangulo escaleno

fimalgoritmo
