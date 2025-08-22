--1. Total recording time this week

select sum(recording_duration) as total_recording_minutes
from Sessions
where session_date between dateadd(day, 1-datepart(weekday, getdate()), cast(getdate() as date))
                      and getdate();


--2. Total mixing time this week

select sum(mixing_time) as total_mixing_minutes
from Sessions
where session_date between dateadd(day, 1-datepart(weekday, getdate()), cast(getdate() as date))
                      and getdate();


--3. Number of sessions this week

select count(*) as num_sessions
from Sessions
where session_date between dateadd(day, 1-datepart(weekday, getdate()), cast(getdate() as date))
                      and getdate();


--4. Average session length

select avg(recording_duration) as avg_session_minutes
from Sessions
where session_date between dateadd(day, 1-datepart(weekday, getdate()), cast(getdate() as date))
                      and getdate();
