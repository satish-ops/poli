pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
                //cp "hello.sh hello1.sh"
                bat "$WORKSPACE//upload.bat"
            }
        }
    }
}
