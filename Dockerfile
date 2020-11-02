# getting base python image
FROM  python:3.7.9-slim-buster

# running pip
RUN pip install pdftitle

# create work dir
WORKDIR /pdfutil

# cmd
CMD ["/bin/bash"]
