


python-pip:
    pkg.installed


pdbpp:
    pip.installed:
        - require:
            - pkg: python-pip


python-pil:
    pkg.installed:
        - require:
            - pkg: python-pip


python-lxml:
    pkg.installed:
        - require:
            - pkg: python-pip


ipython:
    pip.installed:
        - require:
            - pkg: python-pip



