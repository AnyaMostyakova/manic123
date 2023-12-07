create database manicureServic;

create sequence client_seq;
create sequence service_seq;
create sequence visits_seq;

create table client (
                        id bigint  primary key default nextval('client_seq'),
                        name varchar(255),
                        phonenumber varchar(255),
                        password varchar(255)
);

create table service (
                         id bigint primary key default nextval('service_seq'),
                         name varchar(255),
                         price double precision
);

create table visits (
                        id bigint primary key default nextval('visits_seq'),
                        service_id bigint,
                        client_id bigint,
                        purchasedate timestamp,
                        constraint service_fk foreign key (service_id) references service(id),
                        constraint client_fk foreign key (client_id) references client(id)
);

insert into service (name,price) values
                                     ('Japanese' , '1200'),
                                     ('European' , '1200'),
                                     ('Hardware' , '1500'),
                                     ('Edged' , '1500'),
                                     ('Combined' , '1500'),
                                     ('solid color gel varnish coating' ,'2000'),
                                     ('solid color shea varnish coating' , '2000'),
                                     ('solid color gel varnish coating with design' ,'2500'),
                                     ('solid color gel varnish coating with design' , '2500');

insert into client (name, phonenumber, password)
values ('admin', '+79534862110', '1234')