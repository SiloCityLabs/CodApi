FROM postgres:latest

# Set environment variables for the PostgreSQL user, password, and database name
ENV POSTGRES_USER codapi
ENV POSTGRES_PASSWORD codapi
ENV POSTGRES_DB codapi_db

# Expose the default PostgreSQL port
EXPOSE 5432

# You can add initialization scripts here if needed
COPY ./sql/v1 /docker-entrypoint-initdb.d/

# The postgres:latest image already has an entrypoint that starts the PostgreSQL server