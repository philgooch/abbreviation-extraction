# Extraction of abbreviation-definition pairs

Version: 0.1.0

This is a Python3 implementation of the [Schwartz-Hearst algorithm](https://psb.stanford.edu/psb-online/proceedings/psb03/schwartz.pdf)
for identifying abbreviations and their corresponding definitions in free text[1].

The original implementation is in Java, and the only Python implementation I found was 
Vincent Van Asch's Python2 implementation at

http://www.cnts.ua.ac.be/~vincent/scripts/abbreviations.py

I have taken the liberty of taking Vincent's code, simplifying it a little,
refactoring it for Python 3, and adding some tests.

This version outputs a Python dictionary of abbreviation:definition pairs.

As per Vincent's code, this version is licensed under GPLv3. See LICENSE.txt

## Installation
    pip install -r requirements.txt
    
## Usage

From the command line

    python abbreviations/schwartz_hearst.py <input file>

Or you can import the module and call the `extract_abbreviation_definition_pairs()` function with a file or a string.


[1] A. Schwartz and M. Hearst (2003) A Simple Algorithm for Identifying Abbreviations Definitions in Biomedical Text.
Biocomputing, 451-462.
