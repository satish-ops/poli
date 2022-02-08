pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
                script {
                    echo "hey URL: ${GIT_REPO_URL}
                }
            }
        }
    }
}
