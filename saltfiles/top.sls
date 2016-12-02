base:
  'roles:hwaas-web':
    - match: grain
    - nodejs-package
    - npm-package
    - hwaas-site
    - hwaas-service
  'roles:load-balancing':
    - match: grain
    - load-balance