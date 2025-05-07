# 🚀 DevOps Internship Project - CI/CD Pipeline with GitHub Actions & Docker

This project demonstrates a complete CI/CD pipeline using **GitHub Actions** and **Docker**.  
It includes automatic **test running**, **Docker image building**, and **pushing** to Docker Hub.

---

## 🧰 Tech Stack Used

- HTML + CSS (frontend app)
- GitHub Actions (CI/CD automation)
- Docker (containerization)
- Docker Hub (image hosting)
- Docker Compose (local multi-service setup)
- Bash (for test script)

---

## 📁 Project Structure

ci-cd-docker-app/ ├── app/ │ ├── index.html │ ├── style.css │ └── test.sh ├── Dockerfile ├── docker-compose.yml ├── .github/ │ └── workflows/ │ └── ci.yml └── README.md

---

## 🔧 GitHub Actions CI Workflow

Workflow file: `.github/workflows/ci.yml`

### 📌 What It Does:
1. Triggers on push to `main` branch
2. Runs a basic HTML test (`test.sh`)
3. Builds Docker image using Dockerfile
4. Pushes image to Docker Hub (`yunus05/simple-web-app:latest`)

---

## 🧪 Test Script (test.sh)

Runs a simple check to verify if "Yunus" exists in `index.html`:

---

🚀 Run Locally

Clone Github Repo:
```bash
git clone https://github.com/Yunus705/ci-cd-docker-app.git
cd ci-cd-docker-app
```

Option 1: Docker only
```bash
docker build -t yunus05/simple-web-app .
docker run -d -p 8080:80 yunus05/simple-web-app
```

Option 2: Docker Compose
```bash
docker-compose up --build
```

Or you can pull image directly & Run Container
```bash
docker pull yunus05/simple-web-app:latest
docker run -d -p 8080:80 yunus05/simple-web-app
```
Then visit: http://localhost:8080

---

🔐 GitHub Secrets Required
Go to your GitHub repo → Settings → Secrets → Actions → Add:
Name            | Value
DOCKER_USERNAME | Your Docker Hub username
DOCKER_PASSWORD | Your Docker Hub password or access token

---

## 👤 Author

**Name:** Yunus Sharif
**Role:** DevOps Intern  
**Project:** CI/CD Pipeline