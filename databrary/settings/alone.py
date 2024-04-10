import os
from pathlib import Path

from .base import *  # NOQA

DEBUG = True
ALLOWED_HOSTS = ["*"]

BASE_DIR = Path(__file__).resolve().parent.parent

DATABASES = {
    "default": {
        "ENGINE": "django.db.backends.sqlite3",
        "NAME": os.path.join(BASE_DIR, "db.sqlite3"),
    }
}


# DATABASES = {
#     "default": {
#         "ENGINE": "django.db.backends.postgresql",
#         "NAME": (os.getenv("POSTGRES_DB", "databrary")),
#         "USER": (os.getenv("POSTGRES_USER", "databrary")),
#         "PASSWORD": (os.getenv("POSTGRES_PASSWORD", "PinkMist")),
#         "HOST": (os.getenv("POSTGRES_HOST", "databrary-db")),
#         "PORT": (os.getenv("POSTGRES_PORT", "5432")),
#     }
# }
