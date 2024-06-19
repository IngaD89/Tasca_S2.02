SELECT apellido1, apellido2, nombre FROM persona ORDER BY apellido1 ASC, apellido2 ASC, nombre ASC;
SELECT * FROM persona WHERE tipo = 'alumno' AND telefono IS NULL;
SELECT * FROM persona WHERE YEAR(fecha_nacimiento) = 1999;
SELECT *  FROM persona WHERE tipo = 'profesor' AND telefono IS NULL AND SUBSTRING(nif, CHAR_LENGTH(nif), 1) = 'K';
SELECT * FROM asignatura WHERE cuatrimestre = 1 AND id_grado = 7 AND curso = 3;
SELECT persona.apellido1, persona.apellido2, persona.nombre, departamento.nombre AS nombre_departamento FROM profesor JOIN persona ON profesor.id_profesor = persona.id JOIN departamento ON profesor.id_departamento = departamento.id ORDER BY persona.apellido1 ASC, persona.apellido2 ASC, persona.nombre ASC, departamento.nombre ASC;
SELECT asignatura.nombre AS nombre_asignatura, curso_escolar.anyo_inicio, curso_escolar.anyo_fin FROM alumno_se_matricula_asignatura AS matricula JOIN persona ON persona.id = matricula.id_alumno JOIN asignatura ON asignatura.id = matricula.id_asignatura JOIN curso_escolar ON curso_escolar.id = matricula.id_curso_escolar WHERE persona.nif = '26902806M';
SELECT DISTINCT departamento.nombre AS departamento_nombre FROM departamento JOIN profesor ON profesor.id_departamento = departamento.id JOIN asignatura ON asignatura.id_profesor = profesor.id_profesor  JOIN grado ON asignatura.id_grado = grado.id WHERE grado.nombre = 'Grado en Ingeniería Informática (Plan 2015)';
SELECT * FROM persona JOIN alumno_se_matricula_asignatura matricula ON persona.id = matricula.id_alumno JOIN curso_escolar ce ON matricula.id_curso_escolar = ce.id WHERE ce.anyo_inicio = 2018 AND ce.anyo_fin = 2019;
