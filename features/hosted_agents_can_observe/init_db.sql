create table if not exists observation_status (
  task_request_recurring_id int auto_increment not null primary key
  , host_id int not null
  , wait_until datetime comment 'null means execute immediately'
  , script_id int not null
  , parameters varchar(255) not null
  , foreign key (host_id) references host(host_id) on update cascade on delete cascade
  , foreign key (script_id) references script(script_id) on update cascade on delete cascade
);
