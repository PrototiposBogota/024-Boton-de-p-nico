---Script creacion base de datos

-- Database: app_btn_panico

-- DROP DATABASE app_btn_panico;

CREATE DATABASE app_btn_panico
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'Spanish_Colombia.1252'
       LC_CTYPE = 'Spanish_Colombia.1252'
       CONNECTION LIMIT = -1;

COMMENT ON DATABASE app_btn_panico
  IS 'Base de datos para la aplicacion movil boton de panico.';
