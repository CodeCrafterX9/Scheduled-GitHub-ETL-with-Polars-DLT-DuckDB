FROM python:3.10-slim

WORKDIR /app

# requirements txt copy to download the packages
COPY requirements.txt .

# Load the librarires
RUN pip install --no-cache-dir -r requirements.txt

# Copy the root folder (Scheduled-GitHub-ETL-with-Polars-DLT-DuckDB)
COPY . .

#github-etl-pipeline is the name for the image