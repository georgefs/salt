zh_TW.UTF-8:
  locale.system


/etc/screenrc:
  file.managed:
    - source: salt://my_env/screenrc
    - user: root
    - group: root
    - mode: 644
    - template: jinja


zsh:
    pkg.installed


install oh my zsh:
    cmd.wait:
        - name: curl -L http://install.ohmyz.sh | sh
        - watch:
            - pkg: zsh

set zsh:
    cmd.wait:
        - name: chsh -s zsh
        - watch:
            - cmd: install oh my zsh


