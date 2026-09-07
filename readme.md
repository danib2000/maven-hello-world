# Java Maven Background Service & Kubernetes Deployment

A Java-based background application managed with Maven, containerized using Docker multi-stage builds, and deployed to Kubernetes via Helm.

---

## 📌 Project Overview

This project demonstrates a complete CI/CD and containerization workflow for a Java background worker application. 

### Key Features
* **Maven Build System:** Manages Java dependencies and handles automatic patch version incrementing.
* **Multi-Stage Dockerfile:** Produces a minimal JRE container running under a non-root user for enhanced security.
* **Automated CI/CD:** GitHub Actions pipeline compiles, tests, packages, tags, and pushes Docker images to Docker Hub.
* **Helm Chart Deployment:** Deploys the application to Kubernetes using `exec`-based readiness and liveness probes suitable for background processes.

---

## 📸 Architecture & Pipeline Diagrams

### CI/CD Pipeline Workflow
<!-- Replace the path below with your pipeline screenshot -->
![CI/CD Pipeline Diagram](./images/pipeline.png)

### Kubernetes Workload Deployment
<!-- Replace the path below with your Kubernetes architecture screenshot -->
![Kubernetes Architecture Diagram](./images/k8s-architecture.png)

---

## 🛠 Project Structure

```text
.
├── Dockerfile
├── helm
│   └── hello-world
│       ├── Chart.yaml
│       ├── templates
│       │   ├── deployment.yaml
│       │   ├── _helpers.tpl
│       │   ├── hpa.yaml
│       │   ├── httproute.yaml
│       │   ├── ingress.yaml
│       │   ├── NOTES.txt
│       │   ├── serviceaccount.yaml
│       │   ├── service.yaml
│       │   └── tests
│       │       └── test-connection.yaml
│       └── values.yaml
├── myapp
│   ├── pom.xml
│   └── src
│       ├── main
│       │   └── java
│       │       └── com
│       │           └── myapp
│       │               └── App.java
│       └── test
│           └── java
│               └── com
│                   └── myapp
│                       └── AppTest.java
└── readme.md
