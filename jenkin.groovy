pipeline {
    agent any
      tool {
        terragorm 'terraform'
      }
    stages{
        stage('Git Code checkout'){
            steps{
                git branch: 'main', url: 'https://github.com/Mahesh8887/project-kubernates.git' 
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
