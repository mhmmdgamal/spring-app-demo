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
            git branch: 'master', credentialsId: 'github', url: 'https://github.com/mhmmdgamal/spring-app-demo.git'
        }
    }
}
