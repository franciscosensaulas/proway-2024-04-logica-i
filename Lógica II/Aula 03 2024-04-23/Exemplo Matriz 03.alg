algoritmo "Exemplo Matriz 03"
var
numeros: vetor[0..1, 0..1] de inteiro // 2 linhas por 2 linhas
soma, i, j: inteiro
inicio
para i de 0 ate 1 faca // indice da linha
   para j de 0 ate 1 faca // indice da coluna
      escreva("Digite o número: ")
      leia(numeros[i, j])
   fimpara
fimpara

para i de 0 ate 1 faca
   para j de 0 ate 1 faca
      soma := soma + numeros[i, j]
   fimpara
fimpara

escreval("Soma: ", soma)
para i de 0 ate 1 faca
   para j de 0 ate 1 faca
      escreva(numeros[i,j])
   fimpara
   escreval
fimpara

fimalgoritmo
