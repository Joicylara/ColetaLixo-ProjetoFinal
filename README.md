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
Um diagrama conceitual é uma espécie de mapa que mostra como as diferentes partes de um banco de dados se relacionam entre si. Ele ajuda a entender, de maneira visual e simplificada, como os dados estarão organizados.
O que é BRModelo?
BRModelo é uma ferramenta de software que ajuda a criar e visualizar diagramas de banco de dados. Pense nela como um programa de desenho, mas em vez de desenhar casas ou árvores, você desenha a estrutura de um banco de dados.
Em resumo:
BRModelo é a ferramenta que você usa para desenhar.
Diagrama Conceitual é o desenho que mostra como tudo está conectado no seu banco de dados.
Ambos são usados para planejar e visualizar a estrutura do banco de dados antes de você realmente criar e armazenar os dados nele. Isso ajuda a garantir que o banco de dados será eficiente e fácil de usar.

## Diagramação de entidade e relacionamento

## Desenvolvimento
  <h3>Acompanhe o processo de criação de uma banco de dados em MySQL:</h3>
Chegamos na parte de desenvolvimento do nosso projeto de Coleta de Lixo, para desenvolver esse projeto foi utilizado o MySQL, que em breve resumo, nada mais é do que um sistema de gerenciamento de banco de dados relacional, isso significa que ele armazena e organiza as informações em tabelas.

 ### create database collect_residue;
 
  - Primeiro o "create database" e em seguida passamos o nome que desejamos colocar na tabela, no caso, "collect_residue", e pronto, você já tem um banco de dados criado com MySQL. Agora precisamos criar as tabelas e inserir informações no banco.
  ### próximo passo, criar as tabelas:
  - ### create table;
  * Aqui vamos criar a tabela com o "create table", seu nome é auto explicativo, ele é usado para criação de uma tabela, em seguida o nome da tabela. Devemos agora atribuir alguns valores a essa tabela, como seu id primeiramente, depois as informações que ele deve ter, como estamos criando um banco de dados para coleta de lixo, acompanhe alguns dos dados que inserimos nas tabelas "resident" e "driver" que é mostrado na imagem abaixo:
   
   ![code](https://github.com/Joicylara/ColetaLixo-ProjetoFinal/assets/108181021/c970ccaf-6840-4e40-8f30-da7171808443)

  <p>Pode observar alguns valores como "name_resident", que seria o nome do residente, e o da tabela driver como "cnh", que seria a cnh do motorista. Resumindo, são as caracteristicas das nossas entidades.</p>

<h3>Inserir dados</h3>
  <p> Após criar as tabelas, precisamos inserir os dados. Utilizamos o comando INSERT INTO para adicionar valores ao banco de dados. Vamos a um exemplo prático:</p>
  
  ![code1](https://github.com/Joicylara/ColetaLixo-ProjetoFinal/assets/108181021/b1b5af20-0c5d-4fca-9a37-585d801b76b5)

  <p>Com esses comandos MySQL, acabamos de inserir uma residente chamada "Ana Maria da Silva" que mora no "Bairro Santa Laura, rua Antonio".</p>
  
<h3>Relatórios no MySQL</h3>
Além de armazenar dados, um banco de dados como o MySQL permite a criação de relatórios e análises que podem ser muito úteis para a gestão de resíduos. Por exemplo, podemos gerar relatórios que mostram quais áreas produzem mais lixo, quais motoristas têm maior eficiência em suas rotas, e assim por diante. Essas informações são valiosas para melhorar a eficiência do sistema de coleta de lixo e contribuir para a sustentabilidade ambiental.


## Análise
Teste

## Conclusão
Para concluir, o desenvolvimento deste sistema de gerenciamento para coleta seletiva representa um passo importante na direção da sustentabilidade ambiental e da gestão eficiente de resíduos. Através da priorização da coleta seletiva e do uso de tecnologia para otimizar processos, podemos enfrentar os desafios relacionados à falta de práticas sustentáveis de gerenciamento de resíduos.

Com a implementação deste sistema, esperamos facilitar a gestão de dados relacionados à coleta seletiva, proporcionar às autoridades uma ferramenta para monitorar e otimizar as rotas de coleta, e envolver os cidadãos através do acesso transparente a informações sobre coleta e reciclagem.

Em última análise, a conscientização e a ação coletiva são fundamentais para superar os desafios ambientais que enfrentamos. Este sistema pode servir como uma ferramenta valiosa para promover a sustentabilidade e a responsabilidade ambiental em nossa comunidade.

Com o empenho e colaboração de todos os envolvidos, acreditamos que podemos fazer uma diferença positiva no manejo de resíduos e contribuir para um futuro mais limpo e saudável para as gerações futuras. Juntos, podemos tornar a coleta seletiva uma prática comum e eficaz em prol do meio ambiente e da qualidade de vida de todos.

