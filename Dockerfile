FROM python:3-slim

RUN pip install cloudscraper && \
	apt-get update -y && \
	apt-get install -y nodejs-legacy && \
	rm -rf /var/lib/apt/lists/*

COPY scraper.py /

ENTRYPOINT ["/scraper.py"]
