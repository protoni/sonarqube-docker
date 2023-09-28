#### Description


#### Build
```
docker build -t test-sonarqube .
```

#### Shell access to container
```
docker run -it test-sonarqube /bin/bash
```

#### Run
```
docker run -d --name test-sonarqube-container -p 9000:9000 test-sonarqube
```