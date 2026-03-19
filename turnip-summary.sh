#!/bin/bash

echo "Listing assignments for the turnip project..."
directory="assignments"
if [ -d "$directory" ]; then
    cd "$directory"
    for assignment in *; do
        echo "- $assignment"
    done
else
    echo "No assignments directory found."
fi