server {
  listen    110;
  protocol  pop3;
  pop3_auth plain apop cram-md5;
}

