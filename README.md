# Задание №2

## Описание

Пайплайн для автоматической сборки и тестирования Docker-образов Nginx и PostgreSQL с использованием GitHub Actions. Пайплайн включает в себя шаги для сборки образов и их тестирования без необходимости пуша в реестр.

## Структура 

- `.github/workflows/ci.yml`: Файл конфигурации для GitHub Actions, описывающий этапы сборки и развертывания.
- `Dockerfile.nginx`: Docker-файл для Nginx.
- `Dockerfile.postgres`: Docker-файл для PostgreSQL.
- `nginx.conf`: Конфигурация Nginx, разрешающая доступ ко всем методам.
- `init.sql`: Скрипт инициализации базы данных PostgreSQL, создающий пользователя и базу данных.
- `docker-compose.yml`: Файл конфигурации для запуска сервисов с помощью Docker Compose, использующий собранные образы.

## Установка и запуск

1. Клонируйте репозиторий:
  ```bash
  git clone https://github.com/username/repository-name.git
  cd repository-name
  ```
2. Соберите образы (локально, если необходимо):
  ```bash
  docker build -t my-nginx -f Dockerfile.nginx 
  docker build -t my-postgres -f Dockerfile.postgres
  ```
3. Запустите контейнеры (локально, если необходимо):
  ```bash
  docker run --name my-nginx-container -p 80:80 -d my-nginx
  docker run --name my-postgres-container -e POSTGRES_PASSWORD=mysecretpassword -d my-postgres
  ```
## Проверка работы
- Nginx: Перейдите по адресу http://localhost.
- PostgreSQL: Подключитесь с помощью клиента:
- Хост: localhost
- Порт: 5432
- Пользователь: test
- Пароль: test_password
- База данных: test

## Лицензия
MIT License.
