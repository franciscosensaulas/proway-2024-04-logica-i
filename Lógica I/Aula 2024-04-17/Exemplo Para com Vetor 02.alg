algoritmo "Exemplo Para com Vetor 02"
var
apelidos: vetor[0..3] de caracter // min: 1, max: 10
racas: vetor[0..3] de caracter //caramelo, labrador, zwergspitz
vacinados: vetor[0..3] de logico  // verdadeiro, falso
pesos: vetor[0..3] de real // 2..170
portes: vetor[0..3] de caracter // pequeno (at� 15), m�dio (at� 25), grande (at� 45), gigante (ao infinito e al�m)
opcao: caracter  // sim, n�o
i, quantidadeVacinados, quantidadeNaoVacinados: inteiro
inicio

para i de 0 ate 3 faca
   limpatela
   escreva("Digite o apelido: ")
   leia(apelidos[i])
   enquanto ((compr(apelidos[i]) < 1) ou (compr(apelidos[i]) > 10)) faca
      limpatela
      escreval("apelido deve conter no min: 1 e m�x: 10 caracteres")
      escreva("Digite o apelido: ")
      leia(apelidos[i])
   fimenquanto

   limpatela
   escreval("Apelido: ", apelidos[i])


   escreva("Digite a ra�a: ")
   leia(racas[i])
   enquanto ((racas[i] <> "caramelo") e (racas[i] <> "labrador") e (racas[i] <> "zwergspitz")) faca
      limpatela
      escreval("Apelido: ", apelidos[i])
      escreval("Ra�a n�o cadastrada!")
      escreval("Ra�as cadastradas: [caramelo, labrador, zwergspitz]")
      escreva("Digite a ra�a: ")
      leia(racas[i])
   fimenquanto

   limpatela
   escreval("Apelido: ", apelidos[i])
   escreval("Ra�a: ", racas[i])

   escreva("Cachorro vacinado? [sim,n�o]: ")
   leia(opcao)
   enquanto ((opcao <> "sim") e (opcao <> "n�o") e (opcao <> "s") e (opcao <> "n")) faca
      limpatela
      escreval("Apelido: ", apelidos[i])
      escreval("Ra�a: ", racas[i])
      escreval("Op��o inv�lida: ")

      escreva("Cachorro vacinado? [sim,n�o]: ")
      leia(opcao)
   fimenquanto

   se ((opcao = "sim") ou (opcao = "s")) entao
      vacinados[i] := verdadeiro
   senao
      vacinados[i] := falso
   fimse

   limpatela
   escreval("Apelido: ", apelidos[i])
   escreval("Ra�a: ", racas[i])
   escreval("Cachorro vacinado: ", opcao)
   escreva("Digite o peso: ")
   leia(pesos[i])

   enquanto ((pesos[i] < 2) ou (pesos[i] > 170)) faca
      limpatela
      escreval("Apelido: ", apelidos[i])
      escreval("Ra�a: ", racas[i])
      escreval("Cachorro vacinado: ", opcao)

      escreval("Peso inv�lido, peso m�nimo de 2Kg e m�ximo de 170Kg.")
      escreva("Digite o peso: ")
      leia(pesos[i])
   fimenquanto

   // pequeno (at� 15), m�dio (at� 25), grande (at� 45), gigante (ao infinito e al�m)
   se (pesos[i] <= 15) entao
      portes[i] := "Pequeno"
   senao
      se (pesos[i] <= 25) entao
         portes[i] := "M�dio"
      senao
         se (pesos[i] <= 45) entao
            portes[i] := "Grande"
         senao
            portes[i] := "Giga"
         fimse
      fimse
   fimse

   limpatela
   escreval("Apelido: ", apelidos[i])
   escreval("Ra�a: ", racas[i])
   escreval("Cachorro vacinado: ", opcao)
   escreval("Peso: ", pesos[i])
   escreval("Porte: ", portes[i])
   escreva("Digite enter para continuar....")
   leia(opcao)
fimpara

para i de 0 ate 3 faca
   se (vacinados[i] = verdadeiro) entao
      quantidadeVacinados := quantidadeVacinados + 1
   senao
      quantidadeNaoVacinados:= quantidadeNaoVacinados + 1
   fimse
fimpara

escreval("Quantidade vacinados: ", quantidadeVacinados)
escreval("Quantidade n�o vacinados: ", quantidadeNaoVacinados)

fimalgoritmo
