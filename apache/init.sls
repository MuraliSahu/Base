install.apache:
  pkg.installed:
    - pkgs:
      - httpd

index.html:
  file.managed:
    - name: /var/www/html/index.html
    - user: root1
    - group: root1
    - mode: 644
    - source: salt://Template/index_template.html

apache.service:
  service.running:
    - name: httpd
    - enable: True
