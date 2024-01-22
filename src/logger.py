"""Logging configuration module."""

import logging


def setup_logger():
    logging.basicConfig(level=logging.DEBUG)
    logger = logging.getLogger("waitress")
    return logger
