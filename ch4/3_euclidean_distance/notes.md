if you are using vscode and docker using devcontainrs , when you want to profile the code using insighs extention , you need to run the containr with additonal privirages ie for example
```sh
docker run -it --rm --gpus all --cap-add=SYS_ADMIN -v ./:/code nvidia/cuda:12.0.0-devel-ubuntu20.04 bash

```
then you can run the command for profiling using 
```sh
ncu -o ./report.rpt ./euclidean_distance
```