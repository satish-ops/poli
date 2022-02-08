pipeline {
    agent any
environment {
        def scmUrl = 'scm.getUserRemoteConfigs()[0].getUrl()'
    }
    stages {
        stage('Hello') {
            steps {
                echo "${scmUrl}"
            }
        }
    }
}
