{% from "mosh/map.jinja" import mosh_settings with context %}

pkg-mosh:
  pkg.installed:
    - pkgs: {{ mosh_settings.lookup.pkgs }}

{# EOF #}