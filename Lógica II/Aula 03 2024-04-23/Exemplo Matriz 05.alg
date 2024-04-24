algoritmo "Exemplo Matriz 05"
var
jogos: vetor[0..2, 0..3] de caracter
total, menorPreco: real
i: inteiro
nomeMenorPreco: caracter
inicio

para i de 0 ate 2 faca
   escreva("Digite o nome do jogo: ")
   leia(jogos[i,0])
   escreva("Digite o preço: ")
   leia(jogos[i,1])
   escreva("Digite a categoria: ")
   leia(jogos[i,2])
   escreva("Digite o nome da plataforma: ")
   leia(jogos[i,3])
   escreval
fimpara

menorPreco := 99999
para i de 0 ate 2 faca
   se caracpnum(jogos[i,1]) < menorPreco entao
      menorPreco := caracpnum(jogos[i,1])
      nomeMenorPreco := jogos[i,0]
   fimse
fimpara

para i de 0 ate 2 faca
   total := total + caracpnum(jogos[i, 1])
fimpara
escreval("Jogo menor preço: ", nomeMenorPreco, " R$ ", menorPreco)
escreval("Total: ", total)

fimalgoritmo
