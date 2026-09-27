select * from trains;

select * from trains
where source = 'Chennai';

select trains.train_name, bookings.passenger_name
from trains join bookings on trains.train_id = bookings.train_id;

select trains.train_name, count(bookings.booking_id) 
from trains join bookings
on trains.train_id = bookings.train_id
group by trains.train_id, trains.train_name;

select trains.train_name, sum(bookings.fare) 
from trains join bookings
on trains.train_id = bookings.train_id
group by trains.train_id, trains.train_name;

select * from trains
where train_id in (
    select train_id from bookings
    group by train_id having count(*) > 1 );