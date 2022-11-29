# DEVOPS STUPIDLY SIMPLE
All my notes about my job transition.

## GOAL
To deploy a fully automated Java webapp in Amazon EKS using most common DevOps tools.

## What resources we are going to use?
- Infraestructure: Terraform
- CI/CD: Jenkins
- Code and config repo: Github
- Configuration: Ansible
- Containers: Docker
- Reliability: Kubernetes
- Cloud platform: Amazon AWS (free tier resources)
- Console operating system: Ubuntu 22.04 x86 (assumed it's fully installed prior start this lab)

## Let's prepare our Linux console to build all this stuff 

### 1) Install terraform from official repos:

```
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update && sudo apt install terraform
```

### 2) Install Docker from official repos:

```
sudo apt remove docker docker-engine docker.io containerd runc

sudo apt install -y -q ca-certificates curl gnupg lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update

sudo apt install -y -q docker-ce docker-ce-cli containerd.io docker-compose-plugin
```

### 3) Install Kubectl from official repos:

```
sudo apt update

sudo apt install -y -q ca-certificates curl

sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg

echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list

sudo apt update

sudo apt install -y -q kubectl
```

### 4) Install Jenkins from official repos:

```
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key |sudo gpg --dearmor -o /usr/share/keyrings/jenkins.gpg

sudo sh -c 'echo deb [signed-by=/usr/share/keyrings/jenkins.gpg] http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

sudo apt update

sudo apt install -y -q default-jdk

sudo apt install -y -q jenkins

sudo systemctl start jenkins.service
```


# MISC

Clone DevOps Stupidly Simple (DSS) in your Ubuntu Linux console:

```
apt install git
mkdir github.com
git clone git@github.com:pabonwalt/devops-stupidly-simple.git
cd devops-stupidly-simple
git config --global user.name "Pepe Grillo"
```

Use following commands to add or update files or directories using git commands from terminal:

```
git add .
git commit -m "adding some changes"
git push -u origin main
```

