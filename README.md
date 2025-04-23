# maven-demo

Este proyecto es una **demo de backend** desarrollada con Maven. Su objetivo principal es **validar y probar la pipeline Jenkins** para proyectos backend en el entorno de ADIF.

## 🎯 Objetivo

El repositorio sirve como plantilla o base de pruebas para validar la ejecución de las tareas típicas de una pipeline Jenkins en proyectos Java backend. Esto incluye compilación, análisis estático, pruebas, empaquetado, y despliegue simulado.

## 🚀 Pipeline Jenkins

El proyecto está conectado con una pipeline específica en Jenkins:

🔗 [Ver pipeline en Jenkins](http://ica.adif.es/jenkins/job/ARQ.MAVEN-DEMO_BUILD/)

Esta pipeline se encarga de:

- Compilar el proyecto Maven
- Ejecutar pruebas unitarias
- Realizar análisis con SonarQube (si aplica)
- Construir artefactos
- Validar el flujo de trabajo estándar en proyectos reales

> ⚠️ Esta pipeline no realiza despliegues reales, ya que se trata de un entorno de pruebas.

## 📁 Estructura del Proyecto


```sh
maven-demo/
├── src/
│   ├── main/
│   │   └── java/
│   └── test/
│       └── java/
├── pom.xml
└── README.md
```

## 📦 Requisitos

- Java 17 o superior
- Maven 3.x
- Jenkins (con acceso a la pipeline mencionada)
- GitLab (repositorio de origen)

## 🛠️ ¿Cómo usar este proyecto?

1. Clonar el repositorio en un entorno de pruebas.
2. Realizar cambios controlados (por ejemplo, probar nuevas configuraciones del `pom.xml`).
3. Lanzar la pipeline en Jenkins para validar el comportamiento.

## 👨‍💻 Contacto

Para dudas o sugerencias sobre esta demo, contactar con el equipo de Arquitectura o ICA.

---
