algoritmo "semnome"
var
contas: vetor[0..4] de caracter
valores: vetor[0..4] de real
indiceContaCadastrada, i: inteiro //
menu: inteiro
variavelLixo, contaParaAlterar: caracter
soma: real
inicio


enquanto (menu <> 7) faca
   limpatela
   escreval("|------------------------------------------------------|")
   escreval("|                     SISTEMA                          |")
   escreval("|------------------------------------------------------|")
   escreval("| 1        Cadastrar                                   |")
   escreval("| 2        Alterar                                     |")
   escreval("| 3        Listar todos                                |")
   escreval("| 4        Gerar relat�rio                             |")
   escreval("| 7        Sair                                        |")
   escreval("|------------------------------------------------------|")
   escreva("Digite o menu desejado: ")
   leia(menu)
   limpatela
   se (menu = 1) entao
      escreva("Digite o nome da conta: ")
      leia(contas[indiceContaCadastrada])
      escreva("Digite o valor: ")
      leia(valores[indiceContaCadastrada])
      indiceContaCadastrada := indiceContaCadastrada + 1
   senao
      se (menu = 2) entao
         escreval("Lista de contas: ")
         para i de 0 ate indiceContaCadastrada - 1 faca
            escreval("Conta: ", contas[i])
         fimpara

         escreva("Digite o nome da conta para alterar: ")
         leia(contaParaAlterar)


         para i de 0 ate indiceContaCadastrada - 1 faca
            se contas[i] = contaParaAlterar entao
               escreva("Digite o novo nome da conta: ")
               leia(contas[i])
               escreva("Digite o novo valor da conta: ")
               leia(valores[i])
            fimse
         fimpara

      senao
         se (menu = 3) entao
            escreval("Lista de contas: ")
            para i de 0 ate indiceContaCadastrada - 1 faca
               escreval("Conta: ", contas[i], " de R$ ", valores[i])
            fimpara
         senao
            se (menu = 4) entao
            soma := 0
               para i de 0 ate indiceContaCadastrada - 1 faca
                  soma := soma + valores[i]
                  escreval("Conta: ", contas[i], " de R$ ", valores[i])
               fimpara
               escreval("Total das contas: R$ ", soma)
            senao
            fimse
         fimse
      fimse
   fimse

   escreva("Digite enter para continuar...")
   leia(variavelLixo)
fimenquanto
fimalgoritmo

