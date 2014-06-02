python-pip:
    - pkg.installed


pdbpp:
    - pdb.installed
    - require:
        - pkg: python-pip


python-pil:
    pdb.installed
    - require:
        - pkg: python-pip


python-lxml:
    pdb.installed
    - require:
        - pkg: python-pip


ipython:
    pdb.installed
    - require:
        - pkg: python-pip


pdbpp:
    pdb.installed
    - require:
        - pkg: python-pip
