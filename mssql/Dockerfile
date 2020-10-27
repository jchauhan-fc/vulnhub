FROM mcr.microsoft.com/mssql/server:2017-CU17-ubuntu

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Copy initialization scripts
COPY . /usr/src/app

# Grant permissions for the run-initialization script to be executable
RUN chmod +x /usr/src/app/run-initialization.sh

# Set environment variables, not to have to write them with docker run command
ENV SA_PASSWORD AdminPwd_1234
ENV ACCEPT_EULA Y
ENV MSSQL_PID Express

# Expose port 1433 in case accesing from other container
EXPOSE 1433

CMD /bin/bash ./entrypoint.sh