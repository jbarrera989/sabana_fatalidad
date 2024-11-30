CREATE DATABASE minera_db;
USE minera_db;
-- Crear tabla RESOLUCION_MINERAL primero (tabla referenciada)
CREATE TABLE RESOLUCION_MINERAL (
    No_Resolución INT AUTO_INCREMENT PRIMARY KEY,
    Fecha_Resolución DATE,
    Fecha_Inicio DATE,
    Fecha_Fin DATE,
    Mineral VARCHAR(45),
    Precio_mineral DECIMAL(10, 2),
    Unidad VARCHAR(10)
);

-- Crear tabla REPORTE_ACCIDENTE (tabla que contiene la clave foránea)
CREATE TABLE REPORTE_ACCIDENTE (
    Consecutivo_de_accidente INT AUTO_INCREMENT PRIMARY KEY,
    Fecha_del_accidente DATE,
    Fecha_de_vencimiento_Mortales DATE,
    Fecha_de_vencimiento_Catastróficos DATE,
    Hora_del_accidente TIME,
    Fecha_del_reporte DATE,
    Hora_del_reporte TIME,
    Nombre_reporta VARCHAR(45),
    Org_reporta VARCHAR(45),
    Cargo_reporta VARCHAR(45),
    Mineral_explotado VARCHAR(45),
    Departamento VARCHAR(45),
    Municipio VARCHAR(45),
    Vereda VARCHAR(45),
    Mina_accidente VARCHAR(45),
    Codigo_expediente VARCHAR(45),
    Modalidad VARCHAR(45),
    Nombre_titular VARCHAR(45),
    Estado_juridico_labores VARCHAR(45),
    Metodo_explotacion VARCHAR(45),
    Tipo_accidente VARCHAR(45),
    Descripcion_accidente VARCHAR(200),
    Personas_involucradas INT,
    Emergencias INT,
    Afectados_sin_lesiones INT,
    Heridos INT,
    Emergencias_sin_fallecidos INT,
    Fallecidos INT,
    Clase_accidente VARCHAR(45),
    Accidente_ANM VARCHAR(2),
    Grupo_seguridad VARCHAR(45),
    Medidas_cierre_emergencia VARCHAR(45),
    Inspeccion_posterior VARCHAR(2),
    Fecha_inspeccion DATE,
    Medidas_post_inspeccion VARCHAR(200),
    Observaciones VARCHAR(200),
    ID_Resolución INT,
    FOREIGN KEY (ID_Resolución) REFERENCES RESOLUCION_MINERAL(No_Resolución)
        ON DELETE SET NULL ON UPDATE CASCADE
);

-- Crear tabla MINERO_ACCIDENTADO (relacionada con REPORTE_ACCIDENTE)
CREATE TABLE MINERO_ACCIDENTADO (
    ID_Minero INT AUTO_INCREMENT PRIMARY KEY,
    Consecutivo_de_accidente INT,
    Nombre_minero VARCHAR(100),
    Edad INT,
    Genero VARCHAR(10),
    Cargo VARCHAR(45),
    Estado_salud VARCHAR(100),
    Observaciones VARCHAR(200),
    FOREIGN KEY (Consecutivo_de_accidente) REFERENCES REPORTE_ACCIDENTE(Consecutivo_de_accidente)
        ON DELETE CASCADE ON UPDATE CASCADE
);