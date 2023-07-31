CREATE TABLE clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    email VARCHAR(100)
);


INSERT INTO clientes (id, nome, idade, email)
VALUES (1, 'João', 30, 'joao@example.com');

INSERT INTO clientes (id, nome, idade, email)
VALUES (2, 'Maria', 25, 'maria@example.com');


SELECT * FROM clientes;


SELECT * FROM clientes WHERE idade > 25;


UPDATE clientes
SET nome = 'Pedro', idade = 35
WHERE id = 1;

DELETE FROM clientes WHERE id = 2;

CREATE TABLE pedidos (
    id INT PRIMARY KEY,
    cliente_id INT,
    valor DECIMAL(10,2),
    data_pedido DATE,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);


SELECT clientes.nome, pedidos.valor, pedidos.data_pedido
FROM clientes
INNER JOIN pedidos ON clientes.id = pedidos.cliente_id;