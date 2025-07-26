# Используем официальный образ Python
FROM python:3.13.2

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем зависимости
COPY app/requirements.txt .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Копируем исходный код
COPY app/ .

# Открываем порт 8000
EXPOSE 8000

# Запускаем приложение
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]