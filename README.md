# ♻ Sistema de Gerenciamento para coleta seletiva

## 📋 Sumário
1. [Introdução](https://github.com/Joicylara/ColetaLixo-ProjetoFinal/tree/master?tab=readme-ov-file#-introdu%C3%A7%C3%A3o)
2. [Problematização](https://github.com/Joicylara/ColetaLixo-ProjetoFinal/tree/master?tab=readme-ov-file#-problematiza%C3%A7%C3%A3o)
3. [Diagramação conceitual](https://github.com/Joicylara/ColetaLixo-ProjetoFinal?tab=readme-ov-file#diagrama%C3%A7%C3%A3o-conceitual)
4. [Diagramação de entidade e relacionamento](https://github.com/Joicylara/ColetaLixo-ProjetoFinal?tab=readme-ov-file#diagrama%C3%A7%C3%A3o-de-entidade-e-relacionamento)
5. [Desenvolvimento](https://github.com/Joicylara/ColetaLixo-ProjetoFinal?tab=readme-ov-file#desenvolvimento)
6. [Análise](https://github.com/Joicylara/ColetaLixo-ProjetoFinal?tab=readme-ov-file#an%C3%A1lise)
7. [Conclusão](https://github.com/Joicylara/ColetaLixo-ProjetoFinal?tab=readme-ov-file#conclus%C3%A3o)


## 📝 Introdução
  Este projeto foi proposto no módulo 3 do programa [Programadores do Amanhã](https://programadoresdoamanha.org/) com o objetivo de desenvolver um sistema de banco de dados completo, desde a concepção até a implementação final. O projeto nos desafia a sermos criativos, analíticos e colaborativos na criação de um sistema de banco de dados, começando desde o processo de modelagem até a implementação no Sistema de Gerenciamento de Banco de dados Relacionais, MySQL. Para a proposta do tema, foi solicitado que desenvolvêssemos algo novo e criativo ou que pudesse ajudar a solucionar algum problema real que impacta a comunidade.

  Portanto, o tema escolhido pela squad 7, que é integrada pelos alunos(as) Elzo Íthallo, Joicy Kelly, Letícia Monteiro , Luciano Jesus, Sabrina Matos
e Wesley Batista, foi coleta seletiva. Dessa forma, a modelagem e implementação do sistema é sobre o gerenciamento de coleta seletiva.


## 🚯 Problematização
A falta de coleta seletiva domiciliar em muitas comunidades, apesar da cobrança por serviços de gestão de resíduos, apresenta uma série de desafios significativos que vão além da simples questão financeira. 
No bairro de um dos integrantes da squad, como em muitos outros, essa realidade se reflete em uma série de problemas que afetam diretamente o meio ambiente, a saúde pública e a qualidade de vida dos moradores.

### 💸 Priorização e Gestão:
Pagar por coleta de lixo sem coleta seletiva reflete falta de priorização ambiental e gestão inadequada de recursos. Isso levanta preocupações sobre justiça e eficiência dos serviços, considerando os impactos socioeconômicos e ambientais da falta de práticas sustentáveis de gerenciamento de resíduos.

### 🌱 Consequências:
A falta de coleta seletiva causa contaminação ambiental e desperdício de recursos, já que materiais recicláveis são misturados com resíduos orgânicos. Isso aumenta a demanda por novas matérias-primas e polui o solo, a água e o ar. 
Também sobrecarrega aterros sanitários, gerando gases de efeito estufa e impactando a saúde pública e o meio ambiente.

### 💡 Solução
Diante desse desafio, foi desenvolvido o sistema de gerenciamento para coleta seletiva. Este sistema visa:
- Facilitar a eficiência da coleta seletiva através de uma melhor gestão de dados
- Proporcionar às autoridades uma ferramenta para monitorar, analisar e otimizar rotas de coleta.
- Engajar cidadãos através de um acesso transparente e interativo a informações sobre coleta e reciclagem.

## Diagramação conceitual

## Diagramação de entidade e relacionamento

## Desenvolvimento
  ### Acompanhe o processo de criação de uma banco de dados em MySQL:
Chegamos na parte de desenvolvimento do nosso projeto de Coleta de Lixo, para desenvolver esse projeto foi utilizado o MySQL, que em breve resumo, nada mais é do que um banco de dados relacional, isso significa que ele armazena e organiza as informações em tabelas.
  * ### create database collect_residue;
  - Primeiro o "create database" e em seguida passamos o nome que desejamos a tabela, no caso, "collect_residue", e pronto, você já tem um banco de dados criado com MySQL. Aagora precisamos criar as tabelas e inserir informações no banco.
  ### Agora vamos para nosso próximo passo, criar as tabelas:
  - ### create table;
  * Aqui vamos crair a tabela com o "create table" e em seguida, o nome da tabela. Devemos agora atribuir alguns valores a essa tabela, como seu id primeiramente, depois as informações que ele deve ter, como estamos criando um banco de dados para coleta de lixo, acompanhe alguns dos dados que inserimos nas tabelas "vehicle" e "route" que é mostrado na imagem abaixo:
   ![Captura de tela 2024-06-01 130432](https://github.com/Joicylara/ColetaLixo-ProjetoFinal/assets/108181021/50828efa-07b2-47e7-8303-42d9596fdccb)
  * Pode observar alguns valores como "plate", que seria a placa do veiculo, da tabela veiculo, e "name_route", que seria o nome da rota. Resumindo, são as caracteristicas das nossas entidades(tabelas). 

## Análise

## Conclusão
