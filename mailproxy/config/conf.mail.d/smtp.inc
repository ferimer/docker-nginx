server {
  listen     25;
  protocol   smtp;
  smtp_auth  login plain cram-md5;
}

