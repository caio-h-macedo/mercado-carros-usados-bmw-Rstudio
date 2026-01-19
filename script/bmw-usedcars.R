## Analisando a venda de carros usados da BMW

#Primeiro indicar o diretório e ler o arquivo .csv

setwd("../dados")
dados = read.csv("bmw.csv")

#Temos um banco de dados com 10781 observações e 9 variáveis

head(dados) #visualizando uma amostra de dados.

#A ideia central do estudo é entender o quanto a distância percorrida em milhas
#(mileage) pelo carro interfere no preço dele.

#Podemos começar criando um gráfico de dispersão para buscarmos alguma correlação.

plot(dados$mileage, dados$price,
     main = "Gráfico de dispersão",
     xlab = "distância percorrida",
     ylab = "preço")


#Em relação às milhas, quero interpretar a partir de cada 1000 milhas para melhor
#visualição dos resultados. Para isso vou transformar os valores:

dados$mileage_1000 <- dados$mileage / 1000

#Estimaremos agora nosso modelo de regressão linear através da função lm:

mod = lm(log(price) ~ mileage_1000, data = dados)
summary(mod)

#Segundo o modelo estimado, aumento de cada 1000 milhas rodada no carro, ocasiona
#um decréscimo do preço do carro de, em média, 0,014%, 
#mantendo as demais variáveis constantes

#O coeficiente associado à variável "mileage" é estatisticamente significativo,
#ao nível de 5%, rejeitando a hipótese nula de que seu efeito sobre o preço seja nulo.

#Chegamos a um R quadrado de aproximadamento 0,54, o que representa que a distância
#percorrida do carro em milhas em nosso estudo
#explica aproximadamento 54% da variação do preço dos carros usados.

#criar um segundo modelo com regressão múltipla para buscar um R quadrado maior:


mod2 = lm(log(price) ~ mileage_1000 + year + engineSize + mpg, data = dados)
summary(mod2)

#Segundo o modelo 2 estimado chegamos às seguintes conclusões: 

#1. o aumento de cada 1000 milhas rodadas no carro, ocasiona
#um decréscimo do preço do carro de, em média, 0,006%, 
#mantendo as demais variáveis constantes

#2. O aumento de 1 ano (year) no carro, aumenta em média, 0,1% no valor do carro,
#mantendo as demais variáveis constantes.

#3. O aumento de 1 litro do tamanho do motor (engineSize), o preço aumenta, em
#média 0,39% o valor do carro, mantendo as demais variáveis constantes.

#4. O aumento de 1 mpg na eficiência do carro, há um aumento de, em média,
#0,0012% no valor do carro

#Os coeficientes associados às variáveis são estatisticamente significativos,
#ao nível de 5%, rejeitando a hipótese nula de que seus efeitos sobre o preço 
#sejam nulos.

#Alcançamos um R quadrado maior, o que nos mostra que nossas variáveis explicam

#cerca de 81% da variação dos preços de carros usados em nosso estudo.
