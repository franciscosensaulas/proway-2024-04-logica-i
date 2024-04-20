algoritmo "Exemplo Enquanto 03"
var
indice, numero, quantidadeNumerosPares, soma: inteiro
media: real
inicio
enquanto indice < 5 faca
   escreva("Digite o n�mero: ")
   leia(numero)
   
   se numero mod 2 = 0 entao
      quantidadeNumerosPares := quantidadeNumerosPares + 1
   fimse

   soma := soma + numero

   indice := indice + 1 // Incrementar
fimenquanto
media := soma / 5

escreval("Soma: ", soma)
escreval("M�dia: ", media)
escreval("A quantidade de n�meros pares �: ", quantidadeNumerosPares)
fimalgoritmo
