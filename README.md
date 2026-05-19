# IF THE NVIDIA TOOL KIT ISNT INSTALLED 
PART 1 

1. Download and configure the production package repository keys
curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \
  && curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list | \
    sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
    sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list

 2. Update your local package index
sudo apt-get update

 3. Install the NVIDIA container tools
sudo apt-get install -y nvidia-container-toolkit

 4. Restart the Docker background service to apply changes
sudo systemctl restart docker



# INSTRUCTIONS FOR RUNNING TESTS if nvdia tool kit is installed

 # 1. build docker container 
 docker build -t dl-project-env .

# 2.  Run this command. The `-v "$(pwd)/results:/app/results"` part acts as a live portal. Anything the script creates inside the container will automatically show up in a folder named `results` on your real hard drive:
    docker run --gpus all -it -v "$(pwd)/results:/app/results" dl-project-env

    (Note: If the `results` folder doesn't exist on your laptop yet, Docker will create it automatically.)
  
# 2.5 In case of not having an NVIDIA GPU
docker run -it -v "$(pwd)/results:/app/results" dl-project-env

  
# 3. Start your batch script:
    ./run_tests.sh

    
# 4. Leave 
    exit


    Where are your results? Open your normal file explorer on your laptop or look inside your project folder. You will see a native folder named `results/` containing every single confusion matrix, plot, and log file completely preserved and safe on your actual computer