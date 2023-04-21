create table if not exists user (
  id bigint primary key auto_increment,
  name varchar(255) default null,
  username varchar(255) default null,
  encrypted_password varchar(255) default null,
  email varchar(255) default null,
  phone varchar(255) default null,
  active boolean not null default 1
);

create table if not exists role (
  id bigint primary key auto_increment,
  name varchar(255) default null
);

create table if not exists user_role (
  id bigint primary key auto_increment,
  user_id bigint,
  role_id bigint,
constraint fk_user_role foreign key (user_id)
references user(id),
constraint fk_role_user foreign key (role_id)
references role(id)
);

insert into user(id, name, username, encrypted_password, email, phone, active) values (1,'admin','admin','1','admin@admin.com','01235855',1);
insert into role(id, name) values (1,'admin');
insert into user_role (id, user_id, role_id) values (1,1,1);