/etc/google-cloud-sdk.tgz:
  file.managed:
    - source: salt://gcutil/google-cloud-sdk.tgz
    - user: root
    - group: root
    - mode: 644
    - template: jinja


/etc/profile.d/gcutil.sh
  file.managed:
    - source: salt://gcutil/gcutil.sh
    - user: root
    - group: root
    - mode: 644
    - template: jinja



