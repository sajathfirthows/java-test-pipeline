pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'gradle clean build'
            }
        }
    }

    post {
        success {
            echo 'Build successful! Deploying...'
            // Add deployment steps on success
        }
        failure {
            echo 'Build failed! Notify the team...'
            // Add notification or alert steps on failure
        }
    }
}
