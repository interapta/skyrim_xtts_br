# Use an official NVIDIA base image with CUDA support
FROM artfromthemachine/xtts_api_server:latest

LABEL description="Docker image for xtts-api-server mantella"

COPY latent_speaker_folder /app/latent_speaker_folder

# Instale o DeepSpeed versão 0.14.0
RUN pip install deepspeed==0.14.0

#teste