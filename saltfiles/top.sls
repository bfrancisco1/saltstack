base:
  'roles:hwaas-web':
    - match: grain
    - nodejs-package
    - npm-package
    - hwaas-site
    - hwaas-service