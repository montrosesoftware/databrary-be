import os
from pathlib import Path

from .base import * # NOQA

DEBUG = True
ALLOWED_HOSTS = ["*"]

BASE_DIR = Path(__file__).resolve().parent.parent

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
    }
}
