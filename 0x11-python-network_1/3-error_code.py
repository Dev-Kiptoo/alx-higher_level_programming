#!/usr/bin/python3
"""
script that takes in a URL, sends a request to the URL and displays the body of the response (decoded in utf-8).
"""
from urllib import request, error
from sys import argv

if __name__ == "__main__":
    url = argv[1]
    try:
        with request.urlopen(url) as response:
            response_text = response.read().decode("utf-8")
            print(response_text)
    except error.HTTPError as e:
        print("Error code: {}".format(e.code))
   
