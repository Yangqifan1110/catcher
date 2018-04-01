/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/3/17 21:33:52                           */
/*==============================================================*/


drop table if exists tb_comment;

drop table if exists tb_costumer;

drop table if exists tb_cussty;

drop table if exists tb_district;

drop table if exists tb_gdssty;

drop table if exists tb_goods;

drop table if exists tb_order;

drop table if exists tb_ordsty;

drop table if exists tb_phosty;

drop table if exists tb_photographer;

drop table if exists tb_style;

/*==============================================================*/
/* Table: tb_comment                                            */
/*==============================================================*/
create table tb_comment
(
   cot_id               int not null,
   cot_parentId         int not null,
   cus_id               varchar(10) not null,
   cot_level            char(20) not null,
   cot_content          varchar(1024) not null,
   cot_createTime       timestamp,
   cot_isAlive          bool,
   primary key (cot_id)
);

/*==============================================================*/
/* Table: tb_costumer                                           */
/*==============================================================*/
create table tb_costumer
(
   cus_id               varchar(10) not null,
   dis_id               varchar(20) not null,
   cus_username         varchar(20) not null,
   cus_password         varchar(20) not null,
   cus_name             varchar(20) not null,
   cus_tel              varchar(11) not null,
   cus_address          varchar(1024) not null,
   cus_createTime       timestamp,
   cus_heat             int,
   cus_level            int,
   cus_isModel          bool,
   cus_vipLevel         int,
   cus_isAlive          bool,
   primary key (cus_id)
);

/*==============================================================*/
/* Table: tb_cussty                                             */
/*==============================================================*/
create table tb_cussty
(
   sty_id               int not null,
   cus_id               varchar(10) not null,
   primary key (sty_id, cus_id)
);

/*==============================================================*/
/* Table: tb_district                                           */
/*==============================================================*/
create table tb_district
(
   dis_id               varchar(20) not null,
   dis_parentId         varchar(20) not null,
   dis_name             varchar(20) not null,
   dis_root             char(10) not null,
   dis_zone             int not null,
   primary key (dis_id)
);

/*==============================================================*/
/* Table: tb_gdssty                                             */
/*==============================================================*/
create table tb_gdssty
(
   gds_id               int not null,
   sty_id               int not null,
   primary key (gds_id, sty_id)
);

/*==============================================================*/
/* Table: tb_goods                                              */
/*==============================================================*/
create table tb_goods
(
   gds_id               int not null,
   pho_id               varchar(10) not null,
   gds_pic              varchar(1024) not null,
   primary key (gds_id)
);

/*==============================================================*/
/* Table: tb_order                                              */
/*==============================================================*/
create table tb_order
(
   ord_id               int not null,
   cus_id               varchar(10),
   pho_id               varchar(10),
   ord_time             timestamp not null,
   ord_address          timestamp not null,
   ord_price            int not null,
   ord_createTime       timestamp,
   ord_isClothes        bool,
   ord_status           int,
   ord_isAlive          bool,
   primary key (ord_id)
);

/*==============================================================*/
/* Table: tb_ordsty                                             */
/*==============================================================*/
create table tb_ordsty
(
   sty_id               int not null,
   ord_id               int not null,
   primary key (sty_id, ord_id)
);

/*==============================================================*/
/* Table: tb_phosty                                             */
/*==============================================================*/
create table tb_phosty
(
   sty_id               int not null,
   pho_id               varchar(10) not null,
   primary key (sty_id, pho_id)
);

/*==============================================================*/
/* Table: tb_photographer                                       */
/*==============================================================*/
create table tb_photographer
(
   pho_id               varchar(10) not null,
   dis_id               varchar(20) not null,
   pho_username         varchar(20) not null,
   pho_password         varchar(20) not null,
   pho_name             varchar(20) not null,
   pho_tel              varchar(11) not null,
   pho_studio           varchar(20) not null,
   pho_createTime       timestamp,
   pho_sal              int,
   pho_heat             int,
   pho_level            int,
   pho_vipLevel         int,
   pho_isAlive          bool,
   primary key (pho_id)
);

/*==============================================================*/
/* Table: tb_style                                              */
/*==============================================================*/
create table tb_style
(
   sty_id               int not null,
   sty_name             varchar(20) not null,
   primary key (sty_id)
);

alter table tb_comment add constraint FK_Relationship_11 foreign key (cot_parentId)
      references tb_comment (cot_id) on delete restrict on update restrict;

alter table tb_comment add constraint FK_Relationship_7 foreign key (cus_id)
      references tb_costumer (cus_id) on delete restrict on update restrict;

alter table tb_costumer add constraint FK_Relationship_9 foreign key (dis_id)
      references tb_district (dis_id) on delete restrict on update restrict;

alter table tb_cussty add constraint FK_tb_cussty foreign key (cus_id)
      references tb_costumer (cus_id) on delete restrict on update restrict;

alter table tb_cussty add constraint FK_tb_cussty2 foreign key (sty_id)
      references tb_style (sty_id) on delete restrict on update restrict;

alter table tb_district add constraint FK_Relationship_10 foreign key (dis_parentId)
      references tb_district (dis_id) on delete restrict on update restrict;

alter table tb_gdssty add constraint FK_tb_gdssty foreign key (sty_id)
      references tb_style (sty_id) on delete restrict on update restrict;

alter table tb_gdssty add constraint FK_tb_gdssty2 foreign key (gds_id)
      references tb_goods (gds_id) on delete restrict on update restrict;

alter table tb_goods add constraint FK_Relationship_13 foreign key (pho_id)
      references tb_photographer (pho_id) on delete restrict on update restrict;

alter table tb_order add constraint FK_Relationship_12 foreign key (cus_id)
      references tb_costumer (cus_id) on delete restrict on update restrict;

alter table tb_order add constraint FK_Relationship_15 foreign key (pho_id)
      references tb_photographer (pho_id) on delete restrict on update restrict;

alter table tb_ordsty add constraint FK_tb_ordsty foreign key (ord_id)
      references tb_order (ord_id) on delete restrict on update restrict;

alter table tb_ordsty add constraint FK_tb_ordsty2 foreign key (sty_id)
      references tb_style (sty_id) on delete restrict on update restrict;

alter table tb_phosty add constraint FK_tb_phosty foreign key (pho_id)
      references tb_photographer (pho_id) on delete restrict on update restrict;

alter table tb_phosty add constraint FK_tb_phosty2 foreign key (sty_id)
      references tb_style (sty_id) on delete restrict on update restrict;

alter table tb_photographer add constraint FK_Relationship_8 foreign key (dis_id)
      references tb_district (dis_id) on delete restrict on update restrict;

