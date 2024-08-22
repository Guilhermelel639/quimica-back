


create table Usuario(
 id int identity primary key,
 email varchar(60) NOT NULL UNIQUE,
 nome varchar(30) NOT NULL,
 senha varchar(15) NOT NULL
)

insert into Usuario (email, nome, senha)
VALUES	('@gmail', 'cleber', '123')

create table questao(
 id int identity primary key,
 enunciado varchar(500) NOT NULL,
 alternativas varchar(255) NOT NULL
)

create table Grande_Area(
 id int identity primary key,
tipo varchar(20) not null unique
)

create table Materia(
 id int identity primary key,
tipo varchar(20) not null unique
)

create table Nivel(
 id int identity primary key,
 nivel1 varchar(255) NOT NULL,
 nivel2 varchar(255) NOT NULL,
 nivel3 varchar(255) NOT NULL
)

create table Teste(
 id int identity primary key,
 Nome varchar(50) NOT NULL
)

create table Q_T(
idquestao int,
idteste int,
FOREIGN KEY (idteste) REFERENCES Teste(id),
FOREIGN KEY (idquestao) REFERENCES Questao(id)	
)

create table Q_N(
idquestao int,
idnivel int,
FOREIGN KEY (idnivel) REFERENCES Nivel(id),
FOREIGN KEY (idquestao) REFERENCES Questao(id)	
)

create table Q_A(
idquestao int,
idgrande_area int,
FOREIGN KEY (idgrande_area) REFERENCES Grande_Area(id),
FOREIGN KEY (idquestao) REFERENCES Questao(id)	
)

create table Q_M(
idquestao int,
idmateria int,
FOREIGN KEY (idmateria) REFERENCES Materia(id),
FOREIGN KEY (idquestao) REFERENCES Questao(id)	
)