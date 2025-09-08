# DevOps-basic-Projects
This Repository show's my projects and practice

# 🌐 Host a Static Website on AWS EC2

This is my first DevOps project where I deployed a **static website** on an **AWS EC2 instance** using **Linux + Apache Web Server**.  
The project demonstrates my skills in **AWS, EC2, VPC, Linux administration, Git/GitHub, and basic web hosting**.

---

## 🚀 Project Overview
- Created and configured an **EC2 instance** in AWS.
- Installed and configured **Apache HTTP Server** on Amazon Linux.
- Deployed a simple **HTML website**.
- Connected **GitHub repository** to serve the website code.
- Secured the server using **AWS Security Groups**.

---

## 🛠️ Skills Used
- **AWS EC2** – for hosting the website.  
- **AWS VPC** – for networking & security setup.  
- **Linux (Amazon Linux 2)** – for server administration.  
- **Apache (httpd)** – as a web server.  
- **Git & GitHub** – for version control and source code deployment.  

---

## ⚙️ Steps to Reproduce

### 1. Launch an EC2 Instance
- OS: Amazon Linux 2 (t2.micro, Free Tier)
- Security Groups:
  - **SSH (22)** → Your IP
  - **HTTP (80)** → Anywhere
- Attach a key pair for SSH access.

### 2. Connect to EC2
```bash
ssh -i your-key.pem ec2-user@<EC2-Public-IP>

```

### 3. Install Web Server
```bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
```
### 4. Deploy Static Website
```bash
cd /var/www/html
sudo rm -f index.html
sudo nano index.html
```
####  Sample index.html:
```bash
<html>
<head><title>My First DevOps Project</title></head>
<body>
<h1>Hello, World! 🚀</h1>
<p>This is my first project - Static Website on AWS EC2.</p>
</body>
</html>
```

### 5. (Optional) Clone from GitHub 
```bash
sudo yum install git -y
cd /var/www/html
sudo git clone https://github.com/<your-username>/<your-repo>.git .
sudo systemctl restart httpd
```

## Screenshots

### 1. Security group rules

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/6d7003fc-99e2-4462-9f9f-aa658c16147b" />

### 2. Website running in browser

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/af33fb65-a363-44b0-a4a9-a6b16eb167df" />
