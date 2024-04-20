algoritmo "Exemplo Para 02"
var
nome,status: caracter
nota1, nota2, nota3, media: real
indice: inteiro
inicio

para indice de 0 ate 2 faca
  escreva("Digite o nome do aluno: ")
  leia(nome)
  escreva("Digite a nota 1: ")
  leia(nota1)
  escreva("Digite a nota 2: ")
  leia(nota2)
  escreva("Digite a nota 3: ")
  leia(nota3)
  media := (nota1 + nota2 + nota3) / 3
  se (media > 7) entao
     status := "Aprovado"
  senao
     status := "Reprovado"
  fimse
  escreval("Média: ", media)
  escreval("Status: ", status)
  timer(1000)
  timer(0)
  limpatela
fimpara


fimalgoritmo
