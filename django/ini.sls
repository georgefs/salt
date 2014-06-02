include:
  - python


python-mysqldb:
    - pkg.installed
    - require:
        - sls: python

django:
    - pip.installed
    - require:
        - sls: python





