#!/bin/bash

interface=$1


# Replace these with the actual paths to your Python files
python_file1="pythontest.py"
python_file2="localAnalysis.py"

# Command to open the first terminal and run the first Python file
gnome-terminal -- bash -c "python3 $python_file1 $interface; exec bash"

# Command to open the second terminal and run the second Python file
gnome-terminal -- bash -c "python3 $python_file2 $interface; exec bash"
