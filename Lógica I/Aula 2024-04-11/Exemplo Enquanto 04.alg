algoritmo "Exemplo Enquanto 04"
var
numero1, numero2, menuEscolhido: inteiro
texto: caracter
inicio
escreva("Digite o n�mero 01: ")
leia(numero1)
escreva("Digite o n�mero 02: ")
leia(numero2)
limpatela

enquanto menuEscolhido <> 7 faca
   escreval("|-----------------------------------------|")
   escreval("|           MENU                          |")
   escreval("|-----------------------------------------|")
   escreval("| 1              Somar                    |")
   escreval("| 2              Subtrair                 |")
   escreval("| 3              Multiplicar              |")
   escreval("| 4              Dividir                  |")
   escreval("| 5              Alterar N�mero 01        |")
   escreval("| 6              Alterar N�mero 02        |")
   escreval("| 7              Sair                     |")
   escreval("|-----------------------------------------|")
   escreval("Valor atual n�mero 1: ", numero1)
   escreval("Valor atual n�mero 2: ", numero2)
   escreva("Digite o menu desejado: ")
   leia(menuEscolhido)


   se (menuEscolhido = 1) entao
      escreval("Soma: ", numero1 + numero2)
   senao
      se(menuEscolhido = 2) entao
         escreval("Subtra��o: ", numero1 - numero2)
      senao
         se (menuEscolhido = 3) entao
            escreval("Multiplica��o: ", numero1 * numero2)
         senao
            se (menuEscolhido = 4) entao
               escreval("Divis�o: ", numero1 / numero2)
            senao
               se (menuEscolhido = 5) entao
                  escreva("Digite o n�mero 01: ")
                  leia(numero1)
               senao
                  se (menuEscolhido = 6) entao
                     escreva("Digite o n�mero 02: ")
                     leia(numero2)
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse
   se (menuEscolhido <> 7) entao
      escreva("Digite enter para continuar: ")
      leia(texto)
   fimse
   //timer(1000)  delay: espera de 1 segundo
   //timer(0)     desativar o delay
   limpatela

fimenquanto

fimalgoritmo
