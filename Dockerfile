FROM dclong/jupyterhub

RUN apt-get update \
    && apt-get install -y openjdk-8-jdk

RUN conda install -c conda-forge -c glaxosmithkline \
        numpy scipy pandas dask \
        tensorflow keras h2o scikit-learn nltk \
        matplotlib seaborn bokeh plotly \ 
        tabulate \
        JayDeBeApi pymysql pymongo sqlalchemy sqlparse \
        pysocks \
        requests[socks] Scrapy beautifulsoup4 wget

