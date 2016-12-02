nginx:
  pkg.installed: []

/etc/nginx/nginx.conf:
  file.managed:
    - source: salt://load-balance/nginx.conf