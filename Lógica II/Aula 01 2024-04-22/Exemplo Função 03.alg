algoritmo "Exemplo Fun��o 03"
var
lado1, lado2, lado3: inteiro

procedimento solicitarLados()
inicio
escreva("Digite o valor do lado 1: ")
leia(lado1)
escreva("Digite o valor do lado 2: ")
leia(lado2)
escreva("Digite o valor do lado 3: ")
leia(lado3)
fimprocedimento

funcao ehTrianguloEquilatero(): logico
inicio
se (lado1 = lado2) e (lado2 = lado3) entao
   retorne verdadeiro
senao
   retorne falso
fimse
fimfuncao

funcao ehTrianguloIsosceles(): logico
inicio
se ((lado1 = lado2) e (lado2 <> lado3)) ou ((lado1 = lado3) e (lado1 <> lado2)) ou ((lado2 = lado3) e (lado1 <> lado2)) entao
   retorne verdadeiro
senao
   retorne falso
fimse
fimfuncao

funcao obterTipoTriangulo(): caracter
var
tipo: caracter
inicio
se ehTrianguloEquilatero() = verdadeiro entao
   tipo := "Triangulo equil�tero"
senao
   se ehTrianguloIsosceles() = verdadeiro entao
      tipo := "Triangulo isosceles"
   senao
      tipo := "Triangulo escaleno"
   fimse
fimse
retorne tipo
fimfuncao

inicio
solicitarLados()
escreval("O tipo do triangulo �: ", obterTipoTriangulo())
fimalgoritmo
// Ex. 1:
// Criar um procedimento para solicitar nome, nota 1, nota 2 e nota 3, % de frequencia
// Criar função para calcular a média
// Criar função para obter o status (aprovado, reprovado por falta, reprovado por média)

// Ex. 2:
// Solicitar 
