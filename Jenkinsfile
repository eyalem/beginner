pipeline {

    agent {label 'ec2'}

    stages{
        stage('Build') {
            steps{
                sh "docker build -t eyal:$BUILD_NUMBER ."
                }
            }

        stage('Push') {
            steps {
                sh """
                aws ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin 517579239930.dkr.ecr.eu-central-1.amazonaws.com
                docker tag eyal:$BUILD_NUMBER 517579239930.dkr.ecr.eu-central-1.amazonaws.com/eyal:$BUILD_NUMBER
                docker push 517579239930.dkr.ecr.eu-central-1.amazonaws.com/eyal:$BUILD_NUMBER
                   """
            }
        }
        
    }
}
