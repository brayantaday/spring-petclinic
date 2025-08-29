pipeline {
    agent any

    environment {
        JAR_NAME = 'spring-petclinic-3.5.0-SNAPSHOT.jar'
        IMAGE_NAME = 'grupo03/spring-petclinic:latest'
    }

    stages {
        stage('Build JAR with Maven') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Check Docker') {
            steps {
                sh 'docker version'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }
    }
}
