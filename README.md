# autoStartDocker
a simple bash script to automatically start the docker daemon 

# How to Run (macOS)
## 1. Open Terminal

## 2. Navigate to the directory containing the script
- Navigate to the folder containing your script using the `cd` command. For example:
    ```bash
    cd /path/to/autoStartDocker
    ```
## 3. Make the Script Executable
- Make the script executable by running:
    ```bash
    chmod +x start_docker.sh
    ```

## 4. Run the Script
- Run the script by using:
    ```bash
    ./start_docker.sh
    ```

> **Note**: If the script is in your current directory, use `./` before the script name to specify the current path.


## 5. The script will automatically start the docker daemon

## 6. You can verify that the docker daemon is running by running `docker ps` in the terminal
- example:
    ```bash
    docker ps
    ```
## 7. To stop the docker daemon, run `docker stop` in the terminal
- example:
    ```bash
    docker stop
    ```

## 8. To restart the docker daemon, run `docker restart` in the terminal
- example:
    ```bash
    docker restart
    ```

## 9. To check the status of the docker daemon, run `docker info` in the terminal
- example:
    ```bash
    docker info
    ```

## 10. To check the version of the docker daemon, run `docker --version` in the terminal
- example:
    ```bash
    docker --version
    ```

## 11. To check the version of the docker client, run `docker version` in the terminal
- example:
    ```bash
    docker version
    ```