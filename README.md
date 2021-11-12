# Julia Test Application

## Project Setup running Natively

1. Clone the project

    ```
    git clone https://github.com/RinMinase/julia-test-app.git
    ```

2. Run the Julia Shell then input

    ```
    include("src\\hello-world.jl")
    ```

## Project Setup using Docker

1. Clone the project

    ```
    git clone https://github.com/RinMinase/julia-test-app.git
    ```

2. Build the Julia Docker image

    ```
    docker build --build-arg ROOT_PASSWORD=root -t julia-app .
    ```

    Modify the `root` in `ROOT_PASSWORD` above to a root password of your choice

3. Run the Docker image

    ```
    docker run -it --name julia-app -v ./src:/home/julia/ julia:latest
    ```
