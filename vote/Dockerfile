# Use stable base with multi-arch support
FROM --platform=$BUILDPLATFORM python:3.11-bullseye AS base

# Add curl for healthcheck safely
RUN apt-get update && \
    apt-get install -y --no-install-recommends curl && \
    rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /usr/local/app

# Install Python dependencies
COPY requirements.txt ./requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# -------------------- Development Stage --------------------
FROM base AS dev
RUN pip install watchdog
ENV FLASK_ENV=development
CMD ["python", "app.py"]

# -------------------- Production Stage --------------------
FROM base AS final

# Copy application code
COPY . .

# Expose port 80
EXPOSE 80

# Run gunicorn with optimized settings
CMD ["gunicorn", "app:app", "-b", "0.0.0.0:80", "--log-file", "-", "--access-logfile", "-", "--workers", "4", "--keep-alive", "0"]
