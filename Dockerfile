FROM dclong/jupyterhub-jdk

RUN pip3 install --upgrade --ignore-installed entrypoints

RUN pip3 install \
        mypy pylint flake8 yapf pytest poetry \
        numpy scipy pandas pyarrow \
        scikit-learn xgboost \
        matplotlib bokeh holoviews[recommended] \
        tabulate \
        JayDeBeApi sqlparse \
        requests[socks]

RUN jupyter labextension install @pyviz/jupyterlab_pyviz
