# [Project Setup](https://github.com/AryanAtel1034/DevSecOps-GitOps-End-to-End/blob/main/readme.md)
# [Real-Time End-to-End Microservice Base Voting Application Deployment Automation:](https://github.com/AryanAtel1034/DevSecOps-GitOps-End-to-End)

- **A three-tier based micro-service based application deatils**:
    - A **front-end web app** in Python which lets you vote between two options
    - A **Redis** which collects new votes
    - A **.NET worker** which consumes votes and stores them in…
    - A **Postgres database** backed by a Docker volume
    - A Node.js web app which shows the **results** of the voting in real time

## DevOps CI/CD Flow and Tools

<img width="8036" height="3705" alt="DevSecOps drawio" src="https://github.com/user-attachments/assets/9e715f96-a018-42bd-a8d7-245267d86978" />

- **GitHub Actions:** For continuous Integration (CI) I have used the github actions to automate the security scan and build project.
- **OWASP:** For vulnerabilities scanning in project dependencies (e.g., libraries, frameworks, or packages) to minimize risks associated with third-party libraries and ensure a secure software supply chain.
- **Trivy:** For ensuring continuous security with Trivy helps in scanning like Scanning File Systems, Container Image Scanning and Vulnerability Scanning in Code Repositories etc.
- **Docker:** 📦 containerized the application to ensure portability and consistency across environments.
- **ArgoCD:** leveraged GitOps principles to automate continuous deployments (CD) directly from Git.
- **Kubernetes (k8s):** ⚙️ deployed and managed the containers in a Kubernetes cluster by using managed Kubernetes service by AWS EKS for high availability
- **Prometheus:** It is an open-source monitoring and alerting toolkit designed for reliability and scalability, making it well-suited for dynamic environments like Kubernetes.
- **Grafana:** It enables users to collect, correlate, and visualize data through customizable dashboards, facilitating informed decision-making and streamlined troubleshooting.
- **Ansible:** Infrastructure ****Automation to setup this LAB from provisioning of AWS EC2 and installing all necessary tools like ArgoCD, K8s dashboard, Prometheus and Grafana in one shot
- **Terraform:** Helps in infrastructure provisioning using **IaC** for AWS VPC and EKS and EC2
- **AWS:** Used public cloud like AWS for EKS, EC2, IAM, VPC, ALB and autoscaling services for high availability.
- **Kustomize:** Used Kustomize for managing Kubernetes manifests with base and overlay configurations to support environment-specific deployments (Dev/Prod).
- **Keda:** Implemented KEDA for event-driven autoscaling of Kubernetes workloads based on external metrics to ensure optimal resource utilization and scalability..

## Voting Application Architecture K8s
![image](https://github.com/user-attachments/assets/f61d7249-d56c-4cbf-91a5-760114dd0452)


# Run Commands to access the Application
```
kubectl port-forward -n voting-app service/vote 5000:5000 --address=0.0.0.0 &
kubectl port-forward -n voting-app service/result 5001:5001 --address=0.0.0.0 &
```



---
# Github Actions CI
<!-- <img width="8036" height="3705" alt="DevSecOps drawio" src="https://github.com/user-attachments/assets/3c30dff3-d2bf-4ba4-9b0c-25b256c92249" /> -->
<img width="1440" height="770" alt="Screenshot 2026-02-15 at 3 04 01 PM" src="https://github.com/user-attachments/assets/3ea46859-9f40-42c2-9014-7ff14476316d" />
<img width="1439" height="778" alt="Screenshot 2026-02-15 at 3 04 30 PM" src="https://github.com/user-attachments/assets/a36032fe-5818-4da5-84b5-fccf109bebb0" />
 <img width="1440" height="650" alt="Screenshot 2026-02-15 at 3 05 18 PM" src="https://github.com/user-attachments/assets/7bc367a0-d40c-4eb0-8968-203475487cc2" /> 
<img width="1440" height="778" alt="Screenshot 2026-02-15 at 3 04 49 PM" src="https://github.com/user-attachments/assets/e0887046-9b91-4398-89e3-24e87a9a188e" />

---
# K8s Dashboard
![image](https://github.com/user-attachments/assets/bac8960e-fc77-4cc4-a850-910dd0783c19)


---
# ArgoCD
![image](https://github.com/user-attachments/assets/66e48984-1894-4726-b96a-2f76fccd812e)
---
# Grafana
<img width="1440" height="781" alt="Screenshot 2026-02-14 at 10 09 07 PM" src="https://github.com/user-attachments/assets/11bbeacd-a9a2-4c1e-9d3a-67578b96842a" />


# SonarQube
<img width="1892" height="909" alt="image" src="https://github.com/user-attachments/assets/695f173d-4935-44b8-867f-efb3e5145e70" />

