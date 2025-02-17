# Weather-App
The application is built and deployed on two virtual machines (VMs) using a CI/CD pipeline with Jenkins. Ansible is used for configuration automation, ensuring the app runs as a Docker container on both VMs.

## Prerequisites
Ensure you have the following installed before running the pipeline:

- **Jenkins**: [Installation Guide](https://www.jenkins.io/doc/book/installing/)
- **Docker**: [Installation Guide](https://docs.docker.com/get-docker/)
- **Ansible**: [Installation Guide](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
- **Vagrant**: [Installation Guide](https://developer.hashicorp.com/vagrant/docs/installation)


## Pipeline Overview
![Pipeline(1)](https://github.com/user-attachments/assets/2b6001f5-5644-4492-a2b7-81a0bfe9debc)
## Tech Stack
- Flask : used to build the web app 
- Jenkins : building the CI/CD pipeline
- Docker : Containarization of the app
- Ansible : Configuration management of the VMs 
- Vagrant : to create these VMs (infrastructure-as-code)

## How To run 
## How to Run the Project
1. Clone the repository:
   ```sh
   git clone https://github.com/your-repo/weather-app.git
   cd weather-app
   ```
2. Set up the virtual machines using Vagrant
   ```sh
   vagrant up
   ```
3. update inventory to include the machine IPs and paths of the private keys
4. run the pipeline using jenkins server
5. access the app from `http://<VM_IP>:5000`

## Screenshots
- Pipeline from Jenkins

![Pipeline Stages](https://github.com/user-attachments/assets/afb6c192-99c7-4728-b489-0b4c92390890)
- Ansible Tasks

![Ansible Tasks In Jenkins](https://github.com/user-attachments/assets/b7aebd60-8f71-49e3-b67a-f269cae476c1)
- App From VM 1

![VM1](https://github.com/user-attachments/assets/cebe021b-8efc-4fd8-bbf7-b2c2eac8ed62)
- App From VM 2

![VM2](https://github.com/user-attachments/assets/ec5aeda9-5e2b-4e97-8386-e5fdef90ab7b)
- Slack Notifications After Pipeline is done

![Slack](https://github.com/user-attachments/assets/409d5dfa-745b-4c61-8788-7fec8621f29d)

## License
This project is licensed under the **MIT License** – see the [LICENSE](LICENSE) file for details.


