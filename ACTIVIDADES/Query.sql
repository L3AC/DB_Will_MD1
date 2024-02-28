DROP DATABASE IF EXISTS TechSolutionsB;
CREATE DATABASE TechSolutionsB;
USE TechSolutionsB;

CREATE TABLE tb_Empleados (
    ID_Empleado INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Cargo VARCHAR(50),
    Salario INT,
    Fecha_Inicio DATE
);
 
CREATE TABLE tb_Departamentos (
    ID_Departamento INT PRIMARY KEY,
    Nombre_Departamento VARCHAR(50)
);
 
CREATE TABLE tb_Proyectos (
    ID_Proyecto INT PRIMARY KEY,
    Nombre_Proyecto VARCHAR(50)
);
 
CREATE TABLE tb_Empleados_Departamentos (
    ID_Empleado_Departamentos INT PRIMARY KEY,
    ID_Empleado INT,
    ID_Departamento INT
);
 
CREATE TABLE tb_Empleados_Proyectos (
    ID_Empleado_Proyectos INT PRIMARY KEY,
    ID_Empleado INT,
    ID_Proyecto INT
);
 
ALTER TABLE tb_Empleados_Departamentos ADD CONSTRAINT fk_Emp_Dep
FOREIGN KEY (ID_Empleado) REFERENCES tb_Empleados (ID_Empleado)
on delete CASCADE;
 
ALTER TABLE tb_Empleados_Departamentos ADD CONSTRAINT fk_Emp_Dep2
FOREIGN KEY (ID_Departamento) REFERENCES tb_Departamentos (ID_Departamento)
on delete CASCADE;
 
ALTER TABLE tb_Empleados_Proyectos ADD CONSTRAINT fk_Emp_Pro
FOREIGN KEY (ID_Empleado) REFERENCES tb_Empleados (ID_Empleado)
on delete CASCADE;
 
ALTER TABLE tb_Empleados_Proyectos ADD CONSTRAINT fk_Emp_Pro2
FOREIGN KEY (ID_Proyecto) REFERENCES tb_Proyectos (ID_Proyecto)
on delete CASCADE;