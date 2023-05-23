CREATE TABLE provas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    curso VARCHAR(30) NOT NULL,
    disciplina_id INTEGER NOT NULL, 
    professor_id INTEGER NOT NULL, 
    tipoavaliacao_id INTEGER NOT NULL, 
    semestre_id INTEGER,
    dtentrega_id INTEGER NOT NULL,
    dtretirada_id INTEGER NOT NULL
    FOREIGN KEY(tipoavaliacao_id) REFERENCES tipoavaliacoes(id),
    FOREIGN KEY(dtentrega_id) REFERENCES dtentregas(id),
    FOREIGN KEY(dtretirada_id) REFERENCES dtretiradas(id),
    FOREIGN KEY(disciplina_id) REFERENCES disciplinas(id)
);




CREATE TABLE tipoavaliacoes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tipo VARCHAR(30) NOT NULL
);

CREATE TABLE dtentregas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    dt VARCHAR(30) NOT NULL

);


CREATE TABLE dtretiradas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    dt VARCHAR(30) NOT NULL
);



CREATE TABLE provas_disciplinas(
    prova_id INTEGER,
    disciplina_id INTEGER,
    PRIMARY KEY(prova_id, disciplina_id)
    FOREIGN KEY(prova_id) REFERENCES provas(id),
    FOREIGN KEY(disciplina_id) REFERENCES disciplinas(id)
);



CREATE TABLE disciplinas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(30) NOT NULL,
    professor_id CHAR(30),
    FOREIGN KEY(professor_id) REFERENCES professores(id)
);

CREATE TABLE professores(
    id CHAR(30) PRIMARY KEY,
    nome VARCHAR(30) NOT NULL
);