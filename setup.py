from setuptools import setup

setup(
  name = 'abbreviations',
  packages = ['abbreviations'], # this must be the same as the name above
  version = '0.1.5',
  description = 'Python3 implementation of the Schwartz-Hearst algorithm for extracting abbreviation-definition pairs',
  license = 'GPL',
  author = 'Phil Gooch and Vincent Van Asch',
  author_email = 'philgooch@users.noreply.github.com',
  url = 'https://github.com/philgooch/abbreviation-extraction',
  download_url = 'https://github.com/philgooch/abbreviation-extraction/archive/v0.1.5.tar.gz',
  keywords = ['python3', 'nlp', 'keyword-extraction', 'abbreviations', 'information-extraction'],
  classifiers = [],
  install_requires=[
    'regex',
  ],
  zip_safe=False,
)
