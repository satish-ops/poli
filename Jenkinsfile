pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
                script {
                hey = bat 'scm.getUserRemoteConfigs()[0].getUrl()'
                print(hey)
                }
            }
        }
    }
}
