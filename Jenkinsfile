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

    post {
        always {
            script {
                if ($GIT_BRANCH == 'dev') {
                    // Push to dev repo in Docker Hub
                    sh 'export DOCKER_CAPSTONE_IMAGE=pavi2244/dev:latest'
                    sh './deploy.sh'
                } else if ($GIT_BRANCH == 'main') {
                    // Push to prod repo in Docker Hub
                    sh 'export DOCKER_CAPSTONE_IMAGE=pavi2244/prod:latest'
                    sh './deploy.sh'
                }
            }
        }
    }
}

