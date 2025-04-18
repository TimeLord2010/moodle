# Running Moodle with Docker Compose

This guide explains how to run this Moodle installation using Docker Compose.

## Prerequisites

- Docker and Docker Compose installed on your system
- Git (to clone the repository if you haven't already)

## Quick Start

1. Start the containers:

```bash
docker-compose up -d
```

2. Access Moodle in your browser:

```
http://localhost:8080
```

3. If this is your first time running Moodle, you'll be redirected to the installation wizard. Follow the on-screen instructions to complete the setup.

## Configuration

The Docker Compose setup includes:

- **Web Server**: Apache with PHP 8.2
- **Database**: MariaDB 10.11
- **Volumes**: Persistent storage for Moodle data and database

## Docker Compose Commands

- Start the containers:
  ```bash
  docker-compose up -d
  ```

- Stop the containers:
  ```bash
  docker-compose down
  ```

- View logs:
  ```bash
  docker-compose logs -f
  ```

- Restart the containers:
  ```bash
  docker-compose restart
  ```

## Customization

You can customize the setup by editing the `docker-compose.yml` and `config.php` files:

- Change the port mapping in `docker-compose.yml` if port 8080 is already in use
- Modify database credentials in both files if needed
- Adjust PHP settings by adding a custom php.ini file

## Troubleshooting

- If you encounter permission issues with the moodledata directory, you may need to adjust the permissions in the container:
  ```bash
  docker-compose exec web chmod 777 -R /var/www/moodledata
  ```

- If the database connection fails, ensure the database container is running:
  ```bash
  docker-compose ps
  ```

## Data Persistence

All data is stored in Docker volumes:
- `moodledata`: Stores Moodle files and user data
- `dbdata`: Stores the database

These volumes persist even when containers are stopped or removed.
