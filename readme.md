# [dclong/jupyterhub-py](https://hub.docker.com/r/dclong/jupyterhub-py/)

JupyterHub with many popular Python 3 packages. 

## About the Author

[Personal Blog](http://www.legendu.net)   |   [GitHub](https://github.com/dclong)   |   [Bitbucket](https://bitbucket.org/dclong/)   |   [LinkedIn](http://www.linkedin.com/in/ben-chuanlong-du-1239b221/)

## Usage in Linux/Unix

```
docker run -d \
    --log-opt max-size=50m \
    -p 8888:8888 \ 
    -e DOCKER_USER=`id -un` \
    -e DOCKER_USER_ID=`id -u` \
    -e DOCKER_PASSWORD=`id -un` \
    -v $HOME:/jupyter \
    dclong/jupyterhub-py
```
```
docker run -d \
    --log-opt max-size=50m \
    -p 8888:8888 \
    -e DOCKER_USER=`id -un` \
    -e DOCKER_USER_ID=`id -u` \
    -v $HOME:/jupyter \
    dclong/jupyterhub-py
```
## Image Tree Related to [dclong/jupyterhub-py](https://hub.docker.com/r/dclong/jupyterhub-py/)

[dclong/ubuntu_b](https://hub.docker.com/r/dclong/ubuntu_b/)

- [dclong/python](https://hub.docker.com/r/dclong/python/)
    - [dclong/jupyterlab](https://hub.docker.com/r/dclong/jupyterlab/)
        - [dclong/jupyterhub](https://hub.docker.com/r/dclong/jupyterhub/)
            - [dclong/jupyterhub-py](https://hub.docker.com/r/dclong/jupyterhub-py/)

