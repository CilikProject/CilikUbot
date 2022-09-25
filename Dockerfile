#==============×==============#
#      Created by: Alfa-Ex
#=========× AyiinXd ×=========#

FROM ayiinxd/ayiin-userbot:buster

RUN git clone -b CilikUbot https://github.com/CilikProject/CilikUbot /home/cilikubot/ \
    && chmod 777 /home/cilikubot \
    && mkdir /home/cilikubot/bin/

COPY ./sample_config.env ./config.env* /home/cilikubot/

WORKDIR /home/cilikubot/

RUN pip install -r requirements.txt

CMD ["bash","start"]
