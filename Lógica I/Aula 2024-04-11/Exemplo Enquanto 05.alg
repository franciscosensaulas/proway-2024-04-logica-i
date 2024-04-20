algoritmo "Exemplo Enquanto 05"
var
desejaContinuar: caracter
numero, maiorNumero, menorNumero: inteiro
inicio
menorNumero := 9999999
enquanto (desejaContinuar <> "não") e (desejaContinuar <> "n") faca
   escreva("Digite o número: ")
   leia(numero)
   se (numero > maiorNumero) entao
      maiorNumero := numero
   fimse
   se (numero < menorNumero) entao
      menorNumero := numero
   fimse
   escreva("Deseja continuar? [sim/não]: ")
   leia(desejaContinuar)
   limpatela
fimenquanto
escreval("O maior número é: ", maiorNumero)
escreval("O menor número é: ", menorNumero)
// Ex. 1: Solicitar o nome de 5 produtos
// Ex. 2: Solicitar para 5 pessoas o nome, idade, peso, altura e
//        apresentar o imc de cada um deles
// Ex. 3: Solicitar para 5 alunos o nome e 4 notas, apresentando a sua média
//        No final apresentar:
//        Menor nota, Maior nota, maior média das notas, menor média das notas
//        Quantidade de alunos que estão aprovados e reprovados
//


fimalgoritmo
