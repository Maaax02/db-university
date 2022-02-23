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

-- Selezionare tutti gli studenti iscritti al corso di laurea in economia

SELECT * 
FROM `degrees`
JOIN `students`
	ON `degrees`.`id`= `students`.`degree_id`
   WHERE `degrees`.`name` LIKE '% economia'

-- Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze

SELECT * 
FROM `departments`
JOIN `degrees`
	ON `departments`.`id` = `degrees`.`department_id`
WHERE `departments`.`name` = 'Dipartimento di Neuroscienze'

-- Selezionare tutti i corsi in cui insegna Fulvio Amato

SELECT * 
FROM `teachers`
JOIN `course_teacher`
	ON `teachers`.`id` = `course_teacher`.`teacher_id`
WHERE `teachers`.`id` = 44

-- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il
-- relativo dipartimento, in ordine alfabetico per cognome e nome

SELECT * 
FROM `departments`
JOIN `degrees`
	ON `departments`.`id` = `degrees`.`department_id`
JOIN `students`
	ON `degrees`.`id` = `students`.`degree_id`
    ORDER BY `students`.`name`

-- Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti

SELECT * 
FROM `degrees`
JOIN `course_teacher`
	ON `degrees`.`id` = `course_teacher`.`course_id` AND `teacher_id`

-- Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)

??



-- Contare quanti iscritti ci sono stati ogni anno



-- Contare gli insegnanti che hanno l'ufficio nello stesso edificio

