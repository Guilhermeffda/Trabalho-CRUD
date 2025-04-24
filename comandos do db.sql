

CREATE DATABASE IF NOT EXISTS site_web;
USE site_web;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT CHECK (idade BETWEEN 18 AND 100),
    cpf VARCHAR(11) NULL,
    email VARCHAR(100) NOT NULL,
    senha VARCHAR(50) NOT NULL
);

INSERT INTO usuarios (nome, idade, cpf, email, senha) VALUES 
('Collier Group', 35, '52998224725', 'Savannah_Moore33@gmail.com', 'Fyy_fzzJjsLGg_B'),
('Cormier and Sons', 42, '45317828890', 'Willa.Hansen@hotmail.com', 'HnNyYHNw_iLzXBy'),
('Shanahan, Schmeler and Walsh', 28, '78452963107', 'Orie_Konopelski39@yahoo.com', '2RelSiO9EpJLX1V'),
('Mayer, Thompson and Pfannerstill', 51, '93647152834', 'Daniela.Jerde37@yahoo.com', 'wg4_iCApirgPRvr'),
('Veum LLC', 39, '21589346752', 'Duncan.Wiegand60@gmail.com', 'UfHALM2YmlNZsLP'),
('Bailey, Fahey and Goldner', 47, '69832415709', 'Javier_Ullrich14@yahoo.com', 'triYgTnYOlv7BDn'),
('Anderson - Greenfelder', 33, '32758694103', 'Dayton_Moen80@hotmail.com', 'l7IXwN_YlND7xB8'),
('Keeling LLC', 29, '86142973568', 'Alvena_Deckow@gmail.com', 'YLgArW70wz_D_11'),
('Stracke Group', 45, '49382715604', 'Robyn85@hotmail.com', 'ZZ7vGvKENMFJ5vG'),
('Hackett, Labadie and Ondricka', 31, '76519284357', 'Winfield_Hyatt@yahoo.com', '8ruVWG5EY3qrx3J');
