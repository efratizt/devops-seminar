
pipeline {
    agent none
    stages {
        stage('Back-end') {
            agent {
                docker { image 'maven:3.8.1-adoptopenjdk-11' }
            }
            steps {
                sh 'mvn --version'
            }
        }
        stage('Front-end') {
            agent {
                docker { image 'node:16.13.1-alpine' }
            }
            steps {
                sh 'node --version'
            }
        }
        stage('Build') {
            steps {
                echo 'Building '
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('integrationTest') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}