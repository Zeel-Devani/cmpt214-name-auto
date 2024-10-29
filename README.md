# Name/NSID Automation Script
## Overview
This bash script is designed to automate a mundane, yet essential task for CMPT 214 students, i.e, to include your Name, NSID, and other identifiable information on top of every required submission. By using this script, you can save time and ensure compliance with submission requirements.

## Purpose
If you are reading this, you are either a fellow CMPT 214 student or a person who saw this project on GitHub, and were curious enough to click on it. Either way, the purpose of this bash script is very simple. It automates a mundane but essential task that could mean the difference between receiving a 0/100 or an x/100 (where x is a number between 1-90; no one can get 100/100 in CMPT 214).

The goal is to add identifiable information on top of all files that are to be submitted for assignments in CMPT 214 (unless stated otherwise). The motive behind this script is to be as efficient(some might say lazy) as possible, especially after you have finished writing your assignment code, but need to include your identifiable information to meet the requirements.

## Features
- **Automates Identification:** Automatically adds your identifiable information to the specified files (i.e., .c files, .sh files, Makefile, git.log).
- **Simple to use:** Just run the script in your assignment directory (of course, not before hard-coding your information in the script) and let it do the rest.
- **Error Handling:** Checks if the headers already exist, preventing duplicates.

## Installation
1. **Clone the Repository:**
   ```git clone https://github.com/Zeel-Devani/name-nsid-automation.git ```
2. **Open the directory:**
   ```cd name-nsid-automation```
3. **Make Script Executable:**
   ```chmod +x name_nsid_auto.sh```

## Usage
1. Ensure that your assignment files (e.g., .c, .sh, Makefile, git.log) are in the same directory as the script.
2. Run the script:
   ```./auto_name_nsid.sh```
3. And... its done.

## Contributions
Contributions are welcomed! If you have suggestions for improvements, please submit a pull request or open an issue.

## Acknowledgements
- Thanks to the CMPT 214 instructors for their guidance and support, especially in discussion exercise 3, that prompted me to develop this script.

## License
This script is licensed under the MIT license. (see [LICENSE] file for more detailss)
