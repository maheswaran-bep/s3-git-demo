pipeline {
    agent any  // Use any available agent (or node)

    stages {
        stage('Checkout') {
            steps {
                // Clone your Git repository
                git branch: 'master', url : 'https://github.com/maheswaran-bep/s3-git-demo.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Building the project...'
                // Example: for Maven, Node, or Python projects
                // sh 'mvn clean install'
                // sh 'npm install'
                // sh 'python setup.py build'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                // sh 'mvn test'
                // sh 'pytest tests/'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying application...'
                // Add your deployment commands here
            }
        }
    }

    post {
        success {
            echo 'Build succeeded!'
        }
        failure {
            echo 'Build failed!'
        }
    }
}
