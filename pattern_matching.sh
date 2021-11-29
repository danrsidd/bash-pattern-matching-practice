#!/bin/bash
# Pattern matching script for example server log file.
# Input: Example server log file
# Output: "Server Name: Error Code Number"

# Step 1) Use grep searching command in conjunction with RegEx to extract the relvant information from the server log.

# Step 2) Pipe the output of the grep search into the awk scripting command.

# Step 3) To print our output in the specified output format, orgnaize desired fields with specified separators and redirect output into a new text file.

grep -oP '(error\scode\s\d+)\D+(server\s\d+)' ./example_server_log.txt | awk '{print $7 " "$8": "$1,$2,$3}' > ./output.txt

# Alternative method using just awk
# awk '/error\scode/ {print $13,$14": "$7,$8,$9}' example_server_log.txt > ./output.txt
