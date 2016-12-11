{% set mine_info = salt['saltutil.runner']('mine.get', tgt='hwaas:online', fun='hwaas-webserver-addr', tgt_type='grain') %}
{% set minion_ids = mine_info.keys() | list %}
{% set group_size = ((minion_ids | length ) / 2) | int %}
{% set primary_group = minion_ids[:group_size] %}
{% set secondary_group = minion_ids[group_size:] %}

remove-grain-from-primary:
  salt.function:
    - name: grains.delval
    - tgt: {{ ','.join(primary_group) }}
    - tgt_type: list
    - arg:
      - hwaas
      - true