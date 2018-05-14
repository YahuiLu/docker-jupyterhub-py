FROM dclong/jupyterhub

RUN apt-get update \
    && apt-get install -y openjdk-8-jdk

RUN conda install -c conda-forge -c glaxosmithkline \
        numpy scipy pandas dask \
        torch torchvision tensorflow keras h2o \
        gensim nltk \
        scikit-learn xgboost \
        matplotlib bokeh \
        tabulate \
        JayDeBeApi pymysql pymongo sqlalchemy sqlparse \
        pysocks \
        requests[socks] Scrapy beautifulsoup4 wget

