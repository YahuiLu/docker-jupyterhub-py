FROM dclong/jupyterhub

RUN apt-get update \
    && apt-get install -y openjdk-8-jdk

RUN pip3 install \
        numpy scipy pandas \
        torch torchvision keras h2o \
        gensim \
        scikit-learn xgboost \
        matplotlib bokeh \
        tabulate \
        JayDeBeApi sqlalchemy sqlparse \
        pysocks \
        requests[socks] Scrapy beautifulsoup4 wget