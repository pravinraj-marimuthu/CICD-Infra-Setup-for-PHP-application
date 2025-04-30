### Project description:

1. My simple php application - [index.php](https://github.com/pravinraj-marimuthu/CICD-Infra-Setup-for-PHP-application/blob/master/index.php)
2. Containerized the application using Docker - [Dockerfile](https://github.com/pravinraj-marimuthu/CICD-Infra-Setup-for-PHP-application/blob/master/Dockerfile)/[backend.yaml](https://github.com/pravinraj-marimuthu/CICD-Infra-Setup-for-PHP-application/blob/master/backend.yaml).
3. My Nginx file which is configured to act as a reverse proxy on host - [nginx.conf](https://github.com/pravinraj-marimuthu/CICD-Infra-Setup-for-PHP-application/blob/master/nginx.conf)
4. My GitHub Actions workflow which CI/CD'ed this project - [workflows/build.yaml](https://github.com/pravinraj-marimuthu/CICD-Infra-Setup-for-PHP-application/blob/master/.github/workflows/build.yaml)
5. My Ansible playbooks which automates the infra:
      - Tools and Dependencies installation play - [dependencies.yaml](https://github.com/pravinraj-marimuthu/CICD-Infra-Setup-for-PHP-application/blob/master/ansible/dependencies.yaml)
      - Configure Nginx play - [configure_nginx.yaml](https://github.com/pravinraj-marimuthu/CICD-Infra-Setup-for-PHP-application/blob/master/ansible/configure_nginx.yaml)
      - Deployment play - [deploy.yaml](https://github.com/pravinraj-marimuthu/CICD-Infra-Setup-for-PHP-application/blob/master/ansible/deploy.yaml)
      - My vault play - [vault.yaml](https://github.com/pravinraj-marimuthu/CICD-Infra-Setup-for-PHP-application/blob/master/ansible/vault.yaml)

### Project testing:

You can verify the setup as below:
  1. One of the [job](https://github.com/pravinraj-marimuthu/CICD-Infra-Setup-for-PHP-application/actions/runs/14758020410/job/41431271496) which
        - got triggered on push events
        - builds from the Dockerfile (dynamic tagging with git sha)
        - Pushes to DockerHub
        - Logs into my EC2 using the secrets (a deployment script [deploy.sh](https://github.com/pravinraj-marimuthu/CICD-Infra-Setup-for-PHP-application/blob/master/deploy.sh) is configured)
        - the script pulls the latest image
        - uses stack to deploy the changes
        - implements roll-back on failure
