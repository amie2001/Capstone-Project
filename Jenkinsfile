pipeline {
    agent any
    stages {
        stage ('Changing the file permission') {
            steps {
                sh 'chmod +x build.sh'
            }
        }

        stage('Build and Push Image') {
            steps {
                script {
                    sh './build.sh'
                }
            }
        }
    }

   )
