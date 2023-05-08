#!/bin/bash

# Set the path to your Google Drive folder containing the question and answer files
GOOGLE_DRIVE_PATH="your_folder_Path/"

# Get the user's input
QUESTION=$1

# Convert the question to a file name by replacing spaces with underscores and appending ".md"
QUESTION_FILE_NAME=$(echo $QUESTION | tr ' ' '_' | tr -d '?').md

# Construct the path to the question file
QUESTION_FILE_PATH="$GOOGLE_DRIVE_PATH/$QUESTION_FILE_NAME"

# Check if the question file exists
if [ ! -f "$QUESTION_FILE_PATH" ]; then
  echo "Question not found."
  exit 1
fi

# Read the contents of the question file
QUESTION_CONTENT=$(cat "$QUESTION_FILE_PATH")

# Construct the path to the answer file
ANSWER_FILE_NAME="${QUESTION_FILE_NAME%.*}_answer.md"
ANSWER_FILE_PATH="$GOOGLE_DRIVE_PATH/$ANSWER_FILE_NAME"

# Check if the answer file exists
if [ ! -f "$ANSWER_FILE_PATH" ]; then
  echo "Answer not found."
  exit 1
fi

# Read the contents of the answer file
ANSWER_CONTENT=$(cat "$ANSWER_FILE_PATH")

# Combine the question and answer into a single message
NOTIFICATION_CONTENT="$QUESTION_CONTENT\n\n$ANSWER_CONTENT"

# Print the message with both the question and answer
echo -e "$NOTIFICATION_CONTENT"
