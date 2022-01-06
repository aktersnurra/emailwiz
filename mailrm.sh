#!/bin/sh

# Purge all configs from a previous attempt at a mail server.
# Doesn't delete mail or anything like that.
pacman -Rns postfix dovecot opendkim spamassassin pigeonhole

# Some stragglers that often stay undeleted.
rm -rf /etc/dovecot /var/lib/dovecot /etc/postfix
