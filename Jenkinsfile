pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
                script {
                hey = ${env.GIT_URL}
                 print(hey)
                }
            }
        }
    }
}
