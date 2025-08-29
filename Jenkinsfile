pipeline {
    agent any

    environment {
        JAR_NAME = 'spring-petclinic-2.3.0.BUILD-SNAPSHOT.jar'
        IMAGE_NAME = 'grupo03/spring-petclinic:latest'
    }

    stages {
        stage('Build JAR with Maven') {
            agent {
                docker {
                    image 'maven:3.5.0'
                    args '-v $HOME/.m2:/root/.m2' // para cache de dependencias
                }
            }
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }
    }
}
