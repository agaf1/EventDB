-- find all events for user with id = 1
select e.* from event e
inner join user_event ue  on e.id = ue.event_id
where ue.user_id =1 ;

-- find active events(all after date 2024.05.15) for user with id = 1
select event.* from event
inner join user_event on event.id = user_event.event_id
where( user_event.user_id=1
and event.date > '2024-05-15 00:00:00' );

-- find active and not paid events(all after date 2024.05.15) for user with id = 1
select event.*, user_event.status_payment
from event inner join user_event on event.id = user_event.event_id
where user_event.user_id=1
and user_event.status_payment="not paid"
and event.date > '2024-05-15 00:00:00';

-- find user with more events than 2
select user_event.user_id, users.name, count(user_event.event_id) as suma
from user_event join users on user_event.user_id = users.id
group by user_event.user_id
having suma > 2;

-- find all users for given event
select users.* from user_event join users on user_event.user_id = users.id
where user_event.event_id = 5;

-- find all users for given event and show status payment
select users.*, user_event.status_payment
from users join user_event on users.id = user_event.user_id
where user_event.event_id =5 ;

-- take total sum ticket price for all events for given user
select users.*, sum(event.ticket_price) as total_ticket_price
from event join user_event on event.id = user_event.event_id
join users on users.id = user_event.user_id
where user_event.user_id = 1;

-- take sum ticket price for only not paid events for given user
select users.*, sum(event.ticket_price) as sum_to_be_paid
from event join user_event on event.id = user_event.event_id
join users on users.id = user_event.user_id
where user_event.user_id = 1 and user_event.status_payment = "not paid";
