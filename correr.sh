#!/usr/bin/env bash
# Compila la cuenta con javac y corre App (hoy no usamos Maven: el tema es Git).
# Los .class quedan en salida/, que el .gitignore deja fuera de Git.
set -e
rm -rf salida
javac -encoding UTF-8 -d salida $(find src/main/java -name "*.java")
java -cp salida com.academia.banco.App
