# Usar una imagen base de Python
FROM python:3.9

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el código de la aplicación al contenedor
COPY pruebax2.py /app/

# Instalar las dependencias de la aplicación
RUN pip install fastapi uvicorn

# Exponer el puerto en el que se ejecutará la aplicación
EXPOSE 8000

# Comando para ejecutar la aplicación
CMD ["uvicorn", "pruebax2:app", "--host", "0.0.0.0", "--port", "8000"]

