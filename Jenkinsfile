pipeline {
    agent any

    environment {
        GRADLE_HOME = tool 'Gradle'
        PATH = "${GRADLE_HOME}/bin:${env.PATH}"
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                script {
                    withGradle {
                        sh 'gradle clean build'
                    }
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    withGradle {
                        sh 'gradle test'
                    }
                }
            }
        }

        stage('Deploy') {
            steps {
                // Add deployment steps here if needed
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

def withGradle(Closure body) {
    withEnv(['GRADLE_OPTS=-Dorg.gradle.daemon=false']) {
        withCredentials([usernamePassword(credentialsId: 'gradle', usernameVariable: 'GRADLE_USER', passwordVariable: 'GRADLE_PASSWORD')]) {
            sh 'chmod +x gradlew'
            body()
        }
    }
}
