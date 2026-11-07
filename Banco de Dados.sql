CREATE TABLE tipoUsuario(
idtipoUsuario INT AUTO_INCREMENT PRIMARY KEY,
descricao VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Usuarios(
idUsuarios INT AUTO_INCREMENT PRIMARY KEY,
idtipoUsuario INT NOT NULL,
nomeCompleto VARCHAR (150) NOT NULL,
email VARCHAR(150) UNIQUE NOT NULL,
cpf CHAR(11) UNIQUE NOT NULL,
dataNascimento DATE NOT NULL,
celular CHAR(11) UNIQUE NOT NULL,
senha_hash VARCHAR(250) NOT NULL,
fotoPerfil VARCHAR(250),
ativo BOOLEAN DEFAULT TRUE,
dataCadastro DATETIME DEFAULT CURRENT_TIMESTAMP,
CONSTRAINT fk_Usuarios_idtipoUsuario FOREIGN KEY (idtipoUsuario)
REFERENCES  tipoUsuario (idtipoUsuario)
);

ALTER TABLE Usuarios
RENAME COLUMN idUsuarios TO idUsuario;

ALTER TABLE Usuarios
RENAME COLUMN idUsuarios TO idUsuario;

ALTER TABLE usuarios
CHANGE COLUMN idUsuarios idUsuario INT(11) NOT NULL AUTO_INCREMENT;

SHOW COLUMNS from usuarios;

CREATE TABLE Cursos(
idCurso INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(150) NOT NULL,
descricao VARCHAR (150),
cargaHoraria DECIMAL (5,2),
ativo BOOLEAN DEFAULT TRUE,
dataCriacao DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Matricula(
idMatricula INT AUTO_INCREMENT PRIMARY KEY,
idCurso INT NOT NULL,
idUsuario INT NOT NULL,
dataMatricula DATETIME DEFAULT CURRENT_TIMESTAMP,
statusMatricula ENUM ('Ativa', 'Concluida', 'Cancelada') DEFAULT 'Ativa',
CONSTRAINT fk_Matricula_idCurso FOREIGN KEY (idCurso)
REFERENCES Cursos (idCurso),
CONSTRAINT fk_Matricula_idUsuario FOREIGN KEY (idUsuario)
REFERENCES Usuarios (idUsuarios)
);

CREATE TABLE solicitacoesCancelamento(
idSolicitacoesCancelamento INT AUTO_INCREMENT PRIMARY KEY,
idUsuarios
);






