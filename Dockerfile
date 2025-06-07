FROM cuhkhaosun/base:latest


RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
RUN bash ~/miniconda.sh -b -p $HOME/miniconda
RUN rm ~/miniconda.sh

# Initialize Conda
RUN eval "$(/root/miniconda/bin/conda shell.bash hook)" && conda init

# Add Conda to PATH
ENV PATH="/root/miniconda/bin:$PATH"
