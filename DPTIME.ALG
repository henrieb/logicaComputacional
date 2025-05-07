Algoritmo "DPTIME"

Var
   // Seção de Declarações das variáveis
   n: inteiro
   i: inteiro
   gols_time, gols_adversario: vetor[1..100] de real
   media_time, media_adversario: real
   soma_time, soma_adversario: real
   dp_time, dp_adversario: real
   soma_dp_time, soma_dp_adversario: real

Inicio
   escreva("Digite o número de jogos: ")
   leia(n)
   para i de 1 ate n faca
      escreva("Digite os gols do seu time e do adversário no jogo ", i, ": ")
      leia(gols_time[i], gols_adversario[i])
   fimpara
   soma_time <- 0
   soma_adversario <- 0
   para i de 1 ate n faca
      soma_time <- soma_time + gols_time[i]
      soma_adversario <- soma_adversario + gols_adversario[i]
   fimpara
   media_time <- soma_time / n
   media_adversario <- soma_adversario / n
   soma_dp_time <- 0
   soma_dp_adversario <- 0
   para i de 1 ate n faca
      soma_dp_time <- soma_dp_time + (gols_time[i] - media_time)^2
      soma_dp_adversario <- soma_dp_adversario + (gols_adversario[i] - media_adversario)^2
   fimpara
   dp_time <- raizq(soma_dp_time / n)
   dp_adversario <- raizq(soma_dp_adversario / n)

   escreval(media_time)
   escreval(dp_time)
   escreval(media_adversario)
   escreval(dp_adversario)
Fimalgoritmo
