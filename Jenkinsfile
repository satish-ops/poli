pipeline {
    agent any
environment {
        def scmUrl = 'scm.getUserRemoteConfigs()[0].getUrl()'
    }
    stages {
        stage('Hello') {
            steps {
                script {
                //echo "${scmUrl}"
                def scmUrl = bat scm.getUserRemoteConfigs()[0].getUrl()
                println(scmUrl)
                }
            }
        }
    }
}
