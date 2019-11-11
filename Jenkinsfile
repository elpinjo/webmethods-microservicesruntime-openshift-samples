pipeline {
    agent {
		node {
			label 'base'
		}
	}

    stages {
        stage('Initialize'){
            steps {
                sh 'chmod -R 777 ${WORKSPACE}'
				sh 'whoami'
				sh 'id'
				sh 'groupadd msrnamespace'
				sh 'usermod -a -G msrnamespace root'
            }
        }
	/*	stage('Clean'){
            steps {
                sh '${WORKSPACE}/Cleanup.sh'
        	}
        } 
    */
		stage('Build'){
            steps {
                sh '${WORKSPACE}/Build.sh'
            }
        }
		stage('Deploy'){
            steps {
                sh '${WORKSPACE}/Deploy.sh'
            }
        }
    }
}
