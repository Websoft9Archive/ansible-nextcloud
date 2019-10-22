<?php
$CONFIG = array (
  'memcache.locking' => '\\OC\\Memcache\\Redis',
  'memcache.local' => '\\OC\\Memcache\\Redis',
  'redis' =>
      array (
        'host' => 'localhost',
        'port' => 6379,
  ),
  'mail_smtpmode' => 'smtp',
  'mail_smtpsecure' => 'ssl',
);