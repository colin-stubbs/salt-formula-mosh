{% from "mosh/map.jinja" import mosh_settings with context %}

firewalld-service-mosh:
  firewalld.service:
    - name: mosh
    - ports:
      - {{ mosh_settings.ports.udp }}/udp

{# TODO - ensure firewalld actually adds the mosh service to the permitted list... #}

{# EOF #}			