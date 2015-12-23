DELETE FROM METL_FLOW_STEP_LINK WHERE SOURCE_STEP_ID IN (SELECT ID FROM METL_FLOW_STEP WHERE FLOW_ID IN (SELECT ID FROM METL_FLOW WHERE PROJECT_VERSION_ID='de12fc2b-e9f2-4f8d-8dd5-682af7083e21' ));
DELETE FROM METL_FLOW_STEP WHERE FLOW_ID IN (SELECT ID FROM METL_FLOW WHERE PROJECT_VERSION_ID='de12fc2b-e9f2-4f8d-8dd5-682af7083e21' );
DELETE FROM METL_FLOW_PARAMETER WHERE FLOW_ID IN (SELECT ID FROM METL_FLOW WHERE PROJECT_VERSION_ID='de12fc2b-e9f2-4f8d-8dd5-682af7083e21' );
DELETE FROM METL_FLOW WHERE PROJECT_VERSION_ID='de12fc2b-e9f2-4f8d-8dd5-682af7083e21' ;
DELETE FROM METL_COMPONENT_ATTRIBUTE_SETTING WHERE COMPONENT_ID IN (SELECT ID FROM METL_COMPONENT WHERE PROJECT_VERSION_ID='de12fc2b-e9f2-4f8d-8dd5-682af7083e21' );
DELETE FROM METL_COMPONENT_ENTITY_SETTING WHERE COMPONENT_ID IN (SELECT ID FROM METL_COMPONENT WHERE PROJECT_VERSION_ID='de12fc2b-e9f2-4f8d-8dd5-682af7083e21' );
DELETE FROM METL_COMPONENT_SETTING WHERE COMPONENT_ID IN (SELECT ID FROM METL_COMPONENT WHERE PROJECT_VERSION_ID='de12fc2b-e9f2-4f8d-8dd5-682af7083e21' );
DELETE FROM METL_COMPONENT WHERE PROJECT_VERSION_ID='de12fc2b-e9f2-4f8d-8dd5-682af7083e21' ;
DELETE FROM METL_RESOURCE_SETTING WHERE RESOURCE_ID IN (SELECT ID FROM METL_RESOURCE WHERE PROJECT_VERSION_ID='de12fc2b-e9f2-4f8d-8dd5-682af7083e21' );
DELETE FROM METL_RESOURCE WHERE PROJECT_VERSION_ID='de12fc2b-e9f2-4f8d-8dd5-682af7083e21' ;
DELETE FROM METL_MODEL_ATTRIBUTE WHERE ENTITY_ID IN (SELECT ID FROM METL_MODEL_ENTITY WHERE MODEL_ID in (SELECT ID FROM METL_MODEL WHERE PROJECT_VERSION_ID='de12fc2b-e9f2-4f8d-8dd5-682af7083e21' ));
DELETE FROM METL_MODEL_ENTITY WHERE MODEL_ID in (SELECT ID FROM METL_MODEL WHERE PROJECT_VERSION_ID='de12fc2b-e9f2-4f8d-8dd5-682af7083e21' );
DELETE FROM METL_MODEL WHERE PROJECT_VERSION_ID='de12fc2b-e9f2-4f8d-8dd5-682af7083e21' ;
DELETE FROM METL_FOLDER WHERE PROJECT_VERSION_ID='de12fc2b-e9f2-4f8d-8dd5-682af7083e21';
DELETE FROM METL_PROJECT_VERSION WHERE ID='de12fc2b-e9f2-4f8d-8dd5-682af7083e21';
DELETE FROM METL_PROJECT WHERE ID='58241332-d21d-4ddf-8e79-0a624ad63c20';
insert into METL_PROJECT (ID, NAME, DESCRIPTION, DELETED, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('58241332-d21d-4ddf-8e79-0a624ad63c20','RDBMSReader Flow Test','This project contains tests for Metl.  It is run during the build.',0,{ts '2015-12-02 07:56:34.106'},null,null,{ts '2015-12-02 07:57:01.687'});
insert into METL_PROJECT_VERSION (ID, VERSION_LABEL, PROJECT_ID, ORIG_VERSION_ID, DESCRIPTION, LOCKED, ARCHIVED, DELETED, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('de12fc2b-e9f2-4f8d-8dd5-682af7083e21','1.0','58241332-d21d-4ddf-8e79-0a624ad63c20',null,null,0,0,0,{ts '2015-12-02 07:56:34.106'},null,null,{ts '2015-12-02 07:56:34.107'});
insert into METL_MODEL (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, SHARED, FOLDER_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('7112cb2c-5966-4e1d-b314-4936a56e9495','108dabf4-31c1-44fe-81e1-a7851974d31f','de12fc2b-e9f2-4f8d-8dd5-682af7083e21',0,'model1',0,null,{ts '2015-12-02 07:58:11.501'},null,null,{ts '2015-12-02 07:58:15.030'});
insert into METL_MODEL_ENTITY (ID, MODEL_ID, NAME, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('793678e1-825e-4021-98ad-045ed969a2c8','7112cb2c-5966-4e1d-b314-4936a56e9495','table1',{ts '2015-12-02 07:58:18.570'},null,null,{ts '2015-12-02 07:58:20.174'});
insert into METL_MODEL_ATTRIBUTE (ID, ENTITY_ID, NAME, TYPE, TYPE_ENTITY_ID, PK, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('13f29117-e097-42bb-a09b-8b6de7de61d9','793678e1-825e-4021-98ad-045ed969a2c8','id','INTEGER',null,1,{ts '2015-12-02 07:58:21.968'},null,null,{ts '2015-12-02 07:58:29.939'});
insert into METL_MODEL_ATTRIBUTE (ID, ENTITY_ID, NAME, TYPE, TYPE_ENTITY_ID, PK, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('3fb0e876-f8fe-405e-9baa-078196aec6bd','793678e1-825e-4021-98ad-045ed969a2c8','parent','INTEGER',null,0,{ts '2015-12-02 07:58:31.445'},null,null,{ts '2015-12-02 07:58:41.525'});
insert into METL_RESOURCE (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('b9dda482-ae92-43af-beb8-4396c5d125c0','04f7eabc-f8bb-4bbc-bf22-637302bd63f8','de12fc2b-e9f2-4f8d-8dd5-682af7083e21',0,'database','Database',null,{ts '2015-12-02 07:57:21.052'},null,null,{ts '2015-12-02 07:57:23.258'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('352d7005-8152-4c14-a7f2-6c6d1a64dad1','4ed9ccef-8721-42a8-a6ed-3424d4b11622','de12fc2b-e9f2-4f8d-8dd5-682af7083e21',0,'Assert all children','Assert',null,0,'7112cb2c-5966-4e1d-b314-4936a56e9495',null,null,{ts '2015-12-13 21:07:36.818'},null,null,{ts '2015-12-14 08:57:55.203'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('68c18891-81c9-4ced-8275-5d81822fbb0b','fe5030f1-3958-414e-a2fd-296379d9d8ac','de12fc2b-e9f2-4f8d-8dd5-682af7083e21',0,'Recursive reader','RDBMS Reader',null,0,'7112cb2c-5966-4e1d-b314-4936a56e9495','7112cb2c-5966-4e1d-b314-4936a56e9495','b9dda482-ae92-43af-beb8-4396c5d125c0',{ts '2015-12-02 08:05:10.318'},null,null,{ts '2015-12-14 08:57:23.637'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('71c71450-5464-4881-9a68-0eae96e17659','69258ce9-639f-4288-8a0c-cb8bd927694b','de12fc2b-e9f2-4f8d-8dd5-682af7083e21',0,'Message Logger 1','Message Logger',null,0,'7112cb2c-5966-4e1d-b314-4936a56e9495',null,null,{ts '2015-12-02 15:38:23.582'},null,null,{ts '2015-12-14 08:57:23.640'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('89356ca3-9106-49e6-a36c-322177a3d539','662bac2b-59ca-454c-8600-6c0ff82b0307','de12fc2b-e9f2-4f8d-8dd5-682af7083e21',0,'Reader to start recursion','RDBMS Reader',null,0,null,'7112cb2c-5966-4e1d-b314-4936a56e9495','b9dda482-ae92-43af-beb8-4396c5d125c0',{ts '2015-12-14 08:55:33.114'},null,null,{ts '2015-12-14 18:31:36.114'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('b2cf6efd-ad65-477d-bdcf-5a699e1462c8','b991d543-5c41-47d7-a1cd-3a34c7c50d64','de12fc2b-e9f2-4f8d-8dd5-682af7083e21',0,'Recursive Reader','RDBMS Reader',null,0,'7112cb2c-5966-4e1d-b314-4936a56e9495','7112cb2c-5966-4e1d-b314-4936a56e9495','b9dda482-ae92-43af-beb8-4396c5d125c0',{ts '2015-12-14 08:56:24.423'},null,null,{ts '2015-12-14 09:16:37.682'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('b708625d-9fb8-4907-b12a-bffe02995ed7','0a2c09e5-3617-4d9f-ade6-b45b954637e8','de12fc2b-e9f2-4f8d-8dd5-682af7083e21',0,'Assert 1','Assert',null,0,'7112cb2c-5966-4e1d-b314-4936a56e9495',null,null,{ts '2015-12-14 09:04:00.178'},null,null,{ts '2015-12-14 19:12:30.676'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('bf9ff1ef-5612-4fa3-90f8-d84a7260cd21','1fcf46c4-c61d-4e5f-95fe-7970a2eda677','de12fc2b-e9f2-4f8d-8dd5-682af7083e21',0,'Sql Executor 1','Sql Executor',null,0,null,null,'b9dda482-ae92-43af-beb8-4396c5d125c0',{ts '2015-12-14 08:54:52.352'},null,null,{ts '2015-12-14 09:16:37.681'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('c6742048-1958-4aa5-9d37-db969e2a8788','7526a68c-d1d4-4221-8afc-ba4589a6558b','de12fc2b-e9f2-4f8d-8dd5-682af7083e21',0,'Message Logger 1','Message Logger',null,0,'7112cb2c-5966-4e1d-b314-4936a56e9495',null,null,{ts '2015-12-14 09:16:33.777'},null,null,{ts '2015-12-15 07:47:30.083'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('dc10575c-f44e-45d9-a0eb-64b7ac11292d','fbb7f6ff-1e5c-49c7-8271-16f68bca514b','de12fc2b-e9f2-4f8d-8dd5-682af7083e21',0,'Reader to start recursion','RDBMS Reader',null,0,null,'7112cb2c-5966-4e1d-b314-4936a56e9495','b9dda482-ae92-43af-beb8-4396c5d125c0',{ts '2015-12-02 08:03:39.411'},null,null,{ts '2015-12-14 08:57:23.637'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('eb5c37c2-1690-4854-a350-aa56494b99d7','3f0e6a57-147d-4f5f-b304-e8dc1b5cb75a','de12fc2b-e9f2-4f8d-8dd5-682af7083e21',0,'Sql Executor 1','Sql Executor',null,0,null,null,'b9dda482-ae92-43af-beb8-4396c5d125c0',{ts '2015-12-02 07:59:43.253'},null,null,{ts '2015-12-14 08:57:23.636'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('02f8ab90-517a-4523-af78-359e33adc6bd','68c18891-81c9-4ced-8275-5d81822fbb0b','sql','select * From table1 where id = :table1.parent',{ts '2015-12-02 08:05:26.453'},null,null,{ts '2015-12-14 09:02:51.042'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('10c1566e-0ecb-48b9-aea9-b93257bad2ee','c6742048-1958-4aa5-9d37-db969e2a8788','logInput','false',{ts '2015-12-14 09:30:10.990'},null,null,{ts '2015-12-15 07:47:30.085'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('1c0420e5-0812-4fbc-84c3-43e208352782','bf9ff1ef-5612-4fa3-90f8-d84a7260cd21','sql','drop table if exists table1;
create table table1 (id integer, parent integer, primary key (id));
insert into table1 values (1,null);
insert into table1 values (2,1);
insert into table1 values (3,2);
',{ts '2015-12-14 08:55:22.191'},null,null,{ts '2015-12-14 09:16:37.681'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('1d10f7a9-c8cc-4294-b074-b45eb96159d3','352d7005-8152-4c14-a7f2-6c6d1a64dad1','enabled','false',{ts '2015-12-13 21:21:19.876'},null,null,{ts '2015-12-14 09:01:56.199'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('1d37f38e-47cf-476c-958a-a23578d61c5d','dc10575c-f44e-45d9-a0eb-64b7ac11292d','sql','select * from table1 where id in (3,7)',{ts '2015-12-02 08:04:01.229'},null,null,{ts '2015-12-14 08:57:23.637'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('1f6b8884-fe4e-4be6-afe3-250d7223f26f','352d7005-8152-4c14-a7f2-6c6d1a64dad1','expected.entity.messages.count','4',{ts '2015-12-14 08:58:11.322'},null,null,{ts '2015-12-14 08:58:11.323'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('21100014-b815-4808-9cb5-acd0b47fbeaf','bf9ff1ef-5612-4fa3-90f8-d84a7260cd21','logOutput','true',{ts '2015-12-14 09:19:38.402'},null,null,{ts '2015-12-14 09:19:38.402'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('32870d12-83b4-46d6-b70d-fe8a87e1bc12','89356ca3-9106-49e6-a36c-322177a3d539','logOutput','true',{ts '2015-12-14 09:04:59.983'},null,null,{ts '2015-12-14 18:31:36.115'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('362e8d3f-37a3-4321-9315-13b1dff24db2','89356ca3-9106-49e6-a36c-322177a3d539','sql','select * from table1 where id =3',{ts '2015-12-14 08:56:06.573'},null,null,{ts '2015-12-14 18:31:36.115'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('3d1af3e2-b094-4508-afaf-8f93cf8a69df','b708625d-9fb8-4907-b12a-bffe02995ed7','enabled','true',{ts '2015-12-14 09:04:11.032'},null,null,{ts '2015-12-14 19:12:30.677'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('3ea35b91-af07-46da-89a1-c09a1c4a899d','352d7005-8152-4c14-a7f2-6c6d1a64dad1','expected.text.messages.count','0',{ts '2015-12-13 21:11:05.836'},null,null,{ts '2015-12-14 08:58:08.669'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('4a7dbd23-0c37-4b23-af84-9983b5e03dbb','68c18891-81c9-4ced-8275-5d81822fbb0b','run.when','PER ENTITY',{ts '2015-12-02 08:07:48.092'},null,null,{ts '2015-12-14 08:57:23.638'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('50f451e0-f83f-45d2-9e3b-bd77cae15b54','352d7005-8152-4c14-a7f2-6c6d1a64dad1','expected.control.messages.count','2',{ts '2015-12-13 21:11:54.657'},null,null,{ts '2015-12-14 08:58:35.519'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('66ae5ca9-7572-42be-80b1-150d81b2540b','68c18891-81c9-4ced-8275-5d81822fbb0b','logOutput','false',{ts '2015-12-02 08:07:09.783'},null,null,{ts '2015-12-14 08:57:23.638'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('6982516b-1bc5-41ff-bbfc-4744620db07a','dc10575c-f44e-45d9-a0eb-64b7ac11292d','rows.per.message','100',{ts '2015-12-13 21:15:14.531'},null,null,{ts '2015-12-14 08:57:23.637'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('70de48a9-3e4f-44fb-b003-2cc97fa0b91f','b2cf6efd-ad65-477d-bdcf-5a699e1462c8','logOutput','true',{ts '2015-12-14 09:04:56.529'},null,null,{ts '2015-12-14 09:16:37.682'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('74581da1-5be1-411b-a4ad-052050b33c73','b708625d-9fb8-4907-b12a-bffe02995ed7','expected.control.messages.count','1',{ts '2015-12-14 18:23:38.726'},null,null,{ts '2015-12-14 19:12:30.677'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('79300940-bdef-4ba2-882a-8030d1a1533f','b2cf6efd-ad65-477d-bdcf-5a699e1462c8','run.when','PER ENTITY',{ts '2015-12-14 09:08:44.138'},null,null,{ts '2015-12-14 09:16:37.682'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('8a40fc1b-ef73-4b4c-8581-4a32ef05afbd','68c18891-81c9-4ced-8275-5d81822fbb0b','logInput','false',{ts '2015-12-02 08:07:09.133'},null,null,{ts '2015-12-14 08:57:23.638'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('b33f2e90-75c1-4424-bc62-0fa9d43d00bd','eb5c37c2-1690-4854-a350-aa56494b99d7','run.when','PER UNIT OF WORK',{ts '2015-12-02 07:59:55.282'},null,null,{ts '2015-12-14 08:57:23.636'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('c7df46eb-320a-4e4b-a4dc-e77726e29a3e','b2cf6efd-ad65-477d-bdcf-5a699e1462c8','sql','select * From table1 where id = :table1.parent',{ts '2015-12-14 09:03:36.589'},null,null,{ts '2015-12-14 09:16:37.682'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('d5a503a5-c919-4323-b2b3-0a4b1d2f864c','b708625d-9fb8-4907-b12a-bffe02995ed7','expected.entity.messages.count','2',{ts '2015-12-14 09:14:36.388'},null,null,{ts '2015-12-14 19:12:30.678'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('e40cc7d9-9721-4f11-8c4e-25e6e0f4289d','bf9ff1ef-5612-4fa3-90f8-d84a7260cd21','run.when','PER UNIT OF WORK',{ts '2015-12-14 09:10:07.320'},null,null,{ts '2015-12-14 09:16:37.681'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('e7d392a5-c80a-4771-9fd6-a97a2ac3f905','eb5c37c2-1690-4854-a350-aa56494b99d7','sql','drop table if exists table1;
create table table1 (id integer, parent integer, primary key (id));
--this is the first set of parent/children
insert into table1 values (1,null);
insert into table1 values (2,1);
insert into table1 values (3,2);
--this is the second set of parent/children
insert into table1 values (5,null);
insert into table1 values (6,5);
insert into table1 values (7,6);
',{ts '2015-12-02 08:03:06.473'},null,null,{ts '2015-12-14 09:01:50.034'});
insert into METL_FLOW (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, TEST, NAME, FOLDER_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('4e0d1606-5fe1-4917-9ab4-8ba860f3ac95','dd1d8058-806e-4da0-bc2c-811c156dbfa9','de12fc2b-e9f2-4f8d-8dd5-682af7083e21',0,0,'RDBMSReader - Recursive Reader Single Inbound',null,{ts '2015-12-14 08:54:20.295'},null,null,{ts '2015-12-14 09:16:37.680'});
insert into METL_FLOW (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, TEST, NAME, FOLDER_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('76d07ae1-99bd-4f44-9d2b-2a4d2be00f68','724cc35b-21e8-48ac-942a-6d0764e93797','de12fc2b-e9f2-4f8d-8dd5-682af7083e21',0,0,'RDBMSReader - Recursive Reader Mult Inbound ',null,{ts '2015-12-02 07:59:09.709'},null,null,{ts '2015-12-14 08:57:23.635'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('05d6d58a-d6ca-4a6a-ab20-869ea84e8cbd','76d07ae1-99bd-4f44-9d2b-2a4d2be00f68','eb5c37c2-1690-4854-a350-aa56494b99d7',40,20,0,{ts '2015-12-02 07:59:43.253'},null,null,{ts '2015-12-14 08:57:23.636'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('0d776365-f885-4bfe-aecc-868130ee78c0','4e0d1606-5fe1-4917-9ab4-8ba860f3ac95','b708625d-9fb8-4907-b12a-bffe02995ed7',610,30,3,{ts '2015-12-14 09:04:00.178'},null,null,{ts '2015-12-14 19:12:30.678'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('115f933d-6c84-462f-943f-b897c4f01aeb','76d07ae1-99bd-4f44-9d2b-2a4d2be00f68','352d7005-8152-4c14-a7f2-6c6d1a64dad1',650,20,3,{ts '2015-12-13 21:07:36.818'},null,null,{ts '2015-12-14 08:57:55.204'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('11e70d56-14f7-492b-9573-11e6b5f11dd7','4e0d1606-5fe1-4917-9ab4-8ba860f3ac95','89356ca3-9106-49e6-a36c-322177a3d539',190,30,1,{ts '2015-12-14 08:55:33.114'},null,null,{ts '2015-12-14 18:31:36.115'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('5eb9e049-1097-4131-b9d6-331c0fae9a25','4e0d1606-5fe1-4917-9ab4-8ba860f3ac95','b2cf6efd-ad65-477d-bdcf-5a699e1462c8',380,30,2,{ts '2015-12-14 08:56:24.423'},null,null,{ts '2015-12-14 09:16:37.682'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('85c33390-34f9-4e31-9aa5-f6d2a28b079e','76d07ae1-99bd-4f44-9d2b-2a4d2be00f68','71c71450-5464-4881-9a68-0eae96e17659',650,150,4,{ts '2015-12-02 15:38:23.582'},null,null,{ts '2015-12-14 08:57:23.640'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('8879e3c8-8aee-4922-b470-a5500b348fcb','76d07ae1-99bd-4f44-9d2b-2a4d2be00f68','dc10575c-f44e-45d9-a0eb-64b7ac11292d',200,20,1,{ts '2015-12-02 08:03:39.411'},null,null,{ts '2015-12-14 08:57:23.637'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('96b5b3d6-8bfd-4fbc-a6f7-a7594d6eb315','76d07ae1-99bd-4f44-9d2b-2a4d2be00f68','68c18891-81c9-4ced-8275-5d81822fbb0b',400,20,2,{ts '2015-12-02 08:05:10.318'},null,null,{ts '2015-12-14 08:57:23.638'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('df7f3505-5694-4b25-b673-c921927a9ac7','4e0d1606-5fe1-4917-9ab4-8ba860f3ac95','c6742048-1958-4aa5-9d37-db969e2a8788',610,130,4,{ts '2015-12-14 09:16:33.777'},null,null,{ts '2015-12-15 07:47:30.085'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('fa166c21-fe6d-454c-b0a1-90b5487752ed','4e0d1606-5fe1-4917-9ab4-8ba860f3ac95','bf9ff1ef-5612-4fa3-90f8-d84a7260cd21',50,30,0,{ts '2015-12-14 08:54:52.352'},null,null,{ts '2015-12-14 09:16:37.681'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('05d6d58a-d6ca-4a6a-ab20-869ea84e8cbd','8879e3c8-8aee-4922-b470-a5500b348fcb',{ts '2015-12-02 08:03:42.377'},null,null,{ts '2015-12-14 08:57:23.640'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('11e70d56-14f7-492b-9573-11e6b5f11dd7','5eb9e049-1097-4131-b9d6-331c0fae9a25',{ts '2015-12-14 08:56:27.782'},null,null,{ts '2015-12-14 09:16:37.683'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('5eb9e049-1097-4131-b9d6-331c0fae9a25','0d776365-f885-4bfe-aecc-868130ee78c0',{ts '2015-12-14 09:04:03.915'},null,null,{ts '2015-12-14 09:16:37.683'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('5eb9e049-1097-4131-b9d6-331c0fae9a25','5eb9e049-1097-4131-b9d6-331c0fae9a25',{ts '2015-12-14 08:56:51.826'},null,null,{ts '2015-12-14 09:16:37.684'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('5eb9e049-1097-4131-b9d6-331c0fae9a25','df7f3505-5694-4b25-b673-c921927a9ac7',{ts '2015-12-14 09:16:37.680'},null,null,{ts '2015-12-14 09:16:37.684'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('8879e3c8-8aee-4922-b470-a5500b348fcb','96b5b3d6-8bfd-4fbc-a6f7-a7594d6eb315',{ts '2015-12-02 08:05:14.400'},null,null,{ts '2015-12-14 08:57:23.640'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('96b5b3d6-8bfd-4fbc-a6f7-a7594d6eb315','115f933d-6c84-462f-943f-b897c4f01aeb',{ts '2015-12-14 08:57:21.609'},null,null,{ts '2015-12-14 08:57:23.641'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('96b5b3d6-8bfd-4fbc-a6f7-a7594d6eb315','85c33390-34f9-4e31-9aa5-f6d2a28b079e',{ts '2015-12-14 08:57:23.635'},null,null,{ts '2015-12-14 08:57:23.641'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('96b5b3d6-8bfd-4fbc-a6f7-a7594d6eb315','96b5b3d6-8bfd-4fbc-a6f7-a7594d6eb315',{ts '2015-12-02 08:06:17.825'},null,null,{ts '2015-12-14 08:57:23.641'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('fa166c21-fe6d-454c-b0a1-90b5487752ed','11e70d56-14f7-492b-9573-11e6b5f11dd7',{ts '2015-12-14 08:55:36.272'},null,null,{ts '2015-12-14 09:16:37.683'});