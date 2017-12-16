# Pull node image from Docker Hub
docker pull node

# Pull mongo image from Docker Hub
docker pull mongo

# Create a container using the mongo image from step 2
docker run --name usermanagerdb -p 192.168.99.100:27017:27017 mongo

# Build app image from the Dockerfile in the project root
docker build -t josh/usermanager .

# Create a container using the docker image from step 4
docker run --name usermanager -p 192.168.99.100:3000:3000 josh/usermanager