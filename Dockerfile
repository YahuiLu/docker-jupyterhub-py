FROM dclong/jupyterhub-jdk

RUN pip3 install \
        mypy pylint flake8 monkeytype yapf \
        numpy scipy pandas \
        torch torchvision keras h2o \
        gensim \
        scikit-learn xgboost \
        matplotlib bokeh \
        tabulate \
        JayDeBeApi sqlalchemy sqlparse \
        pysocks \
        requests[socks] Scrapy beautifulsoup4 wget

RUN jupyter labextension install jupyterlab_bokeh \
    && jupyter labextension install jupyterlab-flake8
