insert into usr (id, username, password, active)
  values (1, 'admin', '$2a$08$Dbnbvv7JIkA2P4X7lI9niOoW0RAp/6rnzLy5ueKioIlxhjvURx952', true);

insert into user_role (user_id, roles)
  values (1, 'USER'), (1, "ADMIN");