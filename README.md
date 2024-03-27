# vitis-ai-gpu-pytorch
Builds a docker file for training neural networks with Vitis-AI 3.0 packages for quantization and compilation.
This downloads the Vitis-AI repository inside the docker, so you need to have the repository in the same directory
as you have the neural network code. 

```
docker build -t vitis-ai-gpu-pytorch -f vitis-ai-gpu-pytorch.Dockerfile . <br>
docker run --rm -ti vitis-ai-gpu-pytorch bash
```

Inside docker then first run:
```
conda activate vitis-ai-pytorch
```
