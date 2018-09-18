{% from "mosh/map.jinja" import mosh_settings with context %}

firewalld-service-mosh:
  firewalld.service:
    - name: mosh
    - ports:
      - {{ mosh_settings.ports.udp }}/udp

firewalld-allow-mosh:
  firewalld.present:
    - name: {{ mosh_settings.firewalld.zone }}
    - services:
      - mosh
    - prune_services: False	
    - require:
      - firewalld: firewalld-service-mosh

{# EOF #}