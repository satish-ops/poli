pipeline {
    agent any


    parameters { 
        string(defaultValue: "https://github.com", description: 'Whats the github URL?', name: 'URL')
    }


    stages {
        stage('Checkout Git repository') {
           steps {
                git branch: 'master', url: "${params.URL}"
            }
        }

        stage('echo') {
           steps {
                echo "${params.URL}"
            }
        }
    }
}
