date insert: insert(user.time_format("d-%m-%Y"))
date insert UTC: insert(user.time_format_utc("%Y-%m-%d"))
timestamp insert: insert(user.time_format("%Y-%m-%d %H:%M:%S"))
timestamp insert high resolution: insert(user.time_format("%Y-%m-%d %H:%M:%S.%f"))
timestamp insert UTC: insert(user.time_format_utc("%Y-%m-%d %H:%M:%S"))
timestamp insert UTC high resolution:
    insert(user.time_format_utc("%Y-%m-%d %H:%M:%S.%f"))
insert today's date: insert(user.time_format("%#d %B %Y"))