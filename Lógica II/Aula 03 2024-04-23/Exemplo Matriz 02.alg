algoritmo "Exemplo Matriz 02"
var
numeros: vetor[0..1, 0..1] de inteiro // 2 linhas por 2 linhas
soma: inteiro
inicio

numeros[0,0] := 30
numeros[0,1] := 31
numeros[1,0] := 40
numeros[1,1] := 41

numeros[1,1] := 42

soma := numeros[0,0] + numeros[0,1] + numeros[1,0] + numeros[1,1]

escreval("Soma: ", soma)
escreval(numeros[0,0], " ", numeros[0,1])
escreval(numeros[1,0], " ", numeros[1,1])



fimalgoritmo
