# conda remove -n tram --all -y
# conda create -n tram python=3.10 -y
# conda activate tram

conda install -c "nvidia/label/cuda-12.8.0" cuda-toolkit
pip install torch==2.7.1 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu128
pip install pytorch-lightning
pip install --no-build-isolation 'git+https://github.com/facebookresearch/detectron2.git@a59f05630a8f205756064244bf5beb8661f96180'

# Set CUDA environment variables for pytorch3d compilation
export CUDA_HOME=${CUDA_HOME:-/usr/local/cuda}
if [ -d "/usr/local/cuda-12.9" ]; then
    export CUDA_HOME=/usr/local/cuda-12.9
elif [ -d "/usr/local/cuda" ]; then
    export CUDA_HOME=/usr/local/cuda
fi
export PATH=$CUDA_HOME/bin:$PATH
export LD_LIBRARY_PATH=$CUDA_HOME/lib64:$LD_LIBRARY_PATH

pip install --no-build-isolation git+https://github.com/facebookresearch/pytorch3d.git@stable
pip install --no-build-isolation torch-scatter -f https://data.pyg.org/whl/torch-2.7.1+cu128.html

conda install -c conda-forge suitesparse

pip install pulp
pip install supervision

pip install open3d
pip install opencv-python
pip install loguru
pip install --no-build-isolation git+https://github.com/mattloper/chumpy
pip install einops
pip install plyfile
pip install pyrender
pip install segment_anything
pip install scikit-image
pip install smplx
pip install timm==0.6.7
pip install evo
pip install pytorch-minimize
pip install imageio[ffmpeg]
pip install numpy==2.2.6
pip install gdown
pip install openpyxl
# pip install git+https://github.com/princeton-vl/lietorch.git

