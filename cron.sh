#!/usr/bin/bash

function run_ansible() {
    ansible_dir=~/.ansible/pull/*
    ansible-pull -o -vvv -U https://github.com/laurent-xu/notmyfoo-provision.git || rm -rf $ansible_dir
}

run_ansible | ts '[%Y-%m-%d %H:%M:%S]' >> ~/log/ansible-cron 2>&1
