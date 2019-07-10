![Plenco](https://cdn.plen.co/assets/images/plencovich.png)

## Sistema de Gestión de Pasajes

### Instalación

1. Clonar Repo `https://github.com/plencovich/symfony-4-demo-backend`

2. Trabajar en la rama `develop`: `git checkout develop`

3. Ejecutar `composer install` para instalar los componentes

4. Renombrar el arhivo `.env.example` por `.env` y configurar los datos de conexion a base de datos y otras variables necesarias.

5. Crear base de datos `php bin/console doctrine:database:create`

6. Importar archivo .sql `php bin/console doctrine:database:import resources/sql/combis_db.sql`

7. Instalar las dependencias con `yarn install`

#### Ejecutar en localhost

Correr el comando `php bin/console server:run`
