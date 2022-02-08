pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
                def scmUrl = scm.getUserRemoteConfigs()[0].getUrl()
            }
        }
    }
}
