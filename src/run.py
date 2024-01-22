"""Entrypoint of the application."""

import waitress

import app
from logger import setup_logger

logger = setup_logger()

logger.debug("starting waitress")

waitress.serve(app.__hug_wsgi__, port=8000, host="0.0.0.0")  # type: ignore[attr-defined]
