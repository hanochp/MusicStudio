create table Sessions (
    session_id int identity primary key,
    name varchar(100) not null,
    contact_info varchar(200) null,
    session_date date not null,
    start_time datetime not null,
    end_time datetime not null,
    recording_duration as datediff(minute, start_time, end_time) persisted,
    mixing_time int null, -- minutes you spent mixing afterward
    notes varchar(500) null
);
