FROM dclong/jupyterhub

RUN apt-get update \
    && apt-get install -y openjdk-8-jdk

RUN conda install -y -c conda-forge -c pytorch -c glaxosmithkline \
        numpy scipy pandas dask \
        pytorch-cpu torchvision-cpu tensorflow keras h2o \
        gensim nltk \
        scikit-learn xgboost \
        matplotlib bokeh \
        tabulate \
        JayDeBeApi pymysql pymongo sqlalchemy sqlparse \
        pysocks \
        requests[socks] Scrapy beautifulsoup4 wget
