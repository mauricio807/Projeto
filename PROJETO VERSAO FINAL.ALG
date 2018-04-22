algoritmo "Projeto"
// Função :
// Autor : Maurício Marinho Mooura
// Data : 21/03/2018
// PROJETO de LPOO
var
   opcao, num1, num2, num3, num4, num5, num6, num7, num8, quantidade, idade:inteiro
   contador, x, primo, soma, cont, y:inteiro
   operacao, mediaf, mediam, media, masculino:real
   feminino, quantidadem, quantidadef, geral, mediag:real
   sexo:caracter
   z :caracter
   num, decimal :inteiro
   base:caracter
   b1, b2, b3, b4, b5, b6, b7, b8:real
   binario:real
   controle:caracter
   casos:inteiro

inicio
   repita // repetição para o usuário sempre voltar para o Menu

      escreval("Escolha uma opção do menu")
      escreval("1.Soma")
      escreval("2.Subtração")
      escreval("3.Divisão")
      escreval("4.Faixa etária")
      escreval("5.Números primos")
      escreval("6.Mudança de base")
      escreval("7.sair")
      leia(opcao)

      se (opcao=1)entao  //soma de dois números
         escreval("Informe dois números:")
         escreval("Informe o 1º número:")
         leia(num1)
         escreval("Informe o 2º número:")
         leia(num2)
         operacao<- num1 + num2
         escreval("A soma dos números é:",operacao)
      fimse

      se(opcao=2)entao     //subtração de dois números
         escreval("Informe dois números:")
         escreval("Informe o 1º número:")
         leia(num1)
         escreval("Informe o 2º número:")
         leia(num2)
         operacao<- num1 - num2
         escreval("A subtração dos números é:",operacao)
      fimse

      se(opcao=3)entao //divisão de dois números
         escreval("Informe dois números:")
         escreval("Informe o 1º número:")
         leia(num1)
         escreval("Informe o 2º número:")
         leia(num2)
         repita
            se(num2=0) entao   // quando o Número (zero) e inserido como divisor trava o programa
                               //entao criei está condição
               escreval("digite um valor diferente de -> 0")
               leia(num2)
            fimse
         ate(num2<>0) //fim da condição que não podera ser dividido nenhum número por (zero)
         operacao<- num1/num2
         escreval("A divisão dos números é:",operacao)
      fimse

      se(opcao=4)entao
         //zerando as Variáveis
         quantidadem <-0
         quantidadef <-0
         masculino <-0
         feminino <-0
         geral <-0
         escreval("Informe a quantidade de Pessoas!")
         leia(quantidade)
         para x de 1 ate quantidade passo 1 faca   //repetição para usuário inserir numero x de pessoas e ser feito o cálculo da média (masculina,feminina e geral).
            escreval("Informe a Idade")
            leia(idade)
            escreval (" DIGITE -> (m)  para Masculino ou -> (f)  para Feminino!")
            leia (sexo)
            se (sexo="m")entao
               quantidadem <- quantidadem + idade   //opereção da media masculina
               masculino <- masculino + 1

               mediam <- quantidadem/masculino
            senao
               se(sexo="f") entao
                  quantidadef <- quantidadef + idade
                  feminino <- feminino + 1               //operação da media feminina
                  mediaf <- quantidadef/feminino
               fimse
            fimse
            geral <- idade + geral                  //operação da media geral
            mediag <- geral/ quantidade
         fimpara
         escreval ("A média das idades é: ", mediag)
         escreval ("A média das idades Masculinas é: ", mediam)
         escreval ("A média das Idades Femininas é: ", mediaf)

      fimse
      se (opcao=5) entao
         escreval("digite um Número")
         leia(num1)
         escreval("os respectivos numeros primos sao")
         para y de 1 ate (num1) faca

            primo<-0   //zerando as variáveis
            cont<-0
            para cont de 1 ate y faca
               se(y mod cont=0)entao //verificando se o Número é PRIMO
                  primo<-primo + 1
               fimse
            fimpara
            se (primo=2)entao
               Soma<- soma + y //somando os Números primos
               escreval("o número primo é", y)
               escreval("")
               escreva("") //o programa não imprimia na tela corretamente tive de criar esses escrevas em branco
            fimse           //para imprimir corretamente
         fimpara
         escreval("A soma dos primos é", soma)
         escreval("")
         escreval("")
         soma<-0 // zerando a variável para não acumular valor
      fimse
      se(opcao=6) entao

      escreval("Informe quantas vezes quer repetir")

             leia(casos)
             fimse
             para x de 1 ate casos passo 1 faca

            escreval("___________________________________________________")
            escreval("  Informe a Base que deseja fazer a conversão")
            escreval(" -> d <- PARA (Decimal) e  -> b <- para (Binario)")
            escreval("___________________________________________________")
            leia(base)
            z<-controle  // variável para não acumular valor nos resultados quando repitidos
            se (base="d") entao   // condição para tranformar números decimais em binarios
               escreval("Entre com o Número decimal:")
               escreval("")

               leia(num)
               decimal <- num
               enquanto num > 0 faca    // repetiçao para inserir um numero diferente de 0
                  se (num mod 2) = 0 entao  //condição para acrescentar resto 0 como caracter
                     z <- "0" + z
                  senao
                     z <- "1" + z       //condiçao para acrescentar o resto 1 um como caracter
                  fimse
                  num <- num div 2

               fimenquanto

               escreval("A representação binária de", decimal, " é ", z)

            fimse
            
         se (base="b") entao //condiçao para transformar numeros binarios em decimais

            escreval("Informe o Número Binario ")
            escreval("")
            escreval("Caso o Número contenha menos de 8 digitos pressione Enter ")
            escreval("Para conter os espaços em branco!! ")


            leia(num8)
            leia(num7)
            leia(num6)
            leia(num5)
            leia(num4)
            leia(num3)
            leia(num2)
            leia(num1)

            b1 <- num1 * 2^0
            b2 <- num2 * 2^1
            b3 <- num3 * 2^2
            b4 <- num4 * 2^3      //conversão dos numeros binarios para decimal
            b5 <- num5 * 2^4
            b6 <- num6 * 2^5
            b7 <- num7 * 2^6
            b8 <- num8 * 2^7

            binario <- b1 + b2 + b3 + b4 + b5 + b6 + b7 + b8

            escreval ("Número em decimal:", binario)
            fimse
           fimpara
   ate (opcao=7)  //fim da repetição do menu, o Usuário sai do programa.
   escreval(" end º_º")
fimalgoritmo



