pipeline {
  agent any 
  parameters {
    
    choice(name: "TF", choices: ["apply","destroy"],    description: "Select the /tf action")

  }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
    
        stage ("terraform init") {
            steps {
                sh ("terraform init -reconfigure") 
            }
        }
        
        stage ("plan") {
            steps {
                sh ('terraform plan') 
            }
        }

        stage (" Action") {
            steps {
                echo "Terraform action is --> creating eks"
              sh 'terraform ${TF} --auto-approve'
              sh 'terraform state list'
           }
     
        }
    }
}
