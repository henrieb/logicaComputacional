Algoritmo "classificaratleta"
 // Pedro Henrique Simoncini
 // Uma federação esportiva deseja criar um algoritmo para
 // classificar atletas de acordo com a sua idade. A classificação
 // segue as seguintes regras:
// 1. Se o atleta tem menos de 10 anos, ele é classificado como "Infantil".
// 2. Se tem entre 10 e 14 anos (inclusive), a categoria será "Juvenil".
// 3. Se tem entre 15 e 18 anos (inclusive), será "Júnior".
// 4. Se tem mais de 18 anos, será "Adulto".
// 5. No entanto, se o atleta tiver mais de 40 anos, ele será "Master".
// Além disso, um atleta da categoria "Júnior" ou "Adulto" pode receber
// um bônus de elite caso sua altura seja superior a 1,80 metros e seu
// peso seja inferior a 80 kg.
 Var
   idade: inteiro
   altura: real
   peso: real
   class: caracter
   bonus: caracter
 Inicio
   escreval("Digite a idade do atleta: ")
   escreva("->")
   leia(idade)
   limpatela
   escreval("Digite a altura do atleta (m): ")
   escreva("->")
   leia(altura)
   limpatela
   escreval("Digite o peso do atleta (kg): ")
   escreva("->")
   leia(peso)
   limpatela
   se (idade < 10) entao
      class <- "Infantil"
   senao
      se (idade <= 14) entao
         class <- "Juvenil"
      senao
         se (idade <= 18) entao
            class <- "Júnior"
         senao
            se (idade > 18) e (idade <= 40) entao
               class <- "Adulto"
            senao
               class <- "Master"
            fimse
         fimse
      fimse
   fimse
   se (class = "Júnior") ou (class = "Adulto") entao
      se (altura > 1.8) e (peso < 80) entao
         bonus <- "O atleta possui o bônus de elite!")
      senao
         bonus <- "O atleta não possui o bônus de elite.")
      fimse
   senao
      bonus <- "O atleta não pode receber o bônus de elite.")
   fimse
   escreva("Categoria do atleta: ")
   escreval(class)
   escreva("Bônus de elite: ")
   escreval(bonus)
 Fimalgoritmo