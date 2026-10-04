# TP08-BasedeDatos
 TP08: Especificación de Requisitos de Software (SRS) - My Animated Inventory

Asignatura: Base de Datos 1  
Estudiante: Keila Ingaruca  
Proyecto: My Animated Inventory 

1. Descripción del Proyecto
My Animated Inventory es un proyecto de aplicación web responsive diseñado para la gestión, catalogación y seguimiento personal de obras animadas (series, películas, cortometrajes, OVAs, entre otros). 
El sistema combina un catálogo general con fichas técnicas detalladas (directores, personajes, estudios de animación, géneros, temporadas y medios de visualización) con un módulo multicuenta donde cada usuario registrado puede crear su propia lista personal, definir el estado de visualización (*Visto*, *Viendo*, *Pendiente*, *Abandonado*), registrar episodios vistos y asignar valoraciones individuales.

 2. Modificaciones e Incremento en la Base de Datos (`registro_animacion`)
Para dar soporte a la especificación de requisitos (SRS) y convertir el sistema en una plataforma multicuenta completa, se extendió la base de datos relacional MySQL agregando dos nuevas tablas:
Usuario: Almacena la información de autenticación y perfil de cada usuario registrado.
usuario_obra: Tabla intermedia de relación M:N entre los usuarios y las obras del catálogo para gestionar los inventarios personales.

3. Declaración de Uso de Inteligencia Artificial Generativa

Herramienta	Propósito	Prompt Utilizado	Ajuste/Edición	Aprendizaje
Gemini	Estructurar el documento SRS de acuerdo a la norma ISO/IEEE.	Ayúdame a redactar las secciones de un SRS para un sistema de catálogo y registro de obras animadas llamado My Animated Inventory"	Se adaptaron las secciones, casos de uso y criterios de aceptación al dominio del proyecto.	Aprendí a formalizar requisitos usando metodología MoSCoW, sintaxis EARS y User Stories.
Gemini	Diseñar el script SQL para extender el modelo relacional multicuenta.	“Dame el código SQL para añadir las tablas usuario y usuario_obra a mi base de datos registro_animacion”	Se ajustaron los nombres de las tablas sin prefijos para coincidir con el esquema relacional en phpMyAdmin.	Entendí la aplicación de claves primarias compuestas y restricciones `FOREIGN KEY` con `ON DELETE CASCADE`.
