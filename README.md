# 🎵 Trybefy — Banco de Dados de Streaming de Música

O **Trybefy** é um projeto de modelagem e manipulação de banco de dados relacional que simula o ecossistema de um aplicativo de streaming de música. O objetivo principal foi construir uma infraestrutura robusta em **SQL** capaz de gerenciar planos, usuários, artistas, álbuns, músicas e históricos de reprodução.

---

## 🚀 Habilidades Desenvolvidas & Consolidadas

Este projeto funcionou como um laboratório prático para consolidar conceitos essenciais de engenharia de dados e bancos de dados relacionais:

*   **Modelagem de Dados Relacional:** Criação de bancos de dados estruturados com tabelas conectadas de forma consistente.
*   **Integridade Referencial:** Aplicação rigorosa de restrições de dados (`Constraints`), Chaves Primárias (`PRIMARY KEY`) e Chaves Estrangeiras (`FOREIGN KEY`).
*   **Manipulação de Dados (DML):** Escrita de queries otimizadas para inserção (`INSERT`), atualização (`UPDATE`) e remoção (`DELETE`) de registros em cascata e com condições lógicas.
*   **Consultas Avançadas (DQL):**
    *   Junção de dados vindos de múltiplas tabelas (`INNER JOIN`).
    *   Filtragem por padrões textuais (`LIKE`) e operadores lógicos.
    *   Agrupamento (`GROUP BY`) e funções de agregação (`COUNT`, `SUM`).
    *   Ordenação avançada (`ORDER BY`) e filtragem pós-agrupamento (`HAVING`).
*   **Boas Práticas de Organização:** Versionamento de scripts SQL organizados por desafios modulares (`n_challenge.sql`).

---

## 🗺️ Estrutura do Banco de Dados

A arquitetura do banco foi desenvolvida de forma incremental, dividida em etapas lógicas para garantir a escalabilidade:

### 🟩 Passo 1: Usuários e Planos
Relação de um-para-muitos ($1:N$) onde cada usuário possui apenas um plano ativo, mas um plano pode abranger diversos usuários.

### 🟨 Passo 2: Artistas e Álbuns
Mapeamento de discografias, interligando álbuns aos seus respectivos artistas com suporte a anos de lançamento e nacionalidades.

### 🟦 Passo 3: Músicas
Modelagem do acervo de faixas vinculadas diretamente à estrutura de álbuns desenvolvida no passo anterior.

---

## 🛠️ Tecnologias e Ferramentas Utilizadas

*   **Banco de Dados:** MySQL
*   **Ambiente Isolado:** Docker & Docker Compose (para orquestrar os containers da aplicação e do banco de dados)
*   **Runtime/Ambiente de Testes:** Node.js (utilizado para rodar a suíte de testes automatizados do projeto)
*   **Linter:** Validação automatizada de sintaxe e boas práticas do código SQL.

---

## 🐳 Como Executar o Projeto Localmente

O ambiente é totalmente conteinerizado, eliminando a necessidade de instalar o MySQL diretamente na sua máquina física.

> ⚠️ **Aviso:** Certifique-se de que a porta `3306` não está sendo usada por outra instância local do MySQL antes de subir os containers.

1.  **Clone o repositório:**
    ```bash
    git clone git@github.com:seu-usuario/sd-040-project-trybefy.git
    cd sd-040-project-trybefy
    ```

2.  **Suba os ambientes do Docker:**
    ```bash
    docker-compose up -d
    ```
    *Isso iniciará dois containers em segundo plano: `trybefy` (Node) e `trybefy_db` (MySQL).*

3.  **Acesse o terminal interativo do container:**
    ```bash
    docker exec -it trybefy sh
    ```

4.  **Instale as dependências e rode os testes (dentro do container):**
    ```bash
    npm install
    # Para rodar todos os testes
    npm run test
    # Para rodar um teste específico (ex: Desafio 1)
    npm run test 01_
    ```

---

## 📝 Organização do Código

Todas as queries e comandos de estrutura de dados (`DDL`) criados durante o projeto estão localizados na pasta `src/`, seguindo o padrão de nomenclatura incremental:

*   `01_challenge.sql`: Inicialização do banco de dados `Trybefy`.
*   `02_challenge.sql`: Criação e população das tabelas de planos e usuários.
*   `10_challenge.sql`: Estruturação do ecossistema de artistas e álbuns.
*   `16_challenge.sql`: Implementação da tabela de faixas e músicas.
*   *(Demais arquivos numéricos contêm as queries específicas de busca, relatórios agregados, atualizações e exclusões pedidas pelo projeto).*
