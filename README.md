# 🚀 Capstone Project: Application Deployment (Production-Ready)

This project demonstrates the end-to-end deployment of a **React application** into a production-ready state using Docker, Jenkins, AWS, and open-source monitoring tools. Everything — from containerization to CI/CD automation and deployment — is handled using CLI tools and scripts.

> ✅ Deployed to **port 80** (HTTP) on an AWS EC2 instance.  
> 🎯 Docker images pushed to **Docker Hub** (`dev` - public, `prod` - private).  
> 🔁 Auto-trigger builds from **GitHub branches (dev & master)** via **Jenkins**.  
> 📈 Live application health monitored with alerts on failure.

---

## 📂 Repository Details

- 🔗 Application GitHub Repo: [devops-build (original)](https://github.com/sriram-R-krishnan/devops-build)
- 🔗 Capstone GitHub Repo (yours): [amie2001/devops-build](https://github.com/amie2001/Capstone-Project.git)
- 📸 Screenshots Folder: [Google Drive Folder](https://drive.google.com/drive/folders/1QW2kKFOZbEfRoiAokez2FD08JBPP92KV?usp=drive_link)

---

## 🛠️ Technologies Used

| Tool/Service    | Purpose                                  |
|-----------------|------------------------------------------|
| **Docker**      | Containerization of the React app        |
| **Docker Hub**  | Image registry (`dev` & `prod` repos)    |
| **Git & GitHub**| Version control (CLI only)               |
| **Jenkins**     | CI/CD automation                         |
| **AWS EC2**     | Production deployment (Ubuntu instance)  |
| **Monitoring**  | App health check & alerting (open-source tools) |

---

## 📁 Folder Structure

```
.
├── Dockerfile           # Docker image build config
├── docker-compose.yml   # Compose setup for services
├── build.sh             # Bash script to build Docker image
├── deploy.sh            # Bash script to deploy container
├── .gitignore
├── .dockerignore
```

---

## 🔧 Step-by-Step Breakdown

### ✅ 1. Clone & Setup

```bash
git clone [https://github.com/amie2001/Capstone-Project)]
cd Capstone-Project
```

### 🐳 2. Dockerize the React App

- **Dockerfile** created to build the React app.
- Built image using:

```bash
bash build.sh
```

📌 *Script builds and tags image as `pavi2244/react-app`*

![image](https://github.com/user-attachments/assets/3e71d255-b29f-4b67-a411-961060dfbf9d)


---

### 📦 3. Docker Compose

- Used `docker-compose.yml` to spin up the app on port 80.
- Deploy script:

```bash
bash deploy.sh
```

---

### 🛳 4. Push to Docker Hub

- Created two repositories:
  - [`pavi2244/dev`](https://hub.docker.com/repository/docker/pavi2244/dev) (public)
  - `pavi2244/prod` (private)

- Images are tagged and pushed from scripts and Jenkins jobs.

![ss11](https://github.com/user-attachments/assets/62aba363-81bb-4cba-99dd-0f11154ed337)


---

### 🔁 5. Git & GitHub

- CLI used for all Git actions.
- `.gitignore` and `.dockerignore` added.

```bash
git checkout -b dev
git add .
git commit -m "Initial commit"
git push origin dev
```

---

### 🤖 6. Jenkins CI/CD

- Jenkins installed and configured on AWS.
- Two branches monitored:
  - **dev** → builds & pushes to `dev` Docker Hub repo.
  - **master** → pushes to `prod` repo on merge.

- Webhooks enabled for auto-trigger.
- 
![ss8](https://github.com/user-attachments/assets/744f4e48-c1de-4578-8d06-516f1789b045)


---

### ☁️ 7. AWS Deployment

- EC2 instance (t2.micro) on AWS used for hosting.
- Security Groups:
  - App open on port 80.
  - SSH access only from your IP.

- Application successfully deployed and accessible via public DNS.

![ss12](https://github.com/user-attachments/assets/da37e82d-8506-4d50-8423-01e43cdc9863)


---

### 📈 8. Monitoring Setup

- Open-source monitoring tool used (prometheus and grafana).
- Configured to:
  - Continuously ping the app endpoint.
  - Send alerts when the app goes down.

![ss16](https://github.com/user-attachments/assets/0815cd07-67b2-439a-8dfd-b5d751371946)


![ss19](https://github.com/user-attachments/assets/e07d7961-863e-4533-9e66-e116ee6e9c5a)



---

## 🌐 Final Result

Application running successfully on an AWS-hosted server on **port 80** with CI/CD, monitoring, and private/public Docker image handling.

![ss14](https://github.com/user-attachments/assets/a7ab5f27-9e4d-4dd4-ac09-bad4d2a2731e)




---

## 🧹 To Clean Up

```bash
docker-compose down
terraform destroy     # if using IAC for provisioning (optional)
```

---

## 🧠 Lessons Learned

- Real-world CI/CD implementation using **branch-based pipelines**
- Working with **private/public Docker registries**
- Setting up **production-ready environment** on AWS
- Using **monitoring** tools to keep app health in check

---

🚀 This Capstone project brings together the full DevOps lifecycle in one compact, production-ready implementation!

