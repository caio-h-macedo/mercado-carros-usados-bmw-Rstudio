# Análise de Preços de Carros Usados da BMW

Este projeto tem como objetivo analisar a relação entre as **variáveis** e o **preço de carros usados da BMW**, utilizando **regressão linear** no R.  
A análise evolui de um modelo simples para um modelo de regressão múltipla, buscando maior poder explicativo.

---

## 📊 Base de Dados

Base obtida no Kaggle: https://www.kaggle.com/datasets/algozee/bmw-dataset
- **Observações:** 10.781  
- **Variáveis:** 9  

Principais variáveis utilizadas:
- `price`: preço do veículo (em dólares)
- `mileage`: quilometragem rodada (em milhas)
- `year`: ano do veículo
- `engineSize`: tamanho do motor
- `mpg`: eficiência do veículo (milhas por galão)

---

## 🎯 Objetivo

Avaliar como a distância percorrida pelo carro influencia seu preço e verificar se a inclusão de mais variáveis melhora nosso modelo.

---

## 🛠️ Metodologia

### Análise Exploratória
- Gráfico de dispersão entre quilometragem e preço
- Verificação visual de relação linear

### Transformações
- Aplicação de logaritmo no preço (`log(price)`) para reduzir heterocedasticidade
- Alteração da distância percorrida para cada 1000 milhas (`mileage_1000`) para facilitar a interpretação

## A explicação de cada passo e as conclusões estão presentes no script deste trabalho.

