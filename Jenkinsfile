pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                script {
                    // Your Gradle build command goes here
                    sh 'gradle clean build'
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    // Your Gradle test command goes here
                    sh 'gradle test'
                }
            }
        }

        stage('Deploy') {
            steps {
                // Your deployment steps go here if needed
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
