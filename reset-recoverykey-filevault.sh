#!/usr/bin/expect
# mereset recovery key dengan admin user XXXX
spawn fdesetup changerecovery -personal
expect {
    "Enter the user name:" {
        send "xxxx\r"
        exp_continue
        }
    "Enter the password for user 'xxxx':" {
        send "Born2party\r"
        exp_continue
        }
    }
