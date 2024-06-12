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

  Portanto, o tema escolhido pela squad 7, que é integrada pelos alunos Elzo Íthallo, Joicy Kelly, Letícia Monteiro , Luciano Jesus, Sabrina Matos
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

Para o desenvolvimento foram utilizados as ferramentas [br Modelo](http://www.sis4.com/brModelo/download.html), [dbdiagram](https://dbdiagram.io/home) e o [MySQL Workbench](https://www.mysql.com/products/workbench/). Segue abaixo mais detalhes.

## 📐 Diagramação conceitual

Um diagrama conceitual é uma espécie de mapa que mostra como as diferentes partes de um banco de dados se relacionam entre si. Ele ajuda a entender, de maneira visual e simplificada, como os dados estarão organizados.

Para isso, usamos o BRModelo, que é uma ferramenta de modelagem de banco de dados que ajuda a criar e visualizar esses diagramas. Pense nela como um programa de desenho, mas em vez de desenhar casas ou árvores, você desenha a estrutura de um banco de dados. Como por exemplo, na imagem abaixo:

<div align = "center"> 
    <img src = "https://github.com/Joicylara/ColetaLixo-ProjetoFinal/assets/99670716/e9516bf7-6249-4dba-b449-8e72e7cb71f5" width = "400px" />
</div>

### Em resumo:

- *Diagrama conceitual*: é o desenho no formato de diagramas que mostra como tudo está conectado no seu banco de dados.

Portanto são usados para planejar e visualizar a estrutura do banco de dados antes de você realmente criar e armazenar os dados nele. Isso ajuda a garantir que o banco de dados será eficiente e fácil de usar.

## Diagramação de entidade e relacionamento
É uma versão mais detalhada de um diagrama conceitual, podemos considerar como estágio intermediário na criação de um banco de dados. Além de tabelas, relacionamentos e atributos também serem apresentados nesse tipo de diagrama, sua especialidade está no detalhamento de como as relações e os dados serão introduzidos e definidos, como por exemplo o tipo de dado que um atributo pode receber.

<div align = "center"> 
    <img src = "https://github.com/Joicylara/ColetaLixo-ProjetoFinal/assets/140112089/9d173bc3-02d3-421c-a991-0be4b63c4343" width = "200px" />
</div>


EX: Route é uma tabela neste diagrama acima, nela possui um atributo chamado name_route, onde ao seu lado está escrito varchar(100)NN, especificando que tipo de dado pode entrar neste atributo, sendo varchar um tipo de dado, 100 representando a quantidade de caracteres e NN - não nulo.

✨ Para mais detalhes do [diagrama de entidade e relacionamento](https://github.com/Joicylara/ColetaLixo-ProjetoFinal/blob/master/src/img/Sellect_collect_dbdiagram.png) do projeto.


## Desenvolvimento
  <h3>Acompanhe o processo de criação de uma banco de dados em MySQL:</h3>
Chegamos na parte de desenvolvimento do nosso projeto de Coleta de Lixo, para desenvolver esse projeto foi utilizado o MySQL, que em breve resumo, nada mais é do que um sistema de gerenciamento de banco de dados relacional, isso significa que ele armazena e organiza as informações em tabelas.

 ### create database select_collect;
 
  Primeiro, utilizamos o comando CREATE DATABASE e, em seguida, passamos o nome que desejamos colocar no banco de dados, no caso, select_collect. Com isso, você já terá um banco de dados criado no MySQL. Agora, precisamos criar as tabelas e inserir informações no banco. No entanto, antes disso, precisamos selecionar o banco de dados para usá-lo. Para isso, utilizamos o comando USE seguido pelo nome do banco de dados:

  ``` 
  CREATE DATABASE select_collect;
  USE select_collect;
  ```

  ### próximo passo, criar as tabelas:
  ``` CREATE TABLE select_collect; ```
  * Aqui vamos criar a tabela com o "CREATE TABLE", seu nome é auto explicativo, ele é usado para criação de uma tabela, em seguida o nome da tabela. Devemos agora atribuir alguns valores a essa tabela, como seu id primeiramente, depois as informações que ele deve ter, como estamos criando um banco de dados para coleta de lixo, acompanhe alguns dos dados que inserimos nas tabelas "resident" e "driver" que é mostrado na imagem abaixo:
   
   <div align = "center"> 
    <img src = "https://github.com/Joicylara/ColetaLixo-ProjetoFinal/assets/108181021/c970ccaf-6840-4e40-8f30-da7171808443" width = "500px" />
  </div>


  <p>Pode observar alguns valores como "name_resident", que seria o nome do residente, e o da tabela driver como "cnh", que seria a cnh do motorista. Resumindo, são as caracteristicas das nossas entidades.</p>

<h3>Inserir dados</h3>
  <p> Após criar as tabelas, precisamos inserir os dados. Utilizamos o comando INSERT INTO para adicionar valores ao banco de dados. Vamos a um exemplo prático:</p>
  
  <div align = "center"> 
    <img src = "https://github.com/Joicylara/ColetaLixo-ProjetoFinal/assets/108181021/b1b5af20-0c5d-4fca-9a37-585d801b76b5" width = "800px" />
  </div>

  <p>Com esses comandos MySQL, acabamos de inserir uma residente chamada "Ana Maria da Silva" que mora no "Bairro Santa Laura, rua Antonio".</p>

⚠ OBS: Se ocorrer algum problema no insert do residue, denounce e route, verifique a numeração do id_collect.
  <h3>Sistema de Cashback  por coleta</h3>

 <div align = "center"> 
    <img src = "https://github.com/Joicylara/ColetaLixo-ProjetoFinal/assets/108181021/2881ad6e-eae2-4ce2-b195-48dc2447cba4" width = "500px" />
  </div>

  <p>Vamos explicar o sistema de cashback por coleta, seu desenvolvimento e propósito. A coleta por cashback incentiva a correta separação de resíduos no descarte, visando reduzir a poluição ambiental e aumentar a reutilização de materiais. Como participante, você ganha algo em troca ao contribuir.

O sistema funciona assim: quando você descarta um resíduo corretamente, seguindo os padrões descritos nas lixeiras, recebe um cashback. Aqui estão algumas [dicas](https://www.gov.br/mma/pt-br/noticias/como-e-porque-separar-o-lixo#:~:text=Como%20separar%20o%20lixo%20dom%C3%A9stico,frascos%20de%20vidro%20e%20pl%C3%A1stico) para separar resíduos em casa. Portanto, com essa ideia, temos em vista:

- Reduzir significativamente o volume de resíduos enviados para aterros.
- Aumentar as taxas de reciclagem.
- Fortalecer a conscientização e participação cidadã na gestão de resíduos 

## 📊 Análise
Para realizar a análise, utilizamos o Google Planilhas, uma aplicação web gratuita oferecida pelo Google. Ela permite a criação, edição e compartilhamento de planilhas diretamente no navegador da web. Suas funcionalidades incluem colaboração em tempo real, armazenamento na nuvem, gráficos e visualizações de dados, entre outras. É amplamente utilizado por indivíduos e empresas para diversas tarefas de gestão e análise de dados.

A partir dos SELECTs, ou seja, das consultas realizadas no banco de dados, foi possível obter informações relevantes sobre o database "select_collect" do projeto Coleta de Lixo. Com esses dados, foram criados seis gráficos no Google Planilhas que exemplificam as informações descritas no Diagrama Conceitual (BR Modelo), no Diagrama de Entidade e Relacionamento (DER) e no MySQL Workbench.

### Vejamos um exemplo:

Na página "cashback-gráfico" da planilha, é possível entender que se trata do total de cashback por moradores, criado a partir dos INSERTs das tabelas "collect" e "resident". O gráfico mostra o total do percentual de cashback ganho por cada morador, conforme a quantidade de coletas corretas e verificações realizadas, resultando nos valores apresentados. Por exemplo, no caso da moradora Ana Maria da Silva, que possui 9% de cashback, foram realizadas três coletas em sua moradia, todas com o status "verificado" e com valores de 0,02, 0,07 e 0,00, resultando em um percentual total de 9% (0,09).
 
 <div align = "center"> 
    <img src = "https://github.com/Joicylara/ColetaLixo-ProjetoFinal/assets/108181021/4c7463ae-b6e1-47c4-b3fc-178435bfdad3" width = "500px" />
  </div>

  ### Elaboração

Para gerar as informações necessárias para o gráfico, foi necessário elaborar um SELECT que integrasse os dados das tabelas "collect" e "resident", conforme mencionado anteriormente. O processo envolveu a criação de uma consulta SQL que combinasse as informações relevantes das duas tabelas, permitindo a análise e visualização adequadas no Google Planilhas.

A consulta SELECT foi projetada para recuperar os dados específicos necessários para o gráfico de cashback por morador. Isso incluiu campos como:
- nome do morador 
- valor do cashback atribuído a cada coleta realizada
- resident_id relacionado com id_collect

O SELECT foi construído de forma a filtrar os dados relevantes e calcular o cashback total para cada morador com base nas coletas realizadas. Essa consulta foi então executada no banco de dados para extrair os resultados necessários, que foram posteriormente utilizados para criar o gráfico na planilha do Google.

<div align = "center"> 
    <img src = "https://github.com/Joicylara/ColetaLixo-ProjetoFinal/assets/99670716/1e6c298a-4cff-4a2b-a3d0-bf262030e2a8" width = "400px" />
  </div>


📊 É possível analisar mais gráficos no docs: [Coleta de Lixo](https://docs.google.com/spreadsheets/d/1nZd88RqXH0Y6KsNhMfrChnrF3YlZrCFuZhgkD86GSec/edit?usp=sharing) no Google Planilhas.


## Conclusão
Para concluir, o desenvolvimento deste sistema de gerenciamento para coleta seletiva representa um passo importante na direção da sustentabilidade ambiental e da gestão eficiente de resíduos. Através da priorização da coleta seletiva e do uso de tecnologia para otimizar processos, podemos enfrentar os desafios relacionados à falta de práticas sustentáveis de gerenciamento de resíduos.

Com a implementação deste sistema, esperamos facilitar a gestão de dados relacionados à coleta seletiva, proporcionar às autoridades uma ferramenta para monitorar e otimizar as rotas de coleta, e envolver os cidadãos através do acesso transparente a informações sobre coleta e reciclagem.

Em última análise, a conscientização e a ação coletiva são fundamentais para superar os desafios ambientais que enfrentamos. Este sistema pode servir como uma ferramenta valiosa para promover a sustentabilidade e a responsabilidade ambiental em nossa comunidade.

Com o empenho e colaboração de todos os envolvidos, acreditamos que podemos fazer uma diferença positiva no manejo de resíduos e contribuir para um futuro mais limpo e saudável para as gerações futuras. Juntos, podemos tornar a coleta seletiva uma prática comum e eficaz em prol do meio ambiente e da qualidade de vida de todos.

