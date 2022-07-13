To build docker image:

docker build -t <name of image> .

To run the docker image and run bandit cd into the directory containing the python source code as this will be scanned:

docker run --rm -v $(pwd):/src --user $(id-u):$(id-g) haraamzadaa/bandit -r /src -f json -o /src/bandit-out.json
