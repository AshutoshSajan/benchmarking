#!/usr/bin/env groovy

pipeline {
  // agent any

  // environment {
  //   git_commit_message = ''
  //   git_commit_diff = ''
  //   git_commit_author = ''
  //   git_commit_author_name = ''
  //   git_commit_author_email = ''
  // }

  stages {
    stage('Build') {
      steps {
        echo 'Building...'
        echo 'npm run build'
      }
    }
    stage('Test') {
      steps {
        echo 'Testing...'
        echo 'npm run test'
      }
    }
  }
}