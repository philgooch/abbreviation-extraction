# Extraction of abbreviation-definition pairs

[![Build Status](https://travis-ci.org/philgooch/abbreviation-extraction.svg)](https://travis-ci.org/philgooch/abbreviation-extraction)

## Version: 0.2.3

This is a Python3 implementation of the [Schwartz-Hearst algorithm](https://psb.stanford.edu/psb-online/proceedings/psb03/schwartz.pdf)
for identifying abbreviations and their corresponding definitions in free text[1].

The [original implementation is in Java](http://biotext.berkeley.edu/software.html), and Vincent Van Asch created a Python2 implementation at

http://www.cnts.ua.ac.be/~vincent/scripts/abbreviations.py

* NB: As of March 2019 this link appears to be dead. 

I have simplified, refactored it for Python 3 and added some tests.

This version outputs a Python dictionary of abbreviation:definition pairs.


## Installation for command-line use
    pip install -r requirements.txt
    
### Usage

From the command line

    python abbreviations/schwartz_hearst.py <input file>
    
## Installation as a module

    python3 setup.py install
    
or

    pip install abbreviations
    
### Usage

    from abbreviations import schwartz_hearst
    
    pairs = schwartz_hearst.extract_abbreviation_definition_pairs(doc_text='The emergency room (ER) was busy')
    pairs = schwartz_hearst.extract_abbreviation_definition_pairs(file_path='<path_to_file>')
    


[1] A. Schwartz and M. Hearst (2003) A Simple Algorithm for Identifying Abbreviations Definitions in Biomedical Text.
Biocomputing, 451-462.
