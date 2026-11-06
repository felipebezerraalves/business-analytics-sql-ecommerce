# Análise Comercial de E-commerce com SQL

## Sobre o projeto

Análise exploratória de dados reais de e-commerce utilizando SQL, com foco em desempenho comercial, distribuição geográfica das vendas, sazonalidade e comportamento dos consumidores.

O projeto utiliza dados públicos da Olist, marketplace brasileiro, e busca transformar registros transacionais em indicadores relevantes para decisões de negócio.

## Objetivos

- Analisar a distribuição de pedidos e vendas por estado.
- Identificar diferenças no ticket médio entre regiões.
- Investigar a evolução mensal das vendas.
- Avaliar o comportamento das vendas durante a Black Friday de 2017.
- Analisar a recorrência de consumidores.
- Verificar como os critérios de seleção dos pedidos influenciam os indicadores.

## Tecnologias utilizadas

- SQL
- SQLite
- DBeaver
- GitHub

## Base de dados

Fonte: [Olist](https://github.com/olist/work-at-olist-data)

Tabelas utilizadas:

- `olist_customers_dataset`
- `olist_orders_dataset`
- `olist_order_items_dataset`

A análise considera os dados históricos disponíveis nessas tabelas.

## Principais resultados

### Distribuição geográfica

São Paulo, Rio de Janeiro e Minas Gerais apresentaram os maiores volumes de pedidos e valores de vendas, demonstrando uma concentração relevante da atividade comercial na região Sudeste.

### Ticket médio

Estados com menor volume de pedidos, como Paraíba, Amapá e Acre, apresentaram os maiores tickets médios. Isso demonstra que volume de pedidos e valor médio por compra são indicadores distintos.

### Sazonalidade e Black Friday

Novembro de 2017 apresentou o maior valor mensal de vendas na série analisada, com aproximadamente R$ 1,01 milhão.

Em 24 de novembro de 2017, data da Black Friday, foram registrados:

- 1.166 pedidos.
- R$ 152.653,74 em valor dos itens vendidos.
- Valor de vendas 416,19% superior à média diária dos demais dias de novembro.

### Recorrência de consumidores

Foram identificados 96.096 consumidores únicos na base de clientes, dos quais 2.997 aparecem em mais de um registro, representando 3,12%.

Ao considerar exclusivamente pedidos entregues:

- 93.358 consumidores únicos.
- 2.801 consumidores com mais de um pedido entregue.
- Taxa de recompra de 3,00%.

A diferença evidencia a importância de estabelecer critérios consistentes para o cálculo de indicadores.

## Organização das consultas

A pasta `consultas_sql` contém 12 scripts SQL que documentam as análises realizadas, desde o relacionamento entre tabelas até os cálculos de desempenho comercial e recompra.

## Limitações

- Os valores de vendas foram calculados com base nos preços dos itens, sem incluir frete.
- As análises comerciais gerais não excluem todos os pedidos cancelados ou não concluídos.
- Os dados representam um período histórico específico.
- A análise de recompra considera pedidos entregues e não acompanha o comportamento dos consumidores após o encerramento da base.
- A associação entre a Black Friday e o pico de vendas não estabelece causalidade.

## Conclusão

A análise demonstra como consultas SQL podem transformar dados transacionais em informações sobre desempenho comercial, sazonalidade, distribuição regional e comportamento de compra.

Os resultados também reforçam a importância da qualidade dos dados, da escolha dos indicadores e da interpretação adequada das métricas para apoiar decisões empresariais.