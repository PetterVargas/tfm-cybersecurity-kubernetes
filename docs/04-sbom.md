<div align="center">
  <h1>Creación del Bill of Material - SBOM</h1>
</div>

<div align="center">
  Inventario (SBOM) permite reconocer las dependencias del software e identificar la protección en la cadena de suministro del software.
</div><br>

## Table of Content

- [Table of Content](#table-of-content)
- [Cómo lo vamos a ejecutar?](#cómo-lo-vamos-a-ejecutar)
- [Creación de SBOM con Syft](#creación-de-sbom-con-syft)
- [Validación de la funcionalidad](#validación-de-la-funcionalidad)

## Cómo lo vamos a ejecutar?

Nuestro repositorio objeto de análisis se encuentra como una carpeta dentro de este directorio porque está como submodulo.


## Creación de SBOM con Syft
Creación del inventario (SBOM) permite reconocer las dependencias del software e identificar la protección en la cadena de suministro del software.

1. Creación y conversión de un sbom:

```sh
$ syft dir:aplicacion-python-flask-tdd/ > code-security/sbom.txt # Genera a Syft SBOM en formatos txt
$ syft dir:aplicacion-python-flask-tdd/ > code-security/sbom.json # Genera a Syft SBOM en formatos json
$ syft convert code-security/sbom.syft.json -o cyclonedx-json=sbom.cdx.json  # Convierte el archivo a formato CycloneDX
```

2. Para generar todos los SBOM en un mismos comando:

```sh
$ syft dir:aplicacion-python-flask-tdd/ > code-security/sbom.txt && syft dir:aplicacion-python-flask-tdd/ > code-security/sbom.json && syft convert code-security/sbom.syft.json -o cyclonedx-json=sbom.cdx.json
```

## Validación de la funcionalidad

Muestra gráfica de la funcionalidad y lo que muestra la aplicación.

![Funcionamiento del repositorio](./aplicacion-python-flask-tdd/project/static/img/funcionamiento.png)


Siguiente: [Identificación de Vulnerabilidades con Grype](05-vulnerabilidades.md)