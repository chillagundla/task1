FROM python

WORKDIR /app
# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt .
ENV DB_URL=mysql://admin:Sri_7999@mysql-database.c3xbx00f9wvt.ap-south-1.rds.amazonaws.com/aws

#this runs when image is built
RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

ENTRYPOINT [ "python" ,"app.py" ]