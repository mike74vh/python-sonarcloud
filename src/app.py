"""Main application module."""

import os
import sys

import hug  # type: ignore[import-untyped]
import pendulum
from dotenv import load_dotenv

from logger import setup_logger

logger = setup_logger()


@hug.get("/hello")
def hello():
    logger.debug("hello() called")
    return "Hello from Python {}!".format(sys.version)


@hug.get("/status")
def status():
    logger.debug("status() called")
    load_dotenv("./config/.env")
    now = pendulum.now()
    return f"Hello from {os.getenv('ENVIRONMENT')} environment at {now}!"
