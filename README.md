# Sistemas Distribuidos - Atividade Avaliativa N2
Aluno: Samuel Ferreira Rezende

## Requisitos para rodar o projeto:
  - Docker e docker-compose
  - Portas 3000, 3001, 3002 e 5432 disponíveis

## Como rodar o projeto
  - Fazer clone do projeto
```bash
git clone https://github.com/SamuelFR7/sistemas-distribuidos-avn2.git
```

  - No diretorio raiz, subir os containers
```bash
cd sistemas-distribuidos-avn2
docker-compose up -d
```

Esse comando irá subir então os três micro serviços, o de busca, reservas e cancelamento nas portas 3000, 3001, e 3002 respectivamente, e um banco de dados Postgres na porta 5432;

A documentação swagger estará no /documentation de cada um deles, por exemplo "http://localhost:3000/documentation"

---

## Escolhas arquiteturais
#### [NodeJS](https://nodejs.org/en)
O node foi escolhido pela sua simplicidade e facilidade para criar servidores web.
#### [Fastify](https://fastify.dev/)
O Fastify foi o servidor http escolhido pois ele oferece a mesma simplicidade que o express, contudo com uma melhor performance.
#### [DrizzleORM](https://orm.drizzle.team/)
O drizzle foi o ORM escolhido pela sua escrita se assemelhar mais ao SQL em comparação com outros ORM.
#### [Postgres](https://www.postgresql.org/)
O postgres foi escolhido como banco de dados por ser um banco confiável, bem mantido e com fácil utilização

---

## Possíveis melhorias e expansões
  - Sistema de autenticação
  - Rota para hotéis fazerem seus cadastros
  - Multiplos banco de dados, com comunicação via serviços mensageria (Apache Kafka por exemplo)
  - Sistema de pagamento
