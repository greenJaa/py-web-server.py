FROM python:3.9
RUN useradd -m -d /home/app_user -s /bin/bash app_user
USER app_user
WORKDIR /home/app_user
EXPOSE 8000
COPY py-web-server.py /home/app_user/app.py
CMD ["python3", "/home/app_user/app.py"]