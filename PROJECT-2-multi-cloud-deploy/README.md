# 🌐 Multi-Cloud Auto Deployment using Terraform (AWS + GCP)

## 📌 Objective
Provision and deploy web servers in both **AWS** and **GCP** simultaneously using Terraform, and validate the setup through local DNS resolution (`dnsmasq`) and NGINX health checks.

---

## 🧰 Tools & Technologies
- Terraform
- AWS Free Tier
- GCP Free Tier
- NGINX
- DNSMasq (Local DNS resolution)

---

## 🚀 Mini Guide

### 1. Configure Terraform Providers
- Set up Terraform authentication for both AWS and GCP.
- Use provider blocks to manage both cloud environments.

### 2. Deploy Infrastructure
- Launch EC2 and GCP VM instances with NGINX installed.
- Open relevant ports in security groups/firewalls (e.g., port 80).

### 3. Configure DNSMasq
- Create DNS entries to map `myapp.local` to the deployed servers.
- Ensure `dnsmasq` is resolving properly using `nslookup` or `dig`.

### 4. Validate Deployment
- Access `http://myapp.local` in browser or via `curl`.
- Use `curl http://myapp.local` to test which server is responding.
- Use failover by stopping one server and observing routing behavior.

---


## 📂 Project Structure

multi-cloud-deploy/
├── aws/
│ └── main.tf
| └── outputs.tf
| └── sg.tf
├── gcp/
│ └── main.tf
| └── output.tf
| └── firewalls.tf
├── dnsmasq/
│ └── myapp.conf
├── .gitignore
├── main.tf
├── outputs.tf
├── providers.tf
├── variables.tf
├── variables.tfvars
├── screenshots/
│   └── aws-dashboard.png
│   └── gcp-dashboard.png
├── Project-Report.pdf
└── README.md

---

✅ Validation Steps
1.terraform apply → both AWS & GCP instances created.

2.DNSMasq resolves myapp.local to instance IPs.

3.curl command confirms NGINX is live.

4.Simulated failover works as expected.

---