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

## Relacionamentos
- Usuário 1:N Treinos
- Usuário 1:N Medidas
- Usuário 1:N Progresso

