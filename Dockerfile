FROM debian:stretch

RUN apt-get update && apt-get install -y \
    texlive-full \
    biber \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /source
ADD resume.tex /source/
ADD picture.jpg /source/

WORKDIR /source

CMD ["pdflatex", "resume.tex"]
