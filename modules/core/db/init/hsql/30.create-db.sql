INSERT INTO SEC_FILTER (ID,CREATE_TS,CREATED_BY,VERSION,UPDATE_TS,UPDATED_BY,DELETE_TS,DELETED_BY,COMPONENT,NAME,CODE,XML,USER_ID)
VALUES ('78bb59ff-9699-4597-7cfd-fcc7f7e7fc8a',current_timestamp,'admin',1,current_timestamp,null,null,null,'[sample$Order.browse].filter','By date',null,'<?xml version="1.0" encoding="UTF-8"?>
<filter>
  <and>
    <c name="date" class="java.util.Date" operatorType="GREATER_OR_EQUAL" width="1" type="PROPERTY"><![CDATA[e.date >= :component$filter.date48138]]>
      <param name="component$filter.date48138" javaClass="java.util.Date">NULL</param>
    </c>
    <c name="date" class="java.util.Date" operatorType="LESSER_OR_EQUAL" width="1" type="PROPERTY"><![CDATA[e.date <= :component$filter.date58173]]>
      <param name="component$filter.date58173" javaClass="java.util.Date">NULL</param>
    </c>
  </and>
</filter>
', null);

insert into SAMPLE_CUSTOMER_DETAILS
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ADDRESS, NOTE)
values ('9d37740d-2497-02af-4763-7858648f6759', 1, '2018-06-25 17:56:16', 'admin', '2018-06-25 17:56:16', null, null, null, '35 West Arlington Ave.  Harvey, IL 60426', null);

insert into SAMPLE_CUSTOMER_DETAILS
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ADDRESS, NOTE)
values ('6674ff3d-cdac-b4ad-2c51-b69f2ed50e99', 1, '2018-06-25 17:58:13', 'admin', '2018-06-25 17:58:13', null, null, null, '853 South Anderson Dr.  Pittsfield, MA 01201', null);

insert into SAMPLE_CUSTOMER_DETAILS
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, ADDRESS, NOTE)
values ('38951b2e-7754-f5bc-d133-0bce6f182db2', 1, '2018-06-25 17:58:32', 'admin', '2018-06-25 17:58:32', null, null, null, '870 Whitemarsh Court  Middle River, MD 21220', null);

insert into SAMPLE_CUSTOMER
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, EMAIL, DETAILS_ID)
values ('405d5d7d-ed85-10e5-5e45-eeea2e574d18', '2016-04-11 09:34:55', 'admin', 1, '2016-04-11 09:34:55', null, null, null, 'Globex Corporation', 'info@globex.com', '9d37740d-2497-02af-4763-7858648f6759');

insert into SAMPLE_CUSTOMER
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, EMAIL, DETAILS_ID)
values ('d43d25fd-563e-0eb7-0766-0c01c27aae19', '2016-04-11 09:35:13', 'admin', 1, '2016-04-11 09:35:13', null, null, null, 'Sirius Cybernetics Corporation', 'info@sirius.com', '6674ff3d-cdac-b4ad-2c51-b69f2ed50e99');

insert into SAMPLE_CUSTOMER
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, EMAIL, DETAILS_ID)
values ('b01cfb8c-4797-6767-96cc-0b186e18de55', '2016-04-11 09:35:33', 'admin', 1, '2016-04-11 09:35:33', null, null, null, 'Initech', 'info@initech.com', '38951b2e-7754-f5bc-d133-0bce6f182db2');

insert into SAMPLE_PRODUCT
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, CUSTOMER_ID)
values ('29bddf99-17eb-6b00-c03c-8f080ece5e76', '2016-04-16 12:20:48', 'admin', 1, '2016-04-16 12:20:48', null, null, null, 'Wheel', 'd43d25fd-563e-0eb7-0766-0c01c27aae19');

insert into SAMPLE_PRODUCT
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, CUSTOMER_ID)
values ('3aa5673e-c96d-6051-ecb0-f176829cd4fd', '2016-04-16 12:19:45', 'admin', 2, '2016-04-16 12:26:08', 'admin', null, null, 'Toothpick', '405d5d7d-ed85-10e5-5e45-eeea2e574d18');

insert into SAMPLE_PRODUCT
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, CUSTOMER_ID)
values ('45983c56-91ca-5b0f-ae9f-589815da0ef9', '2016-04-16 12:21:43', 'admin', 2, '2016-04-16 12:26:18', 'admin', null, null, 'Refrigerator', '405d5d7d-ed85-10e5-5e45-eeea2e574d18');

insert into SAMPLE_PRODUCT
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, CUSTOMER_ID)
values ('5bfef093-968b-b745-0784-2d2dc5b4eb97', '2016-04-16 12:22:15', 'admin', 1, '2016-04-16 12:22:15', null, null, null, 'Cell phone', 'b01cfb8c-4797-6767-96cc-0b186e18de55');

insert into SAMPLE_PRODUCT
(ID, CREATE_TS, CREATED_BY, VERSION, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, NAME, CUSTOMER_ID)
values ('e0b94e43-1aa1-159c-840e-d9e6da4294ba', '2016-04-16 12:21:56', 'admin', 1, '2016-04-16 12:21:56', null, null, null, 'Towel', null);

insert into SAMPLE_ORDER
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, DATE_, NUM, CUSTOMER_ID)
values ('b2a91d33-fe80-b8e3-9b18-b27529b82b23', 1, '2018-06-25 11:57:20', 'user', '2018-06-25 11:57:20', null, null, null, '2018-06-14', 'RO42', 'd43d25fd-563e-0eb7-0766-0c01c27aae19');

insert into SAMPLE_ORDER
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, DATE_, NUM, CUSTOMER_ID)
values ('fbed0526-b023-6917-bdba-c83715188c63', 1, '2018-06-25 11:58:28', 'user', '2018-06-25 11:58:28', null, null, null, '2018-05-01', 'M16', 'b01cfb8c-4797-6767-96cc-0b186e18de55');

insert into SAMPLE_ORDER
(ID, VERSION, CREATE_TS, CREATED_BY, UPDATE_TS, UPDATED_BY, DELETE_TS, DELETED_BY, DATE_, NUM, CUSTOMER_ID)
values ('cc5e0681-6685-9231-f175-dee2c95792d5', 1, '2018-06-25 11:59:08', 'user', '2018-06-25 11:59:08', null, null, null, '2018-09-08', 'TE45', '405d5d7d-ed85-10e5-5e45-eeea2e574d18');
