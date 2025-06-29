#!/bin/bash
playwright install
exec gunicorn -k uvicorn.workers.UvicornWorker main:app --bind=0.0.0.0:8000
