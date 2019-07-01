FROM dclong/jupyterhub-jdk

RUN pip3 install --no-cache-dir --upgrade --ignore-installed entrypoints

RUN pip3 install --no-cache-dir \
        mypy pylint flake8 yapf pytest xonsh \
        numpy scipy pandas pyarrow==0.12.1 dask[complete] \
        scikit-learn xgboost \
        matplotlib bokeh holoviews[recommended] hvplot \
        tabulate \
        JayDeBeApi sqlparse \
        requests[socks] lxml

RUN jupyter labextension install @pyviz/jupyterlab_pyviz \
    && npm cache clean --force
