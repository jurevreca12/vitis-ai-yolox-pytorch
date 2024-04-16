FROM jurevreca12/vitis-ai-pytorch-gpu:3.0

RUN conda activate vitis-ai-pytorch && pip install psutil \
						   loguru \
						   tqdm \
						   thop \
						   ninja \
						   tabulate \
						   wandb==0.15.0 \
						   shapely \
						   pycocotools>=2.0.2 \
						   onnx>=1.13.0 \
						   onnx-simplifier==0.4.10

