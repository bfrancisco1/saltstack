base:
  '*':
    - common

  'loadbalance01.localhost':
    - override
  'roles:load-balancing':
    - match: grain
    - hwaas-ssl