pipeline {
    agent any
    environment {
        def back = "${WORKSPACE}"+"\\lokp\\upload.bat"
    }

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
                dir ("$back") {
                    bat 'upload.bat'
                }
            }
        }
    }
}
