FROM dclong/jupyterhub

RUN conda install -c conda-forge \
        numpy scipy pandas dask \
        tensorflow keras h2o scikit-learn nltk \
        matplotlib seaborn bokeh plotly \ 
        tabulate \
        JayDeBeApi pymysql pymongo sqlalchemy \
        pysocks \
        requests[socks] Scrapy beautifulsoup4 wget \
        ansible

# RUN jupyter labextension install jupyterlab_bokeh \
    # && jupyter lab build
