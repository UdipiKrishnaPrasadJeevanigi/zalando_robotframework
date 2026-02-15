pipeline {
    agent {
        docker {
            image 'python:3.11'
            args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
    }
    
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/UdipiKrishnaPrasadJeevanigi/zalando_robotframework.git'
            }
        }

        stage('Setup Environment') {
            steps {
                sh '''
                    python3 -m venv venv
                    . venv/bin/activate
                    pip install --upgrade pip
                    pip install -r requirements.txt
                '''
            }
        }

        stage('Run Robot Framework Tests') {
            steps {
                sh '''
                    . venv/bin/activate
                    robot --outputdir results tests/
                '''
            }
        }
    }

    post {
        always {
            // Archive test results
            archiveArtifacts artifacts: 'results/**/*', allowEmptyArchive: true

            // Publish Robot Framework results
            robot outputPath: 'results',
                  logFileName: 'log.html',
                  reportFileName: 'report.html',
                  outputFileName: 'output.xml'
        }
    }
}