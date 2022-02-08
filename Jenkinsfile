pipeline {
    agent any
environment {
        def scmUrl = 'scm.getUserRemoteConfigs()[0].getUrl()'
    }
    stages {
        stage('Hello') {
            steps {
                echo "${scmUrl}"
                url = bat(returnStdout: true, script: 'git config remote.origin.url').trim()
                println(url)
            }
        }
    }
}
