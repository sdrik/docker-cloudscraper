#!/usr/bin/env python3

import cloudscraper
import sys

if __name__ == '__main__':
    scraper = cloudscraper.create_scraper()
    print(scraper.get(sys.argv[1]).content.decode())
