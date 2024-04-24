algoritmo "Exemplo Matriz 01"
var
nomes: vetor[0..1, 0..2] de caracter // matriz de 2 linhas x 3 colunas

inicio
nomes[0,0] := "João"
nomes[0,1] := "Maria"
nomes[0,2] := "Bernardo"
nomes[1,0] := "Lucia"
nomes[1,1] := "Edshow"
nomes[1,2] := "Terezinha"

escreval("Nomes: ")
escreval(nomes[0,0], ", ", nomes[0,1], ", ", nomes[0,2])
escreval(nomes[1,0], ", ", nomes[1,1], ", ", nomes[1,2])
fimalgoritmo
