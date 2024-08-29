pipeline {
    agent { label 'server1-andy-risdiyanto'}
    tools { nodejs 'nodejs-18' }

    stages {
        stage('Checkout SCM') {
            steps {
                git branch: 'main', url: 'https://github.com/andy-risdiyanto/simple-apps.git'
            }
        }
        stage('Build') {
            steps {
                sh '''cd apps
                npm install'''
            }
        }
        stage('Testing') {
            steps {
                sh '''cd apps
                npm test
                npm run test:coverage'''
            }
        }
        stage('Code Review') {
            steps {
                sh '''cd apps
                sonar-scanner \
                -Dsonar.projectKey=simple-apps \
                -Dsonar.sources=. \
                -Dsonar.host.url=http://172.23.10.20:9000 \
                -Dsonar.login=sqp_af7fa92b945858895cfca5144b923dea6d395ae5'''
            }
        }
        stage('Deploy compose') {
            steps {
                sh '''
                docker compose build
                docker compose down --volumes
                docker compose up -d
                '''
            }
        }
    }
}