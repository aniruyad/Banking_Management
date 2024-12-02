create table "SYSTEM"."TRANSACTIONS" (
   "TRANSACTION_ID"   number
      generated always as identity minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 start with 1 cache 20 noorder
      nocycle nokeep noscale
   not null enable,
   "SENDER_ID"        number not null enable,
   "RECEIVER_ID"      number not null enable,
   "AMOUNT"           number not null enable,
   "TRANS_TYPE"       varchar2(20 byte) not null enable,
   "TRANSACTION_DATE" timestamp(6) default current_timestamp
)
pctfree 10
pctused 40
initrans 1
maxtrans 255 nocompress
logging
   storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups 1 buffer_pool
   default flash_cache default cell_flash_cache default )
tablespace "SYSTEM";
alter table "SYSTEM"."TRANSACTIONS"
   add
      primary key ( "TRANSACTION_ID" )
         using index pctfree 10 initrans 2 maxtrans 255 compute statistics
            storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups
            1 buffer_pool default flash_cache default cell_flash_cache default )
         tablespace "SYSTEM" enable;

create table "SYSTEM"."BANKLOAN" (
   "BANKLOANID" number not null enable,
   "LOANTYPE"   varchar2(100 byte) not null enable,
   "LOANRATE"   number not null enable
)
pctfree 10
pctused 40
initrans 1
maxtrans 255 nocompress
logging
   storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups 1 buffer_pool
   default flash_cache default cell_flash_cache default )
tablespace "SYSTEM";
alter table "SYSTEM"."BANKLOAN"
   add
      unique ( "BANKLOANID" )
         using index pctfree 10 initrans 2 maxtrans 255 compute statistics
            storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups
            1 buffer_pool default flash_cache default cell_flash_cache default )
         tablespace "SYSTEM" enable;

create table "SYSTEM"."EMPLOYEE" (
   "EMP_ID"         number not null enable,
   "EMP_NAME"       varchar2(100 byte) not null enable,
   "EMP_EMAIL"      varchar2(100 byte) not null enable,
   "EMP_PHONE"      varchar2(15 byte),
   "EMP_ADDRESS"    varchar2(255 byte),
   "EMP_SALARY"     number(10,2) default 0,
   "EMP_POSITION"   varchar2(50 byte),
   "EMP_DEPARTMENT" varchar2(50 byte),
   "EMP_HIRE_DATE"  date default sysdate,
   "ACTIVE_LOANS"   number default 0,
   "EMP_STATUS"     varchar2(20 byte) default 'ACTIVE'                -- Status (e.g., ACTIVE, INACTIVE)
   ,
   "ADHAR_NUM"      number not null enable,
   "PAN_NUM"        number not null enable,
   "EMP_PASS"       varchar2(20 byte) default '123' not null enable
)
pctfree 10
pctused 40
initrans 1
maxtrans 255 nocompress
logging
   storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups 1 buffer_pool
   default flash_cache default cell_flash_cache default )
tablespace "SYSTEM";
alter table "SYSTEM"."EMPLOYEE"
   add
      unique ( "EMP_ID" )
         using index pctfree 10 initrans 2 maxtrans 255 compute statistics
            storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups
            1 buffer_pool default flash_cache default cell_flash_cache default )
         tablespace "SYSTEM" enable;
alter table "SYSTEM"."EMPLOYEE"
   add
      unique ( "EMP_EMAIL" )
         using index pctfree 10 initrans 2 maxtrans 255 compute statistics
            storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups
            1 buffer_pool default flash_cache default cell_flash_cache default )
         tablespace "SYSTEM" enable;
alter table "SYSTEM"."EMPLOYEE"
   add
      unique ( "EMP_PHONE" )
         using index pctfree 10 initrans 2 maxtrans 255 compute statistics
            storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups
            1 buffer_pool default flash_cache default cell_flash_cache default )
         tablespace "SYSTEM" enable;
alter table "SYSTEM"."EMPLOYEE"
   add
      unique ( "ADHAR_NUM" )
         using index pctfree 10 initrans 2 maxtrans 255 compute statistics
            storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups
            1 buffer_pool default flash_cache default cell_flash_cache default )
         tablespace "SYSTEM" enable;
alter table "SYSTEM"."EMPLOYEE"
   add
      unique ( "PAN_NUM" )
         using index pctfree 10 initrans 2 maxtrans 255 compute statistics
            storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups
            1 buffer_pool default flash_cache default cell_flash_cache default )
         tablespace "SYSTEM" enable;

create table "SYSTEM"."LOAN" (
   "LOANID"          number
      generated by default as identity minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 start with 1 cache 20 noorder
      nocycle nokeep noscale
   not null enable,
   "LOANDESCRIPTION" varchar2(200 byte) not null enable,
   "LOANAMOUNT"      number not null enable,
   "LOANDURATION"    number not null enable,
   "LOANEMI"         number not null enable,
   "LOANSTATUS"      varchar2(10 byte) not null enable,
   "USERID"          number not null enable
)
pctfree 10
pctused 40
initrans 1
maxtrans 255 nocompress
logging
   storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups 1 buffer_pool
   default flash_cache default cell_flash_cache default )
tablespace "SYSTEM";
alter table "SYSTEM"."LOAN"
   add
      primary key ( "LOANID" )
         using index pctfree 10 initrans 2 maxtrans 255 compute statistics
            storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups
            1 buffer_pool default flash_cache default cell_flash_cache default )
         tablespace "SYSTEM" enable;

create table "SYSTEM"."TICKETS" (
   "TICKET_ID"          number(10,0),
   "TICKET_DESCRIPTION" varchar2(255 byte) not null enable,
   "TICKET_STATUS"      varchar2(20 byte) default 'Pending' not null enable,
   "USER_INFO"          number not null enable
)
pctfree 10
pctused 40
initrans 1
maxtrans 255 nocompress
logging
   storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups 1 buffer_pool
   default flash_cache default cell_flash_cache default )
tablespace "SYSTEM";
alter table "SYSTEM"."TICKETS"
   add
      primary key ( "TICKET_ID" )
         using index pctfree 10 initrans 2 maxtrans 255 compute statistics
            storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups
            1 buffer_pool default flash_cache default cell_flash_cache default )
         tablespace "SYSTEM" enable;

create table "SYSTEM"."USERS" (
   "USER_ACCNUM"     number,
   "USER_NAME"       varchar2(100 byte),
   "USER_BAL"        number,
   "USER_RAISEDTICK" number,
   "USER_ADDRESS"    varchar2(200 byte),
   "USER_PHONE"      number(10,0),
   "ADHAR_NUM"       number(12,0),
   "PAN_NUM"         varchar2(15 byte),
   "USER_PASS"       varchar2(100 byte),
   "ACTIVE_LOANS"    number default 0 not null enable
)
pctfree 10
pctused 40
initrans 1
maxtrans 255 nocompress
logging
   storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups 1 buffer_pool
   default flash_cache default cell_flash_cache default )
tablespace "SYSTEM";
alter table "SYSTEM"."USERS"
   add
      primary key ( "USER_ACCNUM" )
         using index pctfree 10 initrans 2 maxtrans 255 compute statistics
            storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups
            1 buffer_pool default flash_cache default cell_flash_cache default )
         tablespace "SYSTEM" enable;

create table "SYSTEM"."ADMIN_TABLE" (
   "ADMIN_ID"       number
      generated by default as identity minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 start with 1 cache 20 noorder
      nocycle nokeep noscale
   not null enable,
   "ADMIN_NAME"     varchar2(100 byte) not null enable,
   "ADMIN_PASSWORD" varchar2(100 byte) not null enable
)
pctfree 10
pctused 40
initrans 1
maxtrans 255 nocompress
logging
   storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups 1 buffer_pool
   default flash_cache default cell_flash_cache default )
tablespace "SYSTEM";
alter table "SYSTEM"."ADMIN_TABLE"
   add
      primary key ( "ADMIN_ID" )
         using index pctfree 10 initrans 2 maxtrans 255 compute statistics
            storage ( initial 65536 next 1048576 minextents 1 maxextents 2147483645 pctincrease 0 freelists 1 freelist groups
            1 buffer_pool default flash_cache default cell_flash_cache default )
         tablespace "SYSTEM" enable;