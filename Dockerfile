# getting base python image
FROM  python:3.8

# installing packages
RUN apt-get update && apt-get install -y \
      parallel && \
    pip install --no-cache  --upgrade \
      pdftitle && \
    rm -rf /var/lib/apt/lists/*

# create work dir
WORKDIR /usr/local/src

# add in convenience scripts
COPY scripts .

# add source to bashrc and profile
RUN chmod +x . && \
    ln /usr/local/src/get_pdf_titles.sh /usr/bin/get_pdf_titles && \
    ln /usr/local/src/rename_pdf_titles.sh /usr/bin/rename_pdf_titles

# create work dir
WORKDIR /pdfutil

# cmd
CMD ["/bin/bash"]
