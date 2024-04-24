algoritmo "Exemplo Matriz 04"
var
jogos: vetor[0..2, 0..3] de caracter
total: real
inicio

jogos[0,0] := "COD"
jogos[0,1] := "299.99"
jogos[0,2] := "FPS"
jogos[0,3] := "Mutiplataforma"

jogos[1,0] := "Pokemon Arceus"
jogos[1,1] := "350.00"
jogos[1,2] := "RPG"
jogos[1,3] := "Nintendo Switch"

jogos[2,0] := "LOL"
jogos[2,1] := "0"
jogos[2,2] := "MMO RPG"
jogos[2,3] := "PC"

total := caracpnum(jogos[0, 1]) + caracpnum(jogos[1, 1]) + caracpnum(jogos[2,1])
escreval("Total: ", total)

fimalgoritmo
