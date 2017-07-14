iosNode = 'jenkins-slave-mac'

//MAIN BLOCK BEGIN

if ("${env.BRANCH_NAME}" ==~ /PR-\d*/) {
  echo "Performing stages for pull request branch ${env.BRANCH_NAME}"
  
} else if ("${env.BRANCH_NAME}" ==~ /no_modules/) {
  echo "Performing stages after merge to branch ${env.BRANCH_NAME}"

}

//MAIN BLOCK END
