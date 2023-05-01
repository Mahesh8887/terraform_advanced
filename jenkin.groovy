pipeline {
    agent any
      tool {
        terragorm 'terraform'
      }
    stages{
        stage('Git Code checkout'){
            steps{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Mahesh8887/terraform_advanced.git']]) 
            }
        }
        stage('terraform init'){
            steps{
                sh 'terraform init' 
            }
        }
         stage('terraform validate'){
            steps{
                sh 'terraform validate' 
            }
        }
           stage('terraform plan'){
            steps{
                sh 'terraform plan' 
            }
        }
           stage('terraform action'){
            steps{
                sh 'terraform apply --auto-approve' 
            }
        }
    }
}