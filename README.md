# Dockerized Nginx Deployment on AWS EC2

## 📌 Overview
This project implements a production-style Docker workflow where a custom
Nginx image is built, versioned, published to Docker Hub, and deployed
on an AWS EC2 instance.

The application runs inside a Docker container and serves a custom HTML page
accessible via the EC2 public IP.

---

## 🛠️ Tech Stack
- Docker
- Nginx
- AWS EC2
- Linux (Ubuntu)
- Docker Hub

---

## 🏗️ Architecture
Local Machine → Docker Image → Docker Hub → AWS EC2 → Browser

---

## 🚀 What I Did
1. Built a custom Docker image using Nginx
2. Added custom Nginx configuration
3. Versioned and tagged the Docker image
4. Published the image to Docker Hub
5. Pulled and deployed the image on AWS EC2
6. Enabled container auto-restart for reliability

---

## 📂 Project Structure
docker-aws-nginx-deployment/
├── Dockerfile        # Builds the custom Nginx Docker image
├── nginx.conf        # Custom Nginx configuration
├── html/
│   └── index.html    # Static HTML content served by Nginx
└── README.md         # Project documentation

---

## 🐳 Docker Hub Image

The custom Docker image used in this project is publicly available on Docker Hub.

**Pull the image:**
```bash
docker pull niladri12/nginx-image-apt:1.0
```
**Run the container:**
```
docker run -d -p 80:80 niladri12/nginx-image-apt:1.0
```
🔗 Docker Hub Repository: 
https://hub.docker.com/r/niladri12/nginx-image-apt
