select * from bookings;

select * from bookings
where fare > 400;

select * from bookings
where status != 'Confirmed';

select * from bookings
where fare between 300 and 500;

select * from bookings
where passenger_name like 'A%';

select * from bookings
where fare = (
    select max(fare) from bookings );