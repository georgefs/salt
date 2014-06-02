zh_TW.UTF-8:
  locale.system


/etc/screenrc
  file.managed:
    - source: salt://my_env/screenrc
    - user: root
    - group: root
    - mode: 644
    - template: jinja



