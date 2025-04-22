# Usamos una imagen base con Maven preinstalado
FROM maven:3.8.4-openjdk-11 AS build

# Establecemos el directorio de trabajo
WORKDIR /app

# Copiamos los archivos del proyecto en el contenedor
COPY . /app

# Ejecutamos Maven para compilar el proyecto
RUN mvn clean package -DskipTests

# Usamos una imagen más ligera para la parte de ejecución
FROM openjdk:11-jre-slim

# Establecemos el directorio de trabajo
WORKDIR /app

# Copiamos el archivo JAR generado desde la etapa anterior
COPY --from=build /app/target/maven-demo-1.0-SNAPSHOT.jar /app/maven-demo.jar

# Comando para ejecutar el archivo JAR
ENTRYPOINT ["java", "-jar", "maven-demo.jar"]

# Exponemos el puerto que usa el contenedor (si es necesario)
EXPOSE 8080
