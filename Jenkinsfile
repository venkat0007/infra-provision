pipeline {
    agent any

    stages {
        stage('Clone repository') {
            steps {
                script {
                    // Define the repository URL
                    def repoUrl = 'https://github.com/venkat0007/infra-provision.git'

                    // Define the branch name
                    def branchName = 'main'

                    // Checkout the repository with the specified branch
                    checkout([$class: 'GitSCM', 
                              branches: [[name: "refs/heads/${branchName}"]],
                              userRemoteConfigs: [[url: repoUrl]]])
                }
            }
        }
       stage("terraform init and plan")
       {
           steps {
                script {
                    // Define the folder path
                    def folderPath = 'ec2'

                    // Change directory to the specified folder and run command
                    dir(folderPath) {
                        sh '''
                            # Run commands inside the changed directory
                            terraform init
                            terraform plan
                        '''
                    }
                }
           
           }
	   }
    stage("terraform apply")
       {
           steps {
                script {
                    // Define the folder path
                    def folderPath = 'ec2'

                    // Change directory to the specified folder and run command
                    dir(folderPath) {
                        sh '''
                            # Run commands inside the changed directory
                            terraform apply -auto-approve
                        '''
                    }
                }
           }
	   }

       }
    }
