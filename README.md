# README

I started this Alfred workflow based on a project that [Brett Terpstra](https://brettterpstra.com) gave away for free on his website but I couldn't edit the bash script to make it work on my system. The Brett Terpstra's app is called [QuickQuestion](https://brettterpstra.com/projects/quickquestion/). So, because I have no creativity when trying to get code to work, I came up with the name **Question-Answer (Q-A)** for my Alfred workflow. I used ChatGBT to develop two bash scripts that made Alfred answer a pre-determined set of questions from a pre-determined set of answers. 

## Introduction

The Q-A system is a very simple one. A bunch of plain text markdown files, each titled with one question and containing one answer. The system grabs the pair from a Google Drive folder I set up within the bash script. The other workflow allows the end-user to write a question-and-answer pair within the Alfred search bar.

## Usage

**Ask a question**
To ask a question of the system, simply type:

> qu then the question prompt. 

**Write a question and answer**

To write a question and answer pair, simply type:

> qa the question? | the answer. 

The question and answer pair must be written together in the format above. The pipe symbol distinguishes between a question and an answer. 

## Notifications

You will always receive a notification after the system runs. If it is successful, the answer to your question will appear as a notification. If the question does not exist, you will receive a notification that the question does not exist. Finally, when a question and answer pair is added, you will receive a notification that says, "Files successfully created."

## Bugs

There is a bug in the Alfred workflow that I can't fix. Whether the workflow runs successfully or not, the Alfred search bar does not hide and still contains the question-and-answer pair. 
## Conclusion

I also created a CLI program, but I still am not ready to share that yet. 