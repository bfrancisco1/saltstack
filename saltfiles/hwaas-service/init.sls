include:
  - hwaas-site

supervisor:
  pkg.installed:
    - require:
      - sls: hwaas-site

/etc/supervisor/conf.d/hwaas-site.conf:
  file.managed:
    - source: salt://hwaas-service/supervisor.conf
    - require:
      - pkg: supervisor