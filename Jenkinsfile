pipeline {
     agent { 
     docker {
      image 'gradle:7-jdk11'
      // args '-v /root/.m2:/root/.m2'
    }
     }
     stages {
         
        stage('Clone Project') {
             steps {                  
                  checkout scm                  
             }
         }
        
        stage('listing1') {
             steps {                  
                    
                  sh 'ls -l'
             }              
         }
        
        stage('Build') {
            steps {
               
                sh './gradle wrapper '
            }
        }
        
         
     }
 }
