FROM python

RUN pip install numpy

COPY ./test_data/test.fa /test_data/test.fa.py
COPY ./scripts/slicer.py /scripts/slice_counter.py
RUN chmod +x /scripts/slice_counter.py

ENTRYPOINT [ "python", "/scripts/slice_counter.py" ]
CMD [ "/test_data/test.fa" ]