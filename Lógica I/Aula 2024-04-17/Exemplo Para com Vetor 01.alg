algoritmo "Exemplo Para com Vetor 01"
var
numeros: vetor[0..4] de inteiro
indice, soma, maiorNumero: inteiro
inicio

para indice de 0 ate 4 faca
   escreva("Digite um número: ")
   leia(numeros[indice])
fimpara

para indice de 0 ate 4 faca
   se (numeros[indice] > maiorNumero) entao
      maiorNumero := numeros[indice]
   fimse
fimpara

para indice de 0 ate 4 faca
   soma := soma + numeros[indice]
fimpara

escreval("Soma: ", soma)
escreval("Maior número: ", maiorNumero)

fimalgoritmo
