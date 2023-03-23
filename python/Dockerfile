FROM python:3.10

RUN python -m pip install -i https://pypi.tuna.tsinghua.edu.cn/simple --upgrade pip && \
    pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple && \
    pip install -i https://mirrors.ustc.edu.cn/pypi/web/simple \
    flask \
    mysql-connector-python \
    sqlalchemy \
    requests \
    pandas \
    openpyxl \
    docxtpl \
    openai \
    beautifulsoup4 \
    lxml 

# docker build -t keane/python:3.10 .
# docker run -it --name py3 -v ~/code/python/project:/myapp -w /myapp -p 5000:5000 keane/python:3.10