# Weather-App
a web app that has been built using Flask web framework that show the temperature of the city we are searching its name in the GUI , it is using the openweather API to get the data needed 
the app has been built and deployed on two VMs using CI/CD jenkins pipeline and these two VMs has using Ansible for Configuration automation to deploy this app as a docker container on them

## Prerequisite
before running this pipeline to deploy the app you need
- Jenkins
- Docker
- Ansible

## Pipeline Overview
![Pipeline(1)](https://github.com/user-attachments/assets/2b6001f5-5644-4492-a2b7-81a0bfe9debc)
## Tech Stack
- Flask : used to build the web app 
- Jenkins : building the CI/CD pipeline
- Docker : Containarization of the app
- Ansible : Configuration management of the VMs 
- Vagrant : to create these VMs (infrastructure-as-code)

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


