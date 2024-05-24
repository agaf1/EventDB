insert into users values (1, "user1"),
(2, "user2"),
(3, "user3"),
(4, "user4"),
(5, "user5");

insert into event values (1, "event1", '2024-02-15 10:00:00', "place1", 50.0 ),
(2, "event2", '2024-05-15 15:30:00', "place2", 35.0 ),
(3, "event3", '2024-05-20 20:00:00', "place3", 66.0 ),
(4, "event4", '2024-06-02 14:00:00', "place4", 105.0 ),
(5, "event5", '2024-06-15 09:00:00', "place5", 20.0 );

insert into user_event values ( 1, 1, 3, "paid"),
(2,1,1,"paid"),
(3,2,4,"not paid"),
(4,5,3,"not paid"),
(5,1,5,"not paid"),
(6,2,5,"paid");
