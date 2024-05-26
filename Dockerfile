# Используем базовый образ Ubuntu
FROM ubuntu:latest

# Обновляем пакеты и устанавливаем nano и curl
RUN apt-get update && apt-get install -y nano curl

# Добавляем произвольный файл с содержимым
RUN echo "This is a random file with random content." > /random_file.txt

# Копируем скрипт в контейнер
COPY wait_script.sh /wait_script.sh

# Делаем скрипт исполняемым
RUN chmod +x /wait_script.sh

# Устанавливаем точку входа на скрипт
ENTRYPOINT ["/wait_script.sh"]

