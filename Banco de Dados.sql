CREATE TABLE gerenciamentoPerfil(
idgerenciamentoPerfil INT AUTO_INCREMENT PRIMARY KEY,
email VARCHAR(100),
confirmarEmail VARCHAR(150)
);

CREATE TABLE Senha(
idalterarSenha INT AUTO_INCREMENT PRIMARY KEY,
senhaAtual VARCHAR(20),
novaSenha VARCHAR (20),
confimarNovaSenha VARCHAR(20)
);

CREATE TABLE telefone(
idTelefone INT AUTO_INCREMENT PRIMARY KEY,
antigo CHAR(11),
novo CHAR (11)
) 







