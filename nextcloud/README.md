for example see: [github.com/nextcloud/docker/tree/master/.examples](https://github.com/nextcloud/docker/tree/master/.examples)

host domain overwrite: [github.com/linuxserver/reverse-proxy-confs/blob/master/nextcloud.subdomain.conf.sample](https://github.com/linuxserver/reverse-proxy-confs/blob/master/nextcloud.subdomain.conf.sample)

./data/server/config/config.php example:

```
<?php
$CONFIG = array (
...
  'trusted_domains' =>
  array (
    0 => 'localhost:4000',
    1 => '<DOMAIN>',
  ),
...
  'overwrite.cli.url' => 'https://<DOMAIN>',
  'overwritehost' => '<DOMAIN>',
  'overwriteprotocol' => 'https',
...
);
```
