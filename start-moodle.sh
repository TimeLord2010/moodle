#!/bin/bash

echo "Starting Moodle with Docker Compose..."
docker-compose up -d || exit -1

echo ""
echo "Waiting for services to initialize..."
sleep 5

echo ""
echo "Checking container status:"
docker-compose ps

echo ""
echo "Moodle should now be available at: http://localhost:8080"
echo "If this is your first time running Moodle, you'll be redirected to the installation wizard."
echo ""
echo "Useful commands:"
echo "  - View logs: docker-compose logs -f"
echo "  - Stop Moodle: docker-compose down"
echo "  - Restart Moodle: docker-compose restart"
echo ""
echo "For more information, see README.docker.md"
