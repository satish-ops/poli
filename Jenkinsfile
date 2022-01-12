pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
                bat 'echo %AME% > AME.txt'
                script{
                def version = readFile "${env.WORKSPACE}/AME.txt"
                //print(version)
                String[] a = version.split("\\\\")
                b =(a[-2])
                //println(b)
                c = version.replace(b , "20.1")
                print(c)
                bat 'hey.bat'
                bat 'setx  AME "C:\\Users\\PKS1\\AppData\\Roaming\\winbin\\lms\\amesim\\19.1\\vendor"'
                }
            }
        }
    }
}
