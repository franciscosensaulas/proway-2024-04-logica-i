algoritmo "Exemplo Para 06"
var
indice, quantidadePessoas, quantidadeMaiorNome: inteiro
nome, maiorNome, textoIndice: caracter
inicio
// Solicite o nome de 5 pessoas, validando que o nome cont�m no m�nimo 3 caracteres e no m�ximo 50
escreva("Digite a quantidade de pessoas: ")
leia(quantidadePessoas)
limpatela
para indice de 0 ate quantidadePessoas - 1 faca
   textoIndice := "[" + numpcarac(indice + 1) + "/" + numpcarac(quantidadePessoas) + "]"
   escreva("Digite o nome ", textoIndice, ": ")
   leia(nome)
   // compr: obter a quantidade de caracteres da vari�vel do tipo caracter
   enquanto (compr(nome) < 3) ou (compr(nome) > 50) faca
      escreval("Nome deve conter no m�nimo 3 caracteres e no m�ximo 50 caracteres")
      escreva("Digite o nome ", textoIndice, ": ")
      leia(nome)
   fimenquanto
   se (compr(nome) > quantidadeMaiorNome) entao
      quantidadeMaiorNome := compr(nome)
      maiorNome := nome
   fimse
   limpatela
fimpara
escreval("Maior nome: ", maiorNome, " cont�m ", quantidadeMaiorNome, " caracteres")

fimalgoritmo
