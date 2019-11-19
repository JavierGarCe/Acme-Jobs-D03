
    create table `administrator` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `announcement` (
       `id` integer not null,
        `version` integer not null,
        `moment` datetime(6),
        `more_info` varchar(255),
        `text` varchar(255),
        `title` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `anonymous` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `authenticated` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `challenge` (
       `id` integer not null,
        `version` integer not null,
        `bronze_goal` varchar(255),
        `bronze_reward` varchar(255),
        `deadline` datetime(6),
        `description` varchar(255),
        `gold_goal` varchar(255),
        `gold_reward` varchar(255),
        `silver_goal` varchar(255),
        `silver_reward` varchar(255),
        `title` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `commercial_banner` (
       `id` integer not null,
        `version` integer not null,
        `picture` varchar(255),
        `slogan` varchar(255),
        `target_url` varchar(255),
        `credit_card` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `company_record` (
       `id` integer not null,
        `version` integer not null,
        `activities` varchar(255),
        `ceo` varchar(255),
        `email` varchar(255),
        `incorporated` bit,
        `name` varchar(255),
        `phone` varchar(255),
        `sector` varchar(255),
        `stars` integer,
        `website` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `consumer` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        `company` varchar(255),
        `sector` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `customization` (
       `id` integer not null,
        `version` integer not null,
        `spamword` varchar(255),
        `threshold` double precision,
        primary key (`id`)
    ) engine=InnoDB;

    create table `fernandez_bulletin` (
       `id` integer not null,
        `version` integer not null,
        `author` varchar(255),
        `country` varchar(255),
        `moment` datetime(6),
        `text` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `ganfornina_bulletin` (
       `id` integer not null,
        `version` integer not null,
        `company` varchar(255),
        `description` varchar(255),
        `moment` datetime(6),
        `salary` double precision,
        `vacancies` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `garcia_bulletin` (
       `id` integer not null,
        `version` integer not null,
        `moment` datetime(6),
        `name` varchar(255),
        `subject` varchar(255),
        `surname` varchar(255),
        `text` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `investor_record` (
       `id` integer not null,
        `version` integer not null,
        `investing_statement_amount` double precision,
        `investing_statement_currency` varchar(255),
        `name` varchar(255),
        `sector` varchar(255),
        `stars` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `non_commercial_banner` (
       `id` integer not null,
        `version` integer not null,
        `picture` varchar(255),
        `slogan` varchar(255),
        `target_url` varchar(255),
        `jingle` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `offer` (
       `id` integer not null,
        `version` integer not null,
        `deadline` datetime(6),
        `description` varchar(255),
        `max_reward_amount` double precision,
        `max_reward_currency` varchar(255),
        `min_reward_amount` double precision,
        `min_reward_currency` varchar(255),
        `moment` datetime(6),
        `ticker` varchar(255),
        `title` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `provider` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        `company` varchar(255),
        `sector` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `requests` (
       `id` integer not null,
        `version` integer not null,
        `deadline` datetime(6),
        `moment` datetime(6),
        `more_info` varchar(255),
        `reward_amount` double precision,
        `reward_currency` varchar(255),
        `ticker` varchar(255),
        `title` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `romero_bulletin` (
       `id` integer not null,
        `version` integer not null,
        `email` varchar(255),
        `name` varchar(255),
        `surname` varchar(255),
        `telephone` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `shout` (
       `id` integer not null,
        `version` integer not null,
        `author` varchar(255),
        `moment` datetime(6),
        `text` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `user_account` (
       `id` integer not null,
        `version` integer not null,
        `enabled` bit not null,
        `identity_email` varchar(255),
        `identity_name` varchar(255),
        `identity_surname` varchar(255),
        `password` varchar(255),
        `username` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `hibernate_sequence` (
       `next_val` bigint
    ) engine=InnoDB;

    insert into `hibernate_sequence` values ( 1 );

    create table `perejon_bulletin` (
       `id` integer not null,
        `version` integer not null,
        `aspiraciones` varchar(255),
        `moment` datetime(6),
        `nombre` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;
create index IDXnhikaa2dj3la6o2o7e9vo01y0 on `announcement` (`moment`);
create index IDXnr284tes3x8hnd3h716tmb3fr on `challenge` (`deadline`);
create index IDX9pkce3d1y6w47wadap5s5xptc on `company_record` (`stars`);
create index IDXk2t3uthe649ao1jllcuks0gv4 on `investor_record` (`stars`);
create index IDXq2o9psuqfuqmq59f0sq57x9uf on `offer` (`deadline`);
create index IDXcp4664f36sgqsd0ihmirt0w0 on `offer` (`ticker`);

    alter table `offer` 
       add constraint UK_iex7e8fs0fh89yxpcnm1orjkm unique (`ticker`);
create index IDXmly5kwrpgadjkxv5t5dgw36hr on `requests` (`deadline`);
create index IDX2ijmvvrwi2t1isu2m2ncm5qn1 on `requests` (`ticker`);

    alter table `requests` 
       add constraint UK_5v1h0kdr8vcps4i9e55k5gnc8 unique (`ticker`);

    alter table `user_account` 
       add constraint UK_castjbvpeeus0r8lbpehiu0e4 unique (`username`);

    alter table `administrator` 
       add constraint FK_2a5vcjo3stlfcwadosjfq49l1 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `anonymous` 
       add constraint FK_6lnbc6fo3om54vugoh8icg78m 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `authenticated` 
       add constraint FK_h52w0f3wjoi68b63wv9vwon57 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `consumer` 
       add constraint FK_6cyha9f1wpj0dpbxrrjddrqed 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `provider` 
       add constraint FK_b1gwnjqm6ggy9yuiqm0o4rlmd 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);
