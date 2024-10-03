# Use the official MySQL image from Docker Hub
FROM mysql:latest

# Set environment variables for MySQL root user and database setup
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=prospa
ENV MYSQL_DATA=var/lib/mysql/sqlvol
ENV v=var/sqlvol:/var/lib/mysql/sqlvol
ENV v=./grant-permissions.sql:/docker-entrypoint-initdb.d/grant-permissions.sql


# Expose MySQL port
EXPOSE 3306

# Optional: Add any custom initialization scripts or data here
# For example, if you have SQL files that should be run when the container starts
COPY ./init.sql /docker-entrypoint-initdb.d/

# By default, the official MySQL image automatically starts MySQL when the container is run,
# so there's no need to specify any additional commands or entrypoints.
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD [ "mysqladmin", "ping", "--silent"]
