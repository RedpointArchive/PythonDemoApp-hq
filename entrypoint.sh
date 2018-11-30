#!/bin/bash

cd app

# Perform database migrations. In this example, this uses SQLite
# in the container, so any changes you make will be lost when the
# container restarts. You need to make sure your database points
# to either a managed database or a database inside a stateful set
# so that data is not lost.
python manage.py migrate

# Use the development server. This isn't an example of how to run
# a Python application in production, as outlined in the Django
# documentation, but it's good enough to demonstrate running a
# Python app in a container.
python manage.py runserver 0:8080