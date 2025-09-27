# Modelo de Dados - Fitness App

## Entidades

### Usuário
- id (PK)
- nome
- email
- senha (hash)

### Treino
- id (PK)
- usuario_id (FK → Usuário.id)
- tipo
- duracao
- data

### Medidas
- id (PK)
- usuario_id (FK → Usuário.id)
- peso
- altura
- data

### Progresso
- id (PK)
- usuario_id (FK → Usuário.id)
- resumo
- data

  <img width="925" height="380" alt="image" src="https://github.com/user-attachments/assets/bd2dd5ac-94e4-4339-ba49-87e733daf74c" />


## Relacionamentos
- Usuário 1:N Treinos
- Usuário 1:N Medidas
- Usuário 1:N Progresso

