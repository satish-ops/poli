pipeline {
    agent any
    environment {
        def back = "${WORKSPACE}"+"\\lokp\\hello.sh"
    }

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
                dir ($BACK) {
                    sh 'hello.sh'
                }
            }
        }
    }
}
