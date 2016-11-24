nodejs-repo:
  pkgrepo.managed:
    - humanname: NodeJS nodesource repo
    - name: deb http://deb.nodesource.com/node_4.x trusty main
#    - key_url: https://deb.nodesource.com/gpgkey/nodesource.gpg.key

nodejs:
  pkg.installed:
    - force_yes: True

