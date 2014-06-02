/opt/google-cloud-sdk.tgz:
  file.managed:
    - source: salt://gcutil/google-cloud-sdk.tgz
    - user: root
    - group: root
    - mode: 644
    - template: jinja


Decompress google cloud sdk:
    cmd.wait:
        - name: tar -C /etc -zxvf /opt/google-cloud-sdk.tgz
        - watch:
            - file: /opt/google-cloud-sdk.tgz



/etc/profile.d/gcutil.sh:
  file.managed:
    - source: salt://gcutil/gcutil.sh
    - user: root
    - group: root
    - mode: 644
    - template: jinja



