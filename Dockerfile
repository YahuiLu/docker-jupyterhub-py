FROM dclong/jupyterhub-jdk

RUN pip3 install --no-cache-dir --upgrade --ignore-installed entrypoints

RUN pip3 install --no-cache-dir \
        mypy pylint flake8 yapf pytest \
        numpy scipy pandas pyarrow \
        scikit-learn xgboost \
        matplotlib bokeh holoviews[recommended] \
        tabulate \
        JayDeBeApi sqlparse \
        requests[socks]

RUN jupyter labextension install @pyviz/jupyterlab_pyviz@next \
    && npm cache clean --force
