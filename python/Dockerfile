FROM python:3.10

RUN pip install flask -i https://pypi.tuna.tsinghua.edu.cn/simple \
    && pip install mysql-connector-python -i https://pypi.tuna.tsinghua.edu.cn/simple \
    && pip install sqlalchemy -i https://pypi.tuna.tsinghua.edu.cn/simple \
    && pip install requests -i https://pypi.tuna.tsinghua.edu.cn/simple \
    && pip install pandas -i https://pypi.tuna.tsinghua.edu.cn/simple \
    && pip install openpyxl -i https://pypi.tuna.tsinghua.edu.cn/simple

# docker run -it --name py3 -v ~/code/www:/myapp -w /myapp -p 5000:5000