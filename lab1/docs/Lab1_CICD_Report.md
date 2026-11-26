# Lab 1: CI/CD Workflow Report

## Pipeline Architecture

Source code lives in GitHub. Jenkins (on Ubuntu 24.04) polls the repository or is triggered by webhook. On change it checks out code and runs the stages defined in the Jenkinsfile.

Flow: Commit → GitHub → Jenkins → Checkout → Build (npm install) → Test (npm test) → Deploy → Notify

## Stages

1. **Checkout** – Pulls latest code from main
2. **Build** – `npm install`
3. **Test** – `npm test`
4. **Deploy** – Copies artifacts and restarts the process

Declarative pipeline syntax used for readability.

## Results and Observations

Three successful builds after fixing the Node.js dependency. Average time ~45-60 seconds. Permission issue on the deploy folder was fixed by adjusting ownership for the jenkins user. The Jenkinsfile makes the process fully reproducible.
