algoritmo "Exemplo Enquanto 05"
var
desejaContinuar: caracter
numero, maiorNumero, menorNumero: inteiro
inicio
menorNumero := 9999999
enquanto (desejaContinuar <> "n�o") e (desejaContinuar <> "n") faca
   escreva("Digite o n�mero: ")
   leia(numero)
   se (numero > maiorNumero) entao
      maiorNumero := numero
   fimse
   se (numero < menorNumero) entao
      menorNumero := numero
   fimse
   escreva("Deseja continuar? [sim/n�o]: ")
   leia(desejaContinuar)
   limpatela
fimenquanto
escreval("O maior n�mero �: ", maiorNumero)
escreval("O menor n�mero �: ", menorNumero)
// Ex. 1: Solicitar o nome de 5 produtos
// Ex. 2: Solicitar para 5 pessoas o nome, idade, peso, altura e
//        apresentar o imc de cada um deles
// Ex. 3: Solicitar para 5 alunos o nome e 4 notas, apresentando a sua m�dia
//        No final apresentar:
//        Menor nota, Maior nota, maior m�dia das notas, menor m�dia das notas
//        Quantidade de alunos que est�o aprovados e reprovados
//


fimalgoritmo
