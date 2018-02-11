FROM postgres:10.1

ENV BASE_URL 'ftp://apca.com.au/'
ENV KEY_ABBREVIATION_FILE 'KEY TO ABBREVIATIONS AND BSB NUMBERS Oct 2017.csv'
ENV BASE_DATA_FILE 'BSBDirectoryOct17-259.csv'
ENV UPDATE_FILE 'BSB Directory Update 02Nov17-01Dec17.csv'

ADD setup /
ADD docker-entrypoint-initdb.d /docker-entrypoint-initdb.d
ADD SqlScripts /SqlScripts
RUN /setup
