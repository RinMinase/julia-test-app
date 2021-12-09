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

### Running the project **with** Revise

- Run the Julia Shell then include the main jl file (revise importer file)

    ```
    julia> include("run.jl")
    ```

### Running the project **without** Revise

- Run the Julia Shell then include the main jl file

    ```
    julia> include("src/app.jl")
    ```

### Running the project test cases

- Run the Julia Shell then include the main tests file

    ```
    julia> include("tests.jl")
    ```

### Running the project **per exercise**

- If you want to include the exercise file

    ```
    julia> include("src/modules/1_hello-world.jl")
    ```

### Running the project test case **per exercise**

- If you want to include the exercise file

    ```
    julia> include("src/modules/1_hello-world_test.jl")
    ```

    Filename format is:
    ```
    <exercise number>_<exercise title>_test.jl

- If you want to test the exercise file

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
