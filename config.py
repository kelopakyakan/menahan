import os
from os import getenv
from dotenv import load_dotenv

load_dotenv()

PORT = int(getenv("8080"))
