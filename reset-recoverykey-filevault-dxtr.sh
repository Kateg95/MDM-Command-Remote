#!/usr/bin/expect
# mereset recovery key dengan admin user DXTR
spawn fdesetup changerecovery -personal
expect {
    "Enter the user name:" {
        send "dxtr\r"
        exp_continue
        }
    "Enter the password for user 'dxtr':" {
        send "Born2party\r"
        exp_continue
        }
    }
