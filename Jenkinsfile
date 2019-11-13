// name of the template that will be created
def templateName = 'wm-msr-runtime'

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
                sh '${WORKSPACE}/Build.sh ${templateName}'
            }
        }
		stage('tag') {
			steps {
				script {
					openshift.withCluster() {
						openshift.withProject() {
							// if everything else succeeded, tag the ${templateName}:latest image as ${templateName}-staging:latest
							// a pipeline build config for the staging environment can watch for the ${templateName}-staging:latest
							// image to change and then deploy it to the staging environment
							openshift.tag("${templateName}:latest", "${templateName}-staging:latest")
						}
					}
				} // script
			} // steps
		} // stage
		stage('Deploy'){
            steps {
                sh '${WORKSPACE}/Deploy.sh'
            }
        }
    }
}
