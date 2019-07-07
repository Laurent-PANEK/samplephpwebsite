pipeline {
    agent any
    triggers {
        cron 'H/60 * * * *'
    }
    environment {
        LATEST_VERSION = '1'
        HUB_CREDS = credentials('hub-creds')
    }
    stages {
        stage('Install & Check') {
            agent {
                docker {
                    image 'php:7.0'
                    reuseNode true
                }
            }
            steps {
                sh 'id'
                echo 'Install PHPUnit'
                sh 'apt-get update'
                sh 'apt-get install -y wget'
                sh 'wget -O phpunit https://phar.phpunit.de/phpunit-6.phar'
                sh 'chmod +x phpunit'
                echo 'Check version'
                sh 'php -v'
                sh './phpunit --version'
            }
        }
        stage('Test') {
            agent {
                docker {
                    image 'php:7.0'
                    reuseNode true
                }
            }
            steps {
                sh './phpunit tests.php'
            }
        }
        stage('Build') {
            steps {
                sh "docker build -t laurentpanek/samplephpwebsite:$LATEST_VERSION -t laurentpanek/samplephpwebsite:$LATEST_VERSION.$BUILD_NUMBER ."
            }
        }
        stage('Push') {
            steps {
                sh "docker login -u $HUB_CREDS_USR -p $HUB_CREDS_PSW"
                sh "docker push laurentpanek/samplephpwebsite:$LATEST_VERSION"
                sh "docker push laurentpanek/samplephpwebsite:$LATEST_VERSION.$BUILD_NUMBER"
            }
        }
        stage('Clean') {
            steps {
                sh "docker image rm -f laurentpanek/samplephpwebsite:$LATEST_VERSION"
                sh "docker image rm -f laurentpanek/samplephpwebsite:$LATEST_VERSION.$BUILD_NUMBER"
            }
        }
        stage('Deploy') {
            steps {
                sh 'ls -al'
                sh 'docker-compose down || true'
                sh 'docker-compose up -d --build'
            }
        }
    }
}