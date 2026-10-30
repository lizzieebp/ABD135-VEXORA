# VEXORA

<p align="center">
  <img src="./logo-vexora.png" alt="Logo oficial de VEXORA" width="250">
</p>

<h1 align="center">VEXORA</h1>

<p align="center">
  <strong>Plataforma de Comercio Electrónico</strong><br>
  <em>Innovación digital, experiencias sin límites.</em>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Estado-En%20desarrollo-8B5CF6?style=for-the-badge" alt="Estado del proyecto: En desarrollo">
  <img src="https://img.shields.io/badge/Base%20de%20datos-PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white" alt="Base de datos PostgreSQL">
  <img src="https://img.shields.io/badge/Control%20de%20versiones-Git-F05032?style=for-the-badge&logo=git&logoColor=white" alt="Control de versiones Git">
</p>

---

## Descripción

**VEXORA** es una plataforma de comercio electrónico desarrollada como proyecto académico para la carrera de Ingeniería en Desarrollo de Software de la Universidad de El Salvador.

El proyecto busca ofrecer una experiencia digital intuitiva y organizada para la exploración de productos y la gestión de compras, aplicando principios de programación, diseño de software y desarrollo de aplicaciones.

La solución contempla el uso de **PostgreSQL** como sistema de gestión de bases de datos para organizar y almacenar la información necesaria para el funcionamiento de la plataforma.

Asimismo, el equipo utiliza Git y GitHub para administrar el código fuente, realizar un seguimiento de los cambios y facilitar el trabajo colaborativo mediante ramas independientes.

---

## Tecnologías utilizadas

<p align="center">
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/postgresql/postgresql-original.svg" width="65" alt="PostgreSQL" title="PostgreSQL"/>
  &nbsp;&nbsp;&nbsp;
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-original.svg" width="65" alt="Git" title="Git"/>
  &nbsp;&nbsp;&nbsp;
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg" width="65" alt="GitHub" title="GitHub"/>
</p>

| Tecnología | Descripción |
|---|---|
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/postgresql/postgresql-original.svg" width="24" alt="PostgreSQL"/> **PostgreSQL** | Sistema de gestión de bases de datos relacional para almacenar y administrar la información del sistema. |
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-original.svg" width="24" alt="Git"/> **Git** | Sistema de control de versiones para registrar y administrar los cambios en el código fuente. |
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg" width="24" alt="GitHub"/> **GitHub** | Plataforma para alojar el repositorio y facilitar la colaboración entre los integrantes. |

---

## Funciones principales

VEXORA contempla el desarrollo de funcionalidades orientadas a la gestión de un entorno de comercio electrónico, de acuerdo con los requerimientos establecidos para el proyecto.

- Organización y presentación de productos.
- Interfaz orientada a facilitar la navegación de los usuarios.
- Gestión de la información mediante una base de datos relacional.
- Organización modular para facilitar el mantenimiento y la ampliación del sistema.
- Control de versiones y seguimiento de los cambios.
- Desarrollo colaborativo mediante ramas independientes.
- Integración y verificación de los componentes desarrollados por el equipo.
  
---

## Desarrollo del proyecto

### 1. Análisis y planificación

Definición de los requerimientos del sistema, identificación de las necesidades del proyecto y distribución de las responsabilidades entre los integrantes.

### 2. Diseño del sistema

Organización de los componentes de la plataforma, planificación de la estructura de datos y definición de la interacción entre los diferentes módulos.

### 3. Desarrollo de funcionalidades

Implementación de los módulos asignados a cada integrante, manteniendo una estructura organizada y procurando facilitar la integración del código.

### 4. Diseño y gestión de la base de datos

Utilización de **PostgreSQL** para estructurar, almacenar y administrar la información requerida por el sistema.

La estructura de la base de datos podrá evolucionar conforme se identifiquen nuevos requerimientos durante el desarrollo.

### 5. Control de versiones y colaboración

Uso de Git y GitHub para mantener un historial de cambios y coordinar el trabajo del equipo.

Cada integrante trabajará en una rama personal identificada mediante su nombre y carné. Los cambios deberán revisarse antes de integrarse a la rama principal `main`.

### 6. Pruebas e integración

Verificación del funcionamiento de los componentes, identificación de errores e integración progresiva de las funcionalidades desarrolladas.

---

## Estructura del proyecto

La organización definitiva de los directorios y archivos se documentará conforme se establezca la estructura del repositorio.

Como referencia, el proyecto contempla la organización de los siguientes recursos:

- **Código fuente:** archivos correspondientes a la implementación de la plataforma.
- **Base de datos:** scripts SQL para la creación y administración de la estructura de PostgreSQL.
- **Documentación:** información técnica y académica del proyecto.
- **README.md:** documentación principal del repositorio.

---

## Cómo obtener el proyecto

### 1. Clonar el repositorio

```bash
git clone URL-DEL-REPOSITORIO
```
### 2. Ingresar al directorio

```bash
cd ABD135-VEXORA
```

### 3. Preparar el entorno

Instalar las herramientas y dependencias que requiera el proyecto. Para trabajar con la base de datos, será necesario contar con PostgreSQL y configurar la conexión según los parámetros establecidos.

### 4. Consultar la documentación

Revisar los archivos del repositorio para conocer las instrucciones específicas de configuración, instalación y ejecución.

*Los comandos definitivos de ejecución se agregarán cuando se establezcan las tecnologías de desarrollo y la estructura de la aplicación.*

---

## Flujo de trabajo con Git

Para mantener el repositorio organizado, cada integrante deberá trabajar en su propia rama.

### Crear una rama personal

```bash
git checkout main
git pull origin main
git checkout -b "Nombre-Apellido-Carnet"
git push -u origin "Nombre-Apellido-Carnet"
```

### Guardar y subir cambios

```bash
git add .
git commit -m "Descripción de los cambios"
git push
```

### Actualizar la rama personal

```bash
git fetch origin
git merge origin/main
git push
```

### Buenas prácticas

- No realizar modificaciones directamente en `main`.
- Utilizar mensajes de confirmación claros y descriptivos.
- Mantener la rama personal actualizada.
- Guardar y subir los cambios antes de realizar un `merge`.
- Resolver los conflictos antes de continuar con la integración.
- Comunicar los avances al equipo.
- Revisar los cambios antes de incorporarlos a la rama principal.

---

## Integrantes del equipo

| Carné | Nombre completo |
|---|---|
| BP24005 | Beltrán Peña, Lizzie Nicole |
| CR25082 | Chámul Ramírez, Gerson Antonio |
| GL25010 | Guardado López, José Edenilson |
| UG24004 | Umaña García, Marcos Edward |

---

## Información académica

**Institución:** Universidad de El Salvador (UES)  
**Carrera:** Ingeniería en Desarrollo de Software  
**Proyecto:** VEXORA  
**Área:** Comercio electrónico y desarrollo de software  
**Base de datos:** PostgreSQL

---

<p align="center">
  <img src="./logo-vexora.png" alt="VEXORA" width="120">
</p>

<p align="center">
  <strong>VEXORA</strong><br>
  <em>Innovación digital, experiencias sin límites.</em>
</p>
