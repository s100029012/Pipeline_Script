pipeline {
    agent any
    
    stages {
    
    stage('Non-Parallel Stage') {
       // agent {
    //                     label "master"
    //             }
        steps {
                echo 'This stage will be executed first'
                // bat 'echo "Path=%Path%"'
                
                // echo 'Path= ${env.Path}'
                git branch: 'dev/local', url: 'https://github.com/s100029012/Pipeline_Script.git'
                bat '%CD%/spring-boot/gradlew.bat -b %CD%/spring-boot/build.gradle build'

                bat 'kill-java.bat'
                // bat '%JAVA_HOME%/bin/java -jar spring-boot/build/libs/spring-boot-0.0.1-SNAPSHOT.jar'
                bat 'start-app.bat'
                
                }
        }

    
        stage('Run Tests') {
            parallel {
                stage('Test On Windows') {
                    // agent {
                    //     label "Windows_Node"
                    // }
                    steps {
                        echo "Task1 on Agent"
                    }
                    
                }
                stage('Test On Master') {
                    // agent {
                    //     label "master"
                    // }
                    steps {
                        echo "Task1 on Master"
                    }
                }
            }
        }
    }
}
