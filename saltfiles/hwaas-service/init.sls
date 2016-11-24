include:
  - hwaas-site

supervisor:
  pkg.installed:
    - require:
      - sls: hwaas-site