
CREATE SEQUENCE dm_data_sk_data_seq;

CREATE TABLE dm_data (
                sk_data INTEGER NOT NULL DEFAULT nextval('dm_data_sk_data_seq'),
                nk_data DATE NOT NULL,
                dia INTEGER NOT NULL,
                semana VARCHAR(10) NOT NULL,
                mes INTEGER NOT NULL,
                ano INTEGER NOT NULL,
                CONSTRAINT sk_data PRIMARY KEY (sk_data)
);


ALTER SEQUENCE dm_data_sk_data_seq OWNED BY dm_data.sk_data;

CREATE SEQUENCE dm_avaliacao_sk_avaliacao_seq;

CREATE TABLE dm_avaliacao (
                sk_avaliacao INTEGER NOT NULL DEFAULT nextval('dm_avaliacao_sk_avaliacao_seq'),
                nk_avaliacao INTEGER NOT NULL,
                nota VARCHAR(50) NOT NULL,
                CONSTRAINT sk_avaliacao PRIMARY KEY (sk_avaliacao)
);


ALTER SEQUENCE dm_avaliacao_sk_avaliacao_seq OWNED BY dm_avaliacao.sk_avaliacao;

CREATE SEQUENCE dm_cliente_sk_cliente_seq;

CREATE SEQUENCE dm_cliente_nk_cliente_seq;

CREATE TABLE dm_cliente (
                sk_cliente INTEGER NOT NULL DEFAULT nextval('dm_cliente_sk_cliente_seq'),
                nk_cliente INTEGER NOT NULL DEFAULT nextval('dm_cliente_nk_cliente_seq'),
                nome VARCHAR(50) NOT NULL,
                idade INTEGER NOT NULL,
                sexo VARCHAR(50) NOT NULL,
                bairro VARCHAR(50) NOT NULL,
                CONSTRAINT sk_cliente PRIMARY KEY (sk_cliente)
);


ALTER SEQUENCE dm_cliente_sk_cliente_seq OWNED BY dm_cliente.sk_cliente;

ALTER SEQUENCE dm_cliente_nk_cliente_seq OWNED BY dm_cliente.nk_cliente;

CREATE SEQUENCE dm_livro_sk_livro_seq;

CREATE TABLE dm_livro (
                sk_livro INTEGER NOT NULL DEFAULT nextval('dm_livro_sk_livro_seq'),
                nk_livro INTEGER NOT NULL,
                genero VARCHAR(8) NOT NULL,
                titulo VARCHAR(25) NOT NULL,
                valor_compra INTEGER NOT NULL,
                valor_venda INTEGER NOT NULL,
                CONSTRAINT sk_livro PRIMARY KEY (sk_livro)
);


ALTER SEQUENCE dm_livro_sk_livro_seq OWNED BY dm_livro.sk_livro;

CREATE TABLE ft_venda (
                sk_livro INTEGER NOT NULL,
                sk_cliente INTEGER NOT NULL,
                sk_avaliacao INTEGER NOT NULL,
                sk_data INTEGER NOT NULL,
                dd_id_venda INTEGER NOT NULL,
                dd_quantidade INTEGER NOT NULL
);


ALTER TABLE ft_venda ADD CONSTRAINT data_venda_fk
FOREIGN KEY (sk_data)
REFERENCES dm_data (sk_data)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE ft_venda ADD CONSTRAINT avaliacao_venda_fk
FOREIGN KEY (sk_avaliacao)
REFERENCES dm_avaliacao (sk_avaliacao)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE ft_venda ADD CONSTRAINT dm_cliente_venda_fk
FOREIGN KEY (sk_cliente)
REFERENCES dm_cliente (sk_cliente)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE ft_venda ADD CONSTRAINT dm_livro_venda_fk
FOREIGN KEY (sk_livro)
REFERENCES dm_livro (sk_livro)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
