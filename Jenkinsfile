node {
  stage 'Checkout'
  git url: 'https://github.com/forgeuser007/apacheam.git'

  stage 'build'
  docker.build('apacheam:v2')

  stage 'deploy'
  sh './deploy.sh'
}
