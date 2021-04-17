VER=1.7.0
IMAGE_NAME=./pytorch_gpu_${VER}.simg

#build
sudo singularity build ${IMAGE_NAME} ./Singularity.${VER}

# test pytorch
singularity exec --nv ${IMAGE_NAME} python -c "import torch;print('pytorch version: ' + torch.__version__)"

echo image: ${IMAGE_NAME}
