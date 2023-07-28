FROM paidax/dev-containers:ubuntu22.04-py3.11-v2.5

RUN pip install --no-cache-dir \
	langchain \
	duckduckgo-search \
	sentence_transformers \
	list \
	faiss-gpu \
	loguru
COPY . .
