-- Selezione degli studenti nati nel 1990

SELECT * 
FROM `students`
WHERE YEAR(`date_of_birth`) = 1990;

-- Selezione dei corsi che valgono più di 10 crediti

SELECT * 
FROM `courses`
WHERE `cfu` > 10;

-- Selezione degli studenti che hanno più di 30 anni

SELECT * 
FROM `students`
WHERE `date_of_birth` < '1992-01-01';

-- Selezione di tutti i corsi del primo semestre sel primo anno di un qualsiasi corso di laurea

SELECT * 
FROM `courses`
WHERE `period` = 'I semestre'
	AND `year` = '1';

-- Selezione di tutti gli appelli d'esame che avvengono dopo le 14:00 del 20/06/2020

SELECT * 
FROM `exams`
WHERE `hour` > '14:00:00'
	AND `date` = '2020/06/20';

-- Selezione di tutti i corsi di laurea magistrale

SELECT * 
FROM `degrees`
WHERE `level` = 'magistrale';

-- Numero di dipartimenti dell'università

SELECT COUNT(`id`) 
FROM `departments`

-- Numero di insegnanti senza un numero di telefono

SELECT * 
FROM `teachers`
WHERE `phone` IS NULL;
