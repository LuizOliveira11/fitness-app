-- Criar tabela de Usuário
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL -- hash
);

-- Criar tabela de Treino
CREATE TABLE treinos (
    id SERIAL PRIMARY KEY,
    usuario_id INT NOT NULL,
    tipo VARCHAR(100) NOT NULL,
    duracao INT, -- em minutos
    data DATE NOT NULL DEFAULT CURRENT_DATE,
    CONSTRAINT fk_usuario_treino FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE
);

-- Criar tabela de Medidas
CREATE TABLE medidas (
    id SERIAL PRIMARY KEY,
    usuario_id INT NOT NULL,
    peso DECIMAL(5,2), -- ex: 72.50
    altura DECIMAL(4,2), -- ex: 1.75
    data DATE NOT NULL DEFAULT CURRENT_DATE,
    CONSTRAINT fk_usuario_medidas FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE
);

-- Criar tabela de Progresso
CREATE TABLE progresso (
    id SERIAL PRIMARY KEY,
    usuario_id INT NOT NULL,
    resumo TEXT,
    data DATE NOT NULL DEFAULT CURRENT_DATE,
    CONSTRAINT fk_usuario_progresso FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE
);
