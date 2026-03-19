#!/bin/bash

# turnip-add: Script to create new assignments with validation

# Function to validate assignment details
validate_assignment_details() {
    if [ -z "$1" ]; then
        echo "Error: Assignment name cannot be empty."
        return 1
    fi
    if [ -z "$2" ]; then
        echo "Error: Due date cannot be empty."
        return 1
    fi
    return 0
}

# Main script execution
if [ "$#" -ne 2 ]; then
    echo "Usage: turnip-add <assignment-name> <due-date>"
    exit 1
fi

ASSIGNMENT_NAME="$1"
DUE_DATE="$2"

# Validate the inputs
validate_assignment_details "$ASSIGNMENT_NAME" "$DUE_DATE"
if [ $? -ne 0 ]; then
    exit 1
fi

# Add assignment creation logic here (for now, just echo)
echo "Creating assignment: $ASSIGNMENT_NAME with due date: $DUE_DATE"