FROM paidax/dev-containers:ubuntu22.04-py3.11-v2.5

RUN git clone https://github.com/langchain-ai/langchain.git && \
    cd langchain && \
    pip install -e .

COPY . .
