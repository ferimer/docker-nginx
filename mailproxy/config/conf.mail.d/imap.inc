server {
  listen   143;
  protocol imap;
  imap_auth login plain cram-md5;
  imap_capabilities  "IMAP4rev1"  "UIDPLUS";
}

server {
  listen   993 ssl;
  protocol imap;
  imap_auth login plain cram-md5;
  imap_capabilities  "IMAP4rev1"  "UIDPLUS";
}

