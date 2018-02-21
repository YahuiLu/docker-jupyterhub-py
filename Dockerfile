FROM dclong/jupyterhub

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        libssl-dev \
    && apt-get autoremove \
    && apt-get autoclean 

RUN pip3 install \
        numpy scipy pandas dask \
        tensorflow keras h2o scikit-learn nltk \
        matplotlib seaborn bokeh plotly \ 
        tabulate \
        JayDeBeApi pymysql pymongo sqlalchemy \
        pysocks \
        requests[socks] Scrapy beautifulsoup4 wget \
        ansible

RUN jupyter labextension install jupyterlab_bokeh \
    && jupyter lab build

ENTRYPOINT ["/scripts/init.sh"]
