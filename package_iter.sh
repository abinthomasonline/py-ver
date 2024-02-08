#!/bin/bash

# Loop through package versions
for version in 0.11.0 0.12.0 0.12.1 0.12.2 0.12.3 0.12.4 0.12.5 0.13.0 0.13.1 0.13.2 0.14.0 0.14.1 0.15.0 0.15.1 0.16.0 0.17.0 1.0.0 1.0.1 1.1.0 1.1.1 1.2.0 1.3.0 1.3.1 1.3.2; do
    pip install joblib==$version
    python main.py
        if [ $? -eq 0 ]; then
            echo "Python script exited gracefully"
        else
            echo "Python script exited with an error"
        fi
    done
