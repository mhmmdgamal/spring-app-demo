pipeline {
    agent any
    tools {
        maven 'Maven3'
        jdk 'Java17'
    }
    stages {
        stage('Clean Workspace') {
            steps {
                cleanWs()
            }
        }
        stage('Checkout from git') {
            steps {
                git branch: 'master', credentialsId: 'github', url: 'https://github.com/mhmmdgamal/spring-app-demo.git'
            }
        }
        stage('Build App') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Test App') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Sonarqube Analysis') {
            steps {
                withSonarQubeEnv(credentialsID: 'sonar-token') {
                    sh 'mvn sonar:sonar'
                }
            }
        }
    }
}
