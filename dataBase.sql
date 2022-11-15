CREATE DATABASE baseDatosDiscord;

CREATE TABLE coders (
    id int AUTO_INCREMENT,
    nombre varchar(30),
    apellido varchar(30),
    nick_discord varchar(30) UNIQUE,
    PRIMARY KEY (id)
);



CREATE TABLE Ubicación (
    id int AUTO_INCREMENT,
    direccion varchar(50),
    ciudad varchar(255),
    PRIMARY KEY (id)
);


CREATE TABLE coders_lenguajes (
    id int AUTO_INCREMENT,
    coder_id int,
    lenguaje_id int,
    FOREIGN KEY (coder_id) REFERENCES coders(id),
    FOREIGN KEY (lenguaje_id) REFERENCES lenguajes_programacion(id),
    PRIMARY KEY (id)
);




INSERT INTO lenguajes_programacion
    (lenguaje, front_o_back, es_framework) VALUES
    ('HTML', 'Frontend', 0),
    ('CSS', 'Frontend', 0),
    ('Javascript', 'Frontend', 0),
    ('Bootstrap', 'Frontend', 1),
    ('Node JS', 'Backend', 0);

INSERT INTO programas_disenio
    (programa) VALUES
    ('Figma'),
    ('Adobe XD');

