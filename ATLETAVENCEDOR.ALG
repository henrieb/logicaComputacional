Algoritmo "atletavencedor"
// Pedro Henrique Simoncini
// Dois atletas estão competindo em uma prova de ciclismo
// de longa duração. Cada um dos atletas recebeu na inscrição
// um número inteiro que o identifica. Um programador deve
// escrever um programa que leia os tempos dos dois atletas e
// informe qual deles fez o percurso da prova em menos tempo.
Var
   inscricao1: inteiro
   horas1: inteiro
   minutos1: inteiro
   segundos1: inteiro
   inscricao2: inteiro
   horas2: inteiro
   minutos2: inteiro
   segundos2: inteiro
   vencedor: inteiro
Inicio
   escreval("Número de inscrição do primeiro atleta: ")
   escreva("->")
   leia(inscricao1)
   limpatela
   escreval("DURAÇÃO NO CIRCUITO")
   escreval("(Atleta 1)")
   escreval("========================")
   escreval("")
   escreval("Horas: ")
   escreva("->")
   leia(horas1)
   escreval("Minutos: ")
   escreva("->")
   leia(minutos1)
   escreval("Segundos: ")
   escreva("->")
   leia(segundos1)
   limpatela
   escreval("Número de inscrição do segundo atleta: ")
   escreva("->")
   leia(inscricao2)
   limpatela
   escreval("DURAÇÃO NO CIRCUITO")
   escreval("(Atleta 2)")
   escreval("========================")
   escreval("")
   escreval("Horas: ")
   escreva("->")
   leia(horas2)
   escreval("Minutos: ")
   escreva("->")
   leia(minutos2)
   escreval("Segundos: ")
   escreva("->")
   leia(segundos2)
   limpatela
   se (horas1 > horas2) entao
      vencedor <- inscricao2
   senao
      se (horas2 > horas1) entao
         vencedor <- inscricao1
      senao
         se (horas1 = horas2) entao
            se (minutos1 > minutos2) entao
               vencedor <- inscricao2
            senao
               se (minutos2 > minutos1) entao
                  vencedor <- inscricao1
               senao
                  se (minutos1 = minutos2) entao
                     se (segundos1 > segundos2) entao
                        vencedor <- inscricao2
                     senao
                        se (segundos2 > segundos1) entao
                           vencedor <- inscricao1
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse
   escreval("O atleta ganhador é o de inscrição número: ", vencedor)
Fimalgoritmo