# Julia Test Application

## Project Setup with Revise

1. Clone the project

    ```
    git clone https://github.com/RinMinase/julia-test-app.git
    ```

2. Run the Julia Shell and install the Revise package

    ```
    julia> using Pkg
    julia> Pkg.add("Revise")
    ```

### Running the project with Revise

1. Run the Julia Shell then input

    ```
    julia> include("run.jl")
    ```

## Project Setup using Docker __(untested)__

1. Build the Julia Docker image

    ```
    docker build --build-arg ROOT_PASSWORD=root -t julia-app .
    ```

    Modify the `root` in `ROOT_PASSWORD` above to a root password of your choice

2. Run the Docker image

    ```
    docker run -it --name julia-app -v ./src:/home/julia/ julia:latest
    ```

## Project Functions

| Function  | Description               |
| --------- | ------------------------- |
| `hello()` | Prints out "Hello world"  |
