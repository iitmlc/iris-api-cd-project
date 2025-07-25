# Python base image
FROM python:3.10-slim

# 2. Set Working Dir
WORKDIR /app

# 3. Copy files
COPY . /app

# 4. Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Expose port
EXPOSE 8200

# 6. Run server
CMD ["uvicorn","iris_fastapi:app","--host", "0.0.0.0", "--port", "8200"]
