%!/bin/bash

# support for RTX 50 series e.g., 5090
conda create -n 3dgs python=3.10 -y
conda activate 3dgs
pip install plyfile tqdm opencv-python
pip install torch==2.8.0+cu129 torchvision --index-url https://download.pytorch.org/whl/cu129
conda install nvidia::cuda-toolkit==12.9.0

cd submodules/diff-gaussian-rasterization
python setup.py install

cd ..
cd submodules/fused-ssim
python setup.py install

cd ..
cd submodules/simple-knn
python setup.py install

