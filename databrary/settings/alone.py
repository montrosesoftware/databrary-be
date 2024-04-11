import os
from pathlib import Path

from .base import *  # NOQA

DEBUG = True
ALLOWED_HOSTS = ["*"]

BASE_DIR = Path(__file__).resolve().parent.parent

