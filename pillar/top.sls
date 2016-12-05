base:
  '*':
    - common

  'loadbalance01.localhost':
    - override
  'roles:load-balancing':
    - match: grain
    - hwaas-ssl
  'roles:hwaas-web'
    - match: grain
    - hwaas-web-mine