# Runai with Conda
This sample project builds a custom Docker image with conda environment that is passed to the `runai` GPU distribution layer.

## Docker
The [Dockerfile](Dockerfile) builds on top of an existing [PyTorch docker image](https://ngc.nvidia.com/catalog/containers/nvidia:pytorch). It then takes the dependencies from the [environment file](env.yml) to generate a `toy` environment in the custom image. The image can be built by calling

```shell
sh build_docker.sh
```

## Submit a Job
A job can be submitted via `runai submit`. The complete call is safed inside the [submit.sh](submit.sh) bash script, e.g. call

```shell
sh submit.sh
```

### Run a Python Script
The submit shell script also calls the [run.sh](run.sh) shell script via the `--command` flag. This script activates `conda` and the `toy` environment, and executes the [toy.py](toy.py) Python script.
