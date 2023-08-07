# Arquetipo Básico de Pruebas Automatizadas para microservicios con Karate

## Pre-requisitos

1. Gradle y tener agregado en el path de la variable de entorno
2. IDE IntelliJ IDEA
3. Java 11

## Complementos

> **NOTA**:
> * Una vez obtenido Intellij es necesario instalar los plugins de Gherkin y Cucumber. (*[Guia de instalación plugins en intellij](https://www.jetbrains.com/help/idea/managing-plugins.html)*)
>

## Ejecución local

Clonar el proyecto

```bash
  git clone https://github.com/CarBon593/challengeAPI.git
```

Entrar al directorio del proyecto

```bash
  cd challengeAPI
```
## Comandos


Para ejecutar todos los features por linea de comandos
```bash
  gradle clean test -i
```
Para visualizar el reporte de la ejecución 
```bash
  En la carpeta "target" abrir el archivo "karate-summary.html" con cualquier navegador 
```


## Construido con:
La automatización fue desarrollada con:

* BDD - Estrategia de desarrollo
* Gradle - Manejador de dependencias
* Gherkin - Lenguaje Business Readable DSL (Lenguaje especifico de dominio legible por el negocio)

## Documentacion

[Karate DSL](https://github.com/karatelabs/karate)

