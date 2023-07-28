FROM paidax/dev-containers:ubuntu22.04-conda-v0.1.1

WORKDIR /home/langchain

COPY . .

RUN conda create -y -n py3.10 python=3.10 && \
    conda run -n py3.10 \
    pip install --no-cache-dir \
    langchain \
    duckduckgo-search \
    sentence_transformers \
	loguru && \
    conda install -n py3.10 -y \
    faiss-gpu && \
    conda clean --all && \
    echo "source conda activate py3.8" >> ~/.bashrc

CMD [ "conda", "run", "-n", "py3.10", "bash" ]
