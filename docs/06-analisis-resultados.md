<div align="center">
  <h1>Análisis de Resultados de SBOM y Vulnerabilidades</h1>
</div>

<div align="center">
  Después de obtener los resultados debemos analizarlos para identificar planes de acción, mitigación y estrategia para disminuir las vulnerabilidades asociadas a las dependencias del software
</div><br>

## Table of Content

- [Table of Content](#table-of-content)
- [Dónde se almacena la información](#dónde-se-almacena-la-información)
- [Qué nos entrego el SBOM?](#qué-nos-entrego-el-sbom)
- [Qué nos entrego el archivo de vulnerabilidades?](#qué-nos-entrego-el-archivo-de-vulnerabilidades)


## Dónde se almacena la información

Los resportes generados son almacenados en `code-security` y podemos ver la siguiente estructura de archivos:

    .code-security/
        ├── sbom.json               # Inventario de software en json
        ├── sbom.txt                # Inventario de software en txt
        ├── vulnerabilidades.json   # Inventario de vulnerabilidades en json
        └── vulnerabilidades.txt    # Inventario de vulnerabilidades en txt

## Qué nos entrego el SBOM?

El SBOM nos dice que actualmente en el repositorio de código se encuentran las siguientes depedencias de sofware:

|NAME|VERSION|TYPE|
|---|---|---|
|Flask|1.0.0|python|
|Jinja2|3.1.2|python| 
|black|22.3.0|python|  
|flake8|4.0.1|python| 
|pytest|7.2.0|python| 

> Con el SBOM en formato json no entrega información más detallada sobre cada depedencia.

## Qué nos entrego el archivo de vulnerabilidades?

El archivo de vulnerabilidades nos muestra las vulnerabilidades y nos sugiere a qué versión debemos actualizar para solucionar la vulnerabilidad:

|NAME|INSTALLED|FIXED-IN|TYPE|VULNERABILITY|SEVERITY|
|---|---|---|---|---|---|                
|Flask|0.1|0.12.3|python|GHSA-562c-5r94-xh97|High|      
|Flask|0.1|1.0.0|python|GHSA-5wv5-4vpf-pj6m|High|  

> Con el archivo de vulnerabilidades en formato json no entrega información más detallada sobre cada vulnerabilidad.


Siguiente: [Remediación de Vulnerabilidades](07-remediacion-vulnerabilidades.md)