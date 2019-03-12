FROM dclong/jupyterhub-jdk

RUN pip3 install --ignore-installed entrypoints

RUN pip3 install \
        mypy pylint flake8 monkeytype yapf pytest \
        numpy scipy pandas \
        torch torchvision keras h2o \
        gensim \
        scikit-learn xgboost \
        matplotlib bokeh holoviews[recommended] \
        tabulate \
        JayDeBeApi sqlalchemy sqlparse \
        pysocks \
        requests[socks] Scrapy beautifulsoup4 wget

RUN jupyter labextension install @pyviz/jupyterlab_pyviz
