# Use an official NVIDIA base image with CUDA support
#FROM artfromthemachine/xtts_api_server:latest

#LABEL description="Docker image for xtts-api-server mantella"

#COPY latent_speaker_folder /app/latent_speaker_folder

# Instale o DeepSpeed versão 0.14.0
#RUN pip install deepspeed==0.14.0

# Use an official NVIDIA base image with CUDA support
FROM artfromthemachine/xtts_api_server:latest

LABEL description="Docker image for xtts-api-server mantella"

COPY latent_speaker_folder /app/latent_speaker_folder

# Install the specified compatible versions
RUN pip install torch==1.10.1+cu113 torchaudio==0.10.1 -f https://download.pytorch.org/whl/torch_stable.html

# Install DeepSpeed version 0.14.0
RUN pip install deepspeed==0.14.0 transformers==4.28.0

# Optional: Validate the DeepSpeed installation
RUN python -c "import deepspeed; deepspeed.ops.op_builder.InferenceBuilder().load()"

# Command to start the application
CMD ["python", "your_application.py"]
