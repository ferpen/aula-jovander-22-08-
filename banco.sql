CREATE DATABASE IF NOT EXISTS ex02;

USE ex02;

-- Recria a Tabela Clientes para garantir que esteja limpa
DROP TABLE IF EXISTS Clientes;

CREATE TABLE Clientes (
    Id_Cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Endereco VARCHAR(255),
    Cidade VARCHAR(100),
    Telefone VARCHAR(20)
);

INSERT INTO Clientes (Nome, Endereco, Cidade, Telefone)
VALUES 
('Dr. Arin Kade', 'Rua das Nebulosas, 7', 'Nova Aethel', '+55 11 98765-4321'),
('Lyra Vex', 'Avenida dos Cometas, 88', 'Cidade de Titã', '+55 21 91234-5678'),
('Jax Orion', 'Alameda das Estrelas, 101', 'Porto Lunar', '+55 31 95555-8888'),
('Zia Nereid', 'Travessa Quasar, 42', 'Estação Kepler', '+55 71 94444-7777'),
('Kaelen Roric', 'Praça da Singularidade, 1', 'Oasis Marciano', '+55 81 93333-6666'),
('Seraphina Altair', 'Caminho de Andrômeda, 314', 'Nova Aethel', '+55 11 92222-5555'),
('Ronan Cygnus', 'Vila das Plêiades, 27', 'Porto Lunar', '+55 31 91111-4444'),
('Elara Solstice', 'Estrada da Via Láctea, 999', 'Cidade de Titã', '+55 21 99999-3333'),
('Vespera Corvus', 'Beco do Buraco Negro, 0', 'Estação Kepler', '+55 71 98888-2222'),
('Orion Drake', 'Avenida Supernova, 2049', 'Oasis Marciano', '+55 81 97777-1111'),
('Zephyr Valerius', 'Alameda dos Asteroides, 512', 'Colônia de Ganimedes', '+55 62 96543-2109'),
('Cassian Jaxx', 'Praça do Vórtice, 369', 'Metrópole de Cygnus', '+55 41 98887-6543'),
('Lyra Silvana', 'Caminho do Cometa Halley, 76', 'Cidade de Titã', '+55 21 97776-5432'),
('Nix Pollux', 'Travessa da Matéria Escura, 13', 'Estação Kepler', '+55 71 96665-4321'),
('Roric Castor', 'Avenida Centauri, 789', 'Nova Aethel', '+55 11 95554-3210'),
('Astraea Vega', 'Rua da Constelação, 8', 'Porto Lunar', '+55 31 94443-2109'),
('Helios Phobos', 'Alameda Solar, 33', 'Oasis Marciano', '+55 81 93332-1098'),
('Selene Deimos', 'Praça do Eclipse, 16', 'Colônia de Ganimedes', '+55 62 92221-0987'),
('Triton Oberon', 'Avenida Órbita, 123', 'Metrópole de Cygnus', '+55 41 91110-9876'),
('Galatea Umbriel', 'Caminho do Pulsar, 456', 'Nova Aethel', '+55 11 99998-7654'),
('Kaelen Nova', 'Rua da Hipernova, 10', 'Cidade de Titã', '+55 21 98887-6543'),
('Cyrus Drake', 'Alameda do Zênite, 111', 'Porto Lunar', '+55 31 97776-5432'),
('Evander Kai', 'Travessa Interestelar, 222', 'Estação Kepler', '+55 71 96665-4321'),
('Leda Callisto', 'Praça da Gravidade, 333', 'Oasis Marciano', '+55 81 95554-3210'),
('Phoebe Rhea', 'Avenida Cosmos, 444', 'Colônia de Ganimedes', '+55 62 94443-2109'),
('Atlas Hyperion', 'Caminho do Infinito, 555', 'Metrópole de Cygnus', '+55 41 93332-1098'),
('Calypso Iapetus', 'Rua do Big Bang, 666', 'Nova Aethel', '+55 11 92221-0987'),
('Pandora Mimas', 'Alameda da Nebulosa de Órion, 777', 'Cidade de Titã', '+55 21 91110-9876'),
('Janus Tethys', 'Travessa da Antimatéria, 888', 'Porto Lunar', '+55 31 99998-7654'),
('Helene Dione', 'Praça do Multiverso, 999', 'Estação Kepler', '+55 71 98887-6543');