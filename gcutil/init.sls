/etc/google-cloud-sdk.tgz:
  file.managed:
    - source: salt://gcutil/google-cloud-sdk.tgz
    - user: root
    - group: root
    - mode: 644
    - template: jinja


Decompress google cloud sdk:
    cmd.run:
        - name: tar -C /etc -zxvf /etc/google-cloud-sdk.tgz
        - watch:
            - file: /etc/google-cloud-sdk.tgz

remove google cloud sdk tgz:
    cmd.wait:
        - name: rm /etc/google-cloud-sdk.tgz
        - watch:
            - cmd: Decompress google cloud sdk

/etc/profile.d/gcutil.sh:
  file.managed:
    - source: salt://gcutil/gcutil.sh
    - user: root
    - group: root
    - mode: 644
    - template: jinja



