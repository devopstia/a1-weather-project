# Clean Up

```
To stop and delete all containers
docker rm -f $(docker ps -aq)
Delete all images
docker rmi -f $(docker images -aq)
```

## GitHub hook trigger for GITScm polling:
```groovy
pipeline {
    agent any

    triggers {
        githubPush()
    }

    stages {
        stage('Build') {
            steps {
                // Your build steps go here
            }
        }
    }
}
```

## Poll SCM:
```groovy
pipeline {
    agent any

    triggers {
        pollSCM('H/5 * * * *')
    }

    stages {
        stage('Build') {
            steps {
                // Your build steps go here
            }
        }
    }
}
```

## Build periodically:
```groovy
pipeline {
    agent any

    triggers {
        cron('0 0 * * *')
    }

    stages {
        stage('Build') {
            steps {
                // Your build steps go here
            }
        }
    }
}
```