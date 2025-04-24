# 🚀 Trabalho de Crud de Experiencia Criativa

[![React](https://img.shields.io/badge/React-18.2.0-blue)](https://reactjs.org/)
[![Node.js](https://img.shields.io/badge/Node.js-18.x-green)](https://nodejs.org/)
[![MySQL](https://img.shields.io/badge/MySQL-8.0-orange)](https://www.mysql.com/)

Uma breve descrição do seu projeto e sua finalidade.

![Preview do Projeto](https://github.com/user-attachments/assets/890cbd73-9435-4de7-a79b-60f999a870cf)

## 🛠️ Tecnologias Utilizadas

- **Frontend**: React + Vite
- **Backend**: Node.js
- **Banco de Dados**: MySQL

## 📦 Pré-requisitos

Antes de começar, você vai precisar ter instalado em sua máquina as seguintes ferramentas:
- [Node.js](https://nodejs.org/) (v18.x recomendado)
- [MySQL](https://www.mysql.com/) (8.0 ou superior)
- [Git](https://git-scm.com) (Para poder clonar o projeto para usa maquina)


## AVISO!!
No projeto original havia o node_modules, porem na hora de enviar o codigo tive que remover ele, pois ele era muito pesado e github nao me permitiu enviar ele

## 🚀 Como Executar o Projeto

### 1. Banco de Dados MySQL

```bash
# Conecte-se ao seu servidor MySQL (como root ou um usuário com privilégios)
mysql -u root -p

# Crie o banco de dados
CREATE DATABASE nome_do_banco;

# Saia do MySQL
exit

# Importe a estrutura do banco de dados
mysql -u root -p nome_do_banco < caminho/para/o/arquivo.sql
