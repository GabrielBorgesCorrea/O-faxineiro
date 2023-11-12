drop database if exists biblioteca;
create database biblioteca;
use biblioteca;

drop database if exists Livros;
CREATE TABLE Livros (
    livros_id INT(11) PRIMARY KEY auto_increment,
    titulo VARCHAR(255),
    autor VARCHAR(255),
    editora VARCHAR(255),
    ano_publicacao INT,
    isbn VARCHAR(17)
);

drop table if exists Autores;
CREATE TABLE Autores (
	autor_id INT PRIMARY KEY auto_increment,
    autor_nome VARCHAR(35) not null
);

drop table if exists Editoras;
CREATE TABLE Editoras (
	editora_id INT PRIMARY KEY auto_increment,
    editora_nome VARCHAR(35) not null
);

ALTER TABLE Livros DROP COLUMN autor;
ALTER TABLE Livros DROP COLUMN editora;

ALTER TABLE Livros ADD autor_id INT;
ALTER TABLE Livros ADD editora_id INT;

INSERT INTO Autores ( autor_nome ) VALUES 
('John Green'),
('J.K. Rowling'),
('J.R.R. Tolkien'),
('J.D. Salinger'),
('George Orwell'),
('Rick Riordan'),
('João Guimarães Rosa'),
('Machado de Assis'),
('Graciliano Ramos'),
('Machado de Assis'),
('Aluísio Azevedo'),
('Aluísio Azevedo'),
('Machado de Assis'),
('Mário de Andrade');

INSERT INTO Editoras ( editora_nome ) VALUES 
('Intrínseca'),
('Rocco'),
('Martins Fontes'),
('Little, Brown and Company'),
('Companhia Editora Nacional'),
('Intrínseca'),
('Nova Fronteira'),
('Companhia das Letras'),
('Companhia Editora Nacional'),
('Martin Claret'),
('Penguin Companhia'),
('Penguin Companhia'),
('Companhia Editora Nacional');

INSERT INTO Livros (titulo,ano_publicacao, isbn) VALUES 
('A Culpa é das Estrelas', 2012, '978-85-8057-346-6'),
('Harry Potter e a Pedra Filosofal', 1997, '9788532511010'),
('O Senhor dos Anéis: A Sociedade do Anel', 1954, '9788533603149'),
('The Catcher in the Rye', '1951', '9780316769488'),
('1984', 1949, '978-85-221-0616-9'),
('Percy Jackson e o Ladrão de Raios', 2005, '9788598078355');

INSERT INTO Livros (titulo,ano_publicacao, isbn) VALUES 
('Grande Sertão: Veredas', 1956, '978-85-209-2325-1'),
('Memórias Póstumas de Brás Cubas', 1881, '9788535910663'),
('Vidas Secas', 1938, '9788572326972'),
('O Alienista', 1882, '9788572327429'),
('O Cortiço', 1890, '9788579027048'),
('Dom Casmurro', 1899, '9788583862093'),
('Macunaíma', 1928, '9788503012302');