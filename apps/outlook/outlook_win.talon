os: windows
and app: Outlook
os: windows
and app.name: Microsoft Outlook
-
tag(): user.emoji

archive: key(alt h o 1)
new mail: key(ctrl-n)
calendar: key(ctrl-2)
inbox: key(ctrl-1)
Reply: key(ctrl-r)
Reply all: key(ctrl-shift-r)
Forward: key(ctrl-f)
accept: key(shift-f10 c c enter)
send: ""
mark all as red: key(alt-o m a)

High <user.text>:
    "Hi "
    sleep(100ms)
    user.insert_formatted(text, "CAPITALIZE_ALL_WORDS")
    key(, enter:2)

add emoji: key(super-.)