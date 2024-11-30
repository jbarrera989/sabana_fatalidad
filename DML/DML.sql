-- Agregar datos a la tabla RESOLUCION_MINERAL
INSERT INTO RESOLUCION_MINERAL (Fecha_Resolución, Fecha_Inicio, Fecha_Fin, Mineral, Precio_mineral, Unidad)
VALUES 
('2024-01-15', '2024-01-01', '2024-12-31', 'Oro', 1500.00, 'USD/onza'),
('2024-02-10', '2024-02-01', '2024-11-30', 'Plata', 25.50, 'USD/onza'),
('2024-03-05', '2024-03-01', '2024-10-31', 'Cobre', 4.20, 'USD/libra');

-- Agregar datos a la tabla REPORTE_ACCIDENTE
INSERT INTO REPORTE_ACCIDENTE (
    Fecha_del_accidente, Fecha_de_vencimiento_Mortales, Fecha_de_vencimiento_Catastróficos,
    Hora_del_accidente, Fecha_del_reporte, Hora_del_reporte, Nombre_reporta, Org_reporta,
    Cargo_reporta, Mineral_explotado, Departamento, Municipio, Vereda, Mina_accidente,
    Codigo_expediente, Modalidad, Nombre_titular, Estado_juridico_labores, Metodo_explotacion,
    Tipo_accidente, Descripcion_accidente, Personas_involucradas, Emergencias, Afectados_sin_lesiones,
    Heridos, Emergencias_sin_fallecidos, Fallecidos, Clase_accidente, Accidente_ANM, Grupo_seguridad,
    Medidas_cierre_emergencia, Inspeccion_posterior, Fecha_inspeccion, Medidas_post_inspeccion, Observaciones, ID_Resolución
)
VALUES 
('2024-04-12', '2024-05-12', '2024-06-12', '10:30:00', '2024-04-13', '11:00:00', 
 'Juan Pérez', 'Empresa Minera S.A.', 'Supervisor', 'Oro', 'Antioquia', 'Medellín', 
 'Vereda Santa Clara', 'Mina La Esperanza', 'EXP123', 'Subterránea', 'Compañía Minera', 
 'Legal', 'Corte y relleno', 'Derrumbe', 'Derrumbe en galería principal', 10, 1, 5, 
 3, 1, 1, 'Accidente grave', 'SI', 'Grupo Salvamento Medellín', 'Se retiraron escombros', 
 'SI', '2024-04-15', 'Revisar soporte estructural', 'Requiere inspección adicional', 1),

('2024-04-20', '2024-05-20', '2024-06-20', '14:15:00', '2024-04-21', '15:00:00', 
 'María López', 'Empresa Minera Andes', 'Ingeniera', 'Plata', 'Cundinamarca', 'Zipaquirá', 
 'Vereda Las Flores', 'Mina San José', 'EXP456', 'Subterránea', 'Compañía Minera', 
 'Legal', 'Tajo abierto', 'Explosión', 'Explosión por manejo de dinamita', 15, 2, 4, 
 6, 1, 2, 'Accidente fatal', 'NO', 'Grupo Salvamento Bogotá', 'Control de explosivos', 
 'NO', NULL, 'Prohibición de actividades peligrosas', 'Sin observaciones', 2);

-- Agregar datos a la tabla MINERO_ACCIDENTADO
INSERT INTO MINERO_ACCIDENTADO (Consecutivo_de_accidente, Nombre_minero, Edad, Genero, Cargo, Estado_salud, Observaciones)
VALUES 
(1, 'Carlos Martínez', 35, 'Masculino', 'Operador de maquinaria', 'Herido leve', 'Requiere reposo de 15 días'),
(1, 'Lucía Ramírez', 28, 'Femenino', 'Técnica en perforación', 'Herido grave', 'Fractura en pierna derecha'),
(2, 'Luis Fernández', 40, 'Masculino', 'Supervisor', 'Fallecido', 'Accidente fatal por explosión');
