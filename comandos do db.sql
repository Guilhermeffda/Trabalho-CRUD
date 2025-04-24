
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT CHECK (idade BETWEEN 18 AND 100),
    cpf VARCHAR(11) NULL,
    email VARCHAR(100) NOT NULL,
    senha VARCHAR(50) NOT NULL
);

INSERT INTO usuarios (nome, idade, cpf, email, senha) VALUES 
('Collier Group', '35', NULL, 'Savannah_Moore33@gmail.com', 'Fyy_fzzJjsLGg_B'),
('Cormier and Sons', '42', NULL, 'Willa.Hansen@hotmail.com', 'HnNyYHNw_iLzXBy'),
('Shanahan, Schmeler and Walsh', '28', NULL, 'Orie_Konopelski39@yahoo.com', '2RelSiO9EpJLX1V'),
('Mayer, Thompson and Pfannerstill', '51', NULL, 'Daniela.Jerde37@yahoo.com', 'wg4_iCApirgPRvr'),
('Veum LLC', '39', NULL, 'Duncan.Wiegand60@gmail.com', 'UfHALM2YmlNZsLP'),
('Bailey, Fahey and Goldner', '47', NULL, 'Javier_Ullrich14@yahoo.com', 'triYgTnYOlv7BDn'),
('Anderson - Greenfelder', '33', NULL, 'Dayton_Moen80@hotmail.com', 'l7IXwN_YlND7xB8'),
('Keeling LLC', '29', NULL, 'Alvena_Deckow@gmail.com', 'YLgArW70wz_D_11'),
('Stracke Group', '45', NULL, 'Robyn85@hotmail.com', 'ZZ7vGvKENMFJ5vG'),
('Hackett, Labadie and Ondricka', '31', NULL, 'Winfield_Hyatt@yahoo.com', '8ruVWG5EY3qrx3J');


UPDATE usuarios SET cpf = '52998224725' WHERE id = 1;
UPDATE usuarios SET cpf = '45317828890' WHERE id = 2;
UPDATE usuarios SET cpf = '78452963107' WHERE id = 3;
UPDATE usuarios SET cpf = '93647152834' WHERE id = 4;
UPDATE usuarios SET cpf = '21589346752' WHERE id = 5;
UPDATE usuarios SET cpf = '69832415709' WHERE id = 6;
UPDATE usuarios SET cpf = '32758694103' WHERE id = 7;
UPDATE usuarios SET cpf = '86142973568' WHERE id = 8;
UPDATE usuarios SET cpf = '49382715604' WHERE id = 9;
UPDATE usuarios SET cpf = '76519284357' WHERE id = 10;


