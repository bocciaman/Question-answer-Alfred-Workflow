#!/bin/bash

# Set the path to your Google Drive folder containing the question and answer files
GOOGLE_DRIVE_PATH="/Users/anwara/Library/CloudStorage/GoogleDrive-bocciaman@gmail.com/My Drive/QuickQuestion/"

# Get the user's input
INPUT=$1

# Split the input into the question and answer
QUESTION=$(echo "$INPUT" | awk -F ' [|] ' '{print $1}')
ANSWER=$(echo "$INPUT" | awk -F ' [|] ' '{print $2}')

# Replace spaces in the question with underscores and append ".md"
QUESTION_FILE_NAME=$(echo "$QUESTION" | tr ' ' '_' | tr -d '?').md

# Construct the path to the question file
QUESTION_FILE_PATH="$GOOGLE_DRIVE_PATH/$QUESTION_FILE_NAME"

# Check if the question file already exists
if [ -f "$QUESTION_FILE_PATH" ]; then
  echo "Question already exists."
  exit 1
fi

# Write the question to the question file
echo "$QUESTION" > "$QUESTION_FILE_PATH"

# Replace spaces in the answer with underscores and append "_answer.md"
ANSWER_FILE_NAME=$(echo "$QUESTION_FILE_NAME" | sed 's/\..*$//' )_answer.md

# Construct the path to the answer file
ANSWER_FILE_PATH="$GOOGLE_DRIVE_PATH/$ANSWER_FILE_NAME"

# Check if the answer file already exists
if [ -f "$ANSWER_FILE_PATH" ]; then
  echo "Answer already exists."
  exit 1
fi

# Write the answer to the answer file
echo "$ANSWER" > "$ANSWER_FILE_PATH"

# Output a message to let the user know the files were created successfully
echo "Files created successfully."
