server {
  listen     25;
  protocol   smtp;
  smtp_auth  login plain cram-md5;
}

server {
  listen     465 ssl;
  protocol   smtp;
  smtp_auth  login plain cram-md5;
}

