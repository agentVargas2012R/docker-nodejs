# Build Image
docker build -t node-web-app .

# Start Nodemon container w/ volume
docker run -d --name node-web-app -p 49160:8080 -v D:/workspace/docker:/usr/nodejs/app  node-web-app 

# Enter Container
docker exec -it <container id> /bin/bash

# Run Production Mode
docker run -d -p 49160:8080 node-web-app


