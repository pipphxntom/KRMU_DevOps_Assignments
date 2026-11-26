# Lab 1: Record of All Commands, Configurations and Observations

Student: Shwetank Pandey  
Date: November 2026

## Git Installation and Configuration

```bash
sudo apt update
sudo apt install git -y
git --version
# git version 2.43.0

git config --global user.name "Shwetank Pandey"
git config --global user.email "shwetank.pandey@example.com"
git config --global init.defaultBranch main
git config --global --list
```

## Jenkins Installation

```bash
sudo apt install openjdk-17-jdk -y
# Added Jenkins repository and key as per official docs
sudo apt update
sudo apt install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
```

Initial admin password taken from `/var/lib/jenkins/secrets/initialAdminPassword`. Recommended plugins installed.

## Repository Setup

```bash
mkdir devops-lab-app && cd devops-lab-app
git init
npm init -y
# Created index.js and package.json
git add .
git commit -m "feat: initial Node.js application setup"
git checkout -b feature/add-health-endpoint
# Added /health route
git add .
git commit -m "feat: add health check endpoint"
git checkout main
git merge feature/add-health-endpoint
git remote add origin <github-url>
git push -u origin main
```

## Observations

First Jenkins build failed because Node.js was not available on the agent. Installed Node and restarted. Subsequent builds succeeded. Clean commit history helped when debugging the deploy stage.
