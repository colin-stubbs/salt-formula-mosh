mosh:
  lookup:
    pkgs:
      - mosh-alt-name
  ports:
    udp: 60000-61000
  firewalld:
    zone: private-zone