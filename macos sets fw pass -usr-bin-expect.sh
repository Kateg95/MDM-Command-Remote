#!/usr/bin/expect
spawn sudo firmwarepasswd -setpasswd
expect {
    "Enter new password:" {
        send "Born2party\r"
        exp_continue
    }
    "Re-enter new password:" {
        send "Born2party\r"
        exp_continue
    }
}
spawn sudo bless -mount /Volumes/Macintosh\ HD -setBoot
