DELETE FROM METL_FLOW_STEP_LINK WHERE SOURCE_STEP_ID IN (SELECT ID FROM METL_FLOW_STEP WHERE FLOW_ID IN (SELECT ID FROM METL_FLOW WHERE PROJECT_VERSION_ID='a27e7f8c-7ef5-4684-9041-a2fa5682b366' ));
DELETE FROM METL_FLOW_STEP WHERE FLOW_ID IN (SELECT ID FROM METL_FLOW WHERE PROJECT_VERSION_ID='a27e7f8c-7ef5-4684-9041-a2fa5682b366' );
DELETE FROM METL_FLOW_PARAMETER WHERE FLOW_ID IN (SELECT ID FROM METL_FLOW WHERE PROJECT_VERSION_ID='a27e7f8c-7ef5-4684-9041-a2fa5682b366' );
DELETE FROM METL_FLOW WHERE PROJECT_VERSION_ID='a27e7f8c-7ef5-4684-9041-a2fa5682b366' ;
DELETE FROM METL_COMPONENT_ATTRIBUTE_SETTING WHERE COMPONENT_ID IN (SELECT ID FROM METL_COMPONENT WHERE PROJECT_VERSION_ID='a27e7f8c-7ef5-4684-9041-a2fa5682b366' );
DELETE FROM METL_COMPONENT_ENTITY_SETTING WHERE COMPONENT_ID IN (SELECT ID FROM METL_COMPONENT WHERE PROJECT_VERSION_ID='a27e7f8c-7ef5-4684-9041-a2fa5682b366' );
DELETE FROM METL_COMPONENT_SETTING WHERE COMPONENT_ID IN (SELECT ID FROM METL_COMPONENT WHERE PROJECT_VERSION_ID='a27e7f8c-7ef5-4684-9041-a2fa5682b366' );
DELETE FROM METL_COMPONENT WHERE PROJECT_VERSION_ID='a27e7f8c-7ef5-4684-9041-a2fa5682b366' ;
DELETE FROM METL_RESOURCE_SETTING WHERE RESOURCE_ID IN (SELECT ID FROM METL_RESOURCE WHERE PROJECT_VERSION_ID='a27e7f8c-7ef5-4684-9041-a2fa5682b366' );
DELETE FROM METL_RESOURCE WHERE PROJECT_VERSION_ID='a27e7f8c-7ef5-4684-9041-a2fa5682b366' ;
DELETE FROM METL_MODEL_ATTRIBUTE WHERE ENTITY_ID IN (SELECT ID FROM METL_MODEL_ENTITY WHERE MODEL_ID in (SELECT ID FROM METL_MODEL WHERE PROJECT_VERSION_ID='a27e7f8c-7ef5-4684-9041-a2fa5682b366' ));
DELETE FROM METL_MODEL_ENTITY WHERE MODEL_ID in (SELECT ID FROM METL_MODEL WHERE PROJECT_VERSION_ID='a27e7f8c-7ef5-4684-9041-a2fa5682b366' );
DELETE FROM METL_MODEL WHERE PROJECT_VERSION_ID='a27e7f8c-7ef5-4684-9041-a2fa5682b366' ;
DELETE FROM METL_FOLDER WHERE PROJECT_VERSION_ID='a27e7f8c-7ef5-4684-9041-a2fa5682b366';
DELETE FROM METL_PROJECT_VERSION WHERE ID='a27e7f8c-7ef5-4684-9041-a2fa5682b366';
DELETE FROM METL_PROJECT WHERE ID='64e7dcaa-cab7-46ac-a431-abc49b4f9e3e';
insert into METL_PROJECT (ID, NAME, DESCRIPTION, DELETED, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('64e7dcaa-cab7-46ac-a431-abc49b4f9e3e','BinaryFileWriter Flow Test','This project contains tests for Metl.  It is run during the build.',0,{ts '2015-11-16 08:41:59.956'},null,null,{ts '2015-12-01 08:53:29.640'});
insert into METL_PROJECT_VERSION (ID, VERSION_LABEL, PROJECT_ID, ORIG_VERSION_ID, DESCRIPTION, READ_ONLY, ARCHIVED, DELETED, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('a27e7f8c-7ef5-4684-9041-a2fa5682b366','1.0','64e7dcaa-cab7-46ac-a431-abc49b4f9e3e',null,null,0,0,0,{ts '2015-11-16 08:41:59.956'},null,null,{ts '2015-11-16 08:41:59.958'});
insert into METL_MODEL (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, SHARED, FOLDER_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('7d66e4dd-9434-4e43-9554-6ea871352e23','047302b7-0915-43be-a78e-2f95d4602588','a27e7f8c-7ef5-4684-9041-a2fa5682b366',0,'OneColumnEntity',0,null,{ts '2015-11-16 08:43:12.021'},null,null,{ts '2015-11-16 08:45:54.094'});
insert into METL_MODEL (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, SHARED, FOLDER_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('f72fa005-e58b-4adf-946a-4b206ee6cfd3','273aec0e-01d2-4c1c-ab7a-6dfa9e9fad4e','a27e7f8c-7ef5-4684-9041-a2fa5682b366',0,'TwoColumnEntity',0,null,{ts '2015-11-19 12:59:25.377'},null,null,{ts '2015-11-19 12:59:30.127'});
insert into METL_MODEL_ENTITY (ID, MODEL_ID, NAME, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('425f003c-9249-4e93-ae85-9c8ff2ee196d','f72fa005-e58b-4adf-946a-4b206ee6cfd3','TwoColumnEntity',{ts '2015-11-19 12:59:33.890'},null,null,{ts '2015-11-19 13:00:29.935'});
insert into METL_MODEL_ENTITY (ID, MODEL_ID, NAME, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('79d82d44-97bc-4e11-9a32-da2469fdde91','7d66e4dd-9434-4e43-9554-6ea871352e23','OneColumnEntity',{ts '2015-11-16 08:43:29.158'},null,null,{ts '2015-11-16 08:43:44.274'});
insert into METL_MODEL_ATTRIBUTE (ID, ENTITY_ID, NAME, TYPE, TYPE_ENTITY_ID, PK, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('281e88e6-ccdb-44b7-bad9-2c0676ef8ea4','79d82d44-97bc-4e11-9a32-da2469fdde91','Col1','VARCHAR',null,0,{ts '2015-11-16 08:43:34.318'},null,null,{ts '2015-11-16 08:43:37.613'});
insert into METL_MODEL_ATTRIBUTE (ID, ENTITY_ID, NAME, TYPE, TYPE_ENTITY_ID, PK, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('3057f2f1-2385-40ce-9ad6-9b3021652a5a','425f003c-9249-4e93-ae85-9c8ff2ee196d','COL1','VARCHAR',null,0,{ts '2015-11-19 12:59:41.817'},null,null,{ts '2015-11-19 13:00:08.406'});
insert into METL_MODEL_ATTRIBUTE (ID, ENTITY_ID, NAME, TYPE, TYPE_ENTITY_ID, PK, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('e42ca641-df40-475f-a634-bc6ea76e4caf','425f003c-9249-4e93-ae85-9c8ff2ee196d','ID','INTEGER',null,1,{ts '2015-11-19 12:59:41.370'},null,null,{ts '2015-11-19 13:00:05.016'});
insert into METL_RESOURCE (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('2c185046-1121-4b25-a5f6-1c747c6b9136','cfdb1a8b-7520-4a11-8064-01dba8c96511','a27e7f8c-7ef5-4684-9041-a2fa5682b366',0,'directory2','Local File System',null,{ts '2015-11-24 17:21:17.441'},null,null,{ts '2015-11-24 17:21:20.711'});
insert into METL_RESOURCE (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('333e4c84-63cf-4c8b-87c3-d8ab917955a8','df577961-8caf-4de8-8b96-68a0a3c40ae5','a27e7f8c-7ef5-4684-9041-a2fa5682b366',0,'directory1','Local File System',null,{ts '2015-11-22 19:09:27.085'},null,null,{ts '2015-11-24 17:21:08.464'});
insert into METL_RESOURCE (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('e15810d9-c756-4e60-a274-283991cf510c','dd7fb3a7-4ab1-4334-b795-1e6514697b53','a27e7f8c-7ef5-4684-9041-a2fa5682b366',0,'database','Database',null,{ts '2015-11-19 12:57:48.887'},null,null,{ts '2015-11-19 12:57:51.921'});
insert into METL_RESOURCE_SETTING (RESOURCE_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('2c185046-1121-4b25-a5f6-1c747c6b9136','localfile.path','working/directory2',{ts '2015-11-24 17:21:26.388'},null,null,{ts '2015-11-24 17:21:28.292'});
insert into METL_RESOURCE_SETTING (RESOURCE_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('333e4c84-63cf-4c8b-87c3-d8ab917955a8','localfile.path','working/directory1',{ts '2015-11-22 19:09:46.255'},null,null,{ts '2015-11-24 17:21:01.004'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('0328bc3b-49b1-4d0b-b2e8-2e53869b14c0','92b06b1c-d1c5-47bb-b59f-b9b4b1e28f90','a27e7f8c-7ef5-4684-9041-a2fa5682b366',0,'Assert','Assert',null,0,null,null,null,{ts '2015-11-25 13:47:10.989'},null,null,{ts '2015-12-04 19:40:05.786'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('1114ac37-97f6-45c5-b85b-0e2f604afd5f','8f8b5f7a-267c-4046-9e38-23efd234f377','a27e7f8c-7ef5-4684-9041-a2fa5682b366',0,'Binary File Writer','Binary File Writer',null,0,null,null,'2c185046-1121-4b25-a5f6-1c747c6b9136',{ts '2015-11-25 13:46:53.388'},null,null,{ts '2015-12-01 09:20:29.709'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('117d159b-adac-40b6-aa24-18a54fe71b1e','efc0883e-c93a-40b5-94b0-5441fd4eba6b','a27e7f8c-7ef5-4684-9041-a2fa5682b366',0,'Setup','Script',null,0,null,null,'333e4c84-63cf-4c8b-87c3-d8ab917955a8',{ts '2015-11-24 12:48:58.976'},null,null,{ts '2015-11-24 17:04:16.009'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('1bde79b1-c9e0-4238-b3f9-03cd6bca4084','ecf930fa-e908-4451-b58e-50e16fb56c37','a27e7f8c-7ef5-4684-9041-a2fa5682b366',0,'Script','Script',null,0,null,null,'333e4c84-63cf-4c8b-87c3-d8ab917955a8',{ts '2015-11-25 13:46:11.748'},null,null,{ts '2015-12-04 19:40:05.784'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('43aefaa0-40ea-4140-8eef-5fd0d74d9900','631d017e-6f5b-46f9-8ec9-aab12234c2dd','a27e7f8c-7ef5-4684-9041-a2fa5682b366',0,'File Poller','File Poller',null,0,null,null,'333e4c84-63cf-4c8b-87c3-d8ab917955a8',{ts '2015-11-25 13:46:26.611'},null,null,{ts '2015-12-01 09:20:25.717'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('4e51fd79-739f-434d-a516-7086aa643d73','ecf930fa-e908-4451-b58e-50e16fb56c37','a27e7f8c-7ef5-4684-9041-a2fa5682b366',0,'Setup','Script',null,0,null,null,'333e4c84-63cf-4c8b-87c3-d8ab917955a8',{ts '2015-11-25 13:46:11.748'},null,null,{ts '2015-12-01 09:20:23.733'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('57b74a50-a612-41c1-bae7-d0db5a947882','035084f0-b343-4404-8a12-ee9711e8d6cd','a27e7f8c-7ef5-4684-9041-a2fa5682b366',0,'Binary File Reader','Binary File Reader',null,0,null,null,'333e4c84-63cf-4c8b-87c3-d8ab917955a8',{ts '2015-11-25 13:46:32.818'},null,null,{ts '2015-12-04 19:40:05.785'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('a06ba3d3-054b-4dd0-bbd1-72ca08e591dd','035084f0-b343-4404-8a12-ee9711e8d6cd','a27e7f8c-7ef5-4684-9041-a2fa5682b366',0,'Binary File Reader','Binary File Reader',null,0,null,null,'333e4c84-63cf-4c8b-87c3-d8ab917955a8',{ts '2015-11-25 13:46:32.818'},null,null,{ts '2015-12-01 09:20:27.610'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('ae82ccba-6ba7-43bd-b5e0-b17f1ba8d7b8','49d4097a-cdbb-4d07-a495-56ee41a2f69d','a27e7f8c-7ef5-4684-9041-a2fa5682b366',0,'Assert File Exists','Script',null,0,null,null,null,{ts '2015-12-01 09:16:44.277'},null,null,{ts '2015-12-01 09:20:32.494'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('bddf0bf7-9790-4743-8da5-f10377f88153','d6485c79-435a-49aa-a4d7-cb04bca12746','a27e7f8c-7ef5-4684-9041-a2fa5682b366',0,'File Poller','File Poller',null,0,null,null,'2c185046-1121-4b25-a5f6-1c747c6b9136',{ts '2015-11-25 13:47:05.114'},null,null,{ts '2015-12-04 19:40:05.786'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('df0ac23e-e75b-4824-837e-1df1fd1896aa','8f8b5f7a-267c-4046-9e38-23efd234f377','a27e7f8c-7ef5-4684-9041-a2fa5682b366',0,'Binary File Writer','Binary File Writer',null,0,null,null,'2c185046-1121-4b25-a5f6-1c747c6b9136',{ts '2015-11-25 13:46:53.388'},null,null,{ts '2015-12-04 19:40:05.785'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('e244bc39-53bb-44b0-8cc9-d174791a0d2f','631d017e-6f5b-46f9-8ec9-aab12234c2dd','a27e7f8c-7ef5-4684-9041-a2fa5682b366',0,'File Poller','File Poller',null,0,null,null,'333e4c84-63cf-4c8b-87c3-d8ab917955a8',{ts '2015-11-25 13:46:26.611'},null,null,{ts '2015-12-04 19:40:05.784'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('0e93f0b3-e7a9-4401-96ec-137446d55c3e','a06ba3d3-054b-4dd0-bbd1-72ca08e591dd','run.when','PER MESSAGE',{ts '2015-11-25 14:02:15.153'},null,null,{ts '2015-12-01 09:20:27.610'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('160112fe-287a-4b64-961b-afba1dc4d642','bddf0bf7-9790-4743-8da5-f10377f88153','run.when','PER UNIT OF WORK',{ts '2015-12-04 19:33:24.630'},null,null,{ts '2015-12-04 19:40:05.786'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('171ff7e0-3aa1-4225-be74-238ff6dafe69','df0ac23e-e75b-4824-837e-1df1fd1896aa','filename.message.header','true',{ts '2015-11-25 14:02:43.844'},null,null,{ts '2015-12-04 19:40:05.786'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('1c3ee93b-22f3-4c2c-a393-851ca51a7b92','57b74a50-a612-41c1-bae7-d0db5a947882','control.message.on.eof','false',{ts '2015-11-25 14:02:21.509'},null,null,{ts '2015-12-04 19:40:05.785'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('1c9490e9-b9a6-41e3-b86d-8fcfc0e775b4','df0ac23e-e75b-4824-837e-1df1fd1896aa','filename.property','source.file.path',{ts '2015-11-25 14:06:08.618'},null,null,{ts '2015-12-04 19:40:05.786'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('255afc74-66b4-4d38-b498-dc2a5cd7317f','0328bc3b-49b1-4d0b-b2e8-2e53869b14c0','expected.text.messages.count','2',{ts '2015-11-25 14:05:39.795'},null,null,{ts '2015-12-04 19:40:05.787'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('28e0eec0-fa96-4d84-9641-23b282811be0','0328bc3b-49b1-4d0b-b2e8-2e53869b14c0','expected.control.messages.count','1',{ts '2015-11-25 14:05:41.294'},null,null,{ts '2015-12-04 19:40:05.787'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('40aef88f-1205-46ea-a364-6bc218d0348d','43aefaa0-40ea-4140-8eef-5fd0d74d9900','file.pattern','*.txt',{ts '2015-11-25 14:01:14.338'},null,null,{ts '2015-12-01 09:27:28.921'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('411d13f1-14f2-41a9-8fde-2dfeeb758ae8','1114ac37-97f6-45c5-b85b-0e2f604afd5f','relative.path','$(subdir)/$(source.file.path)',{ts '2015-12-01 09:14:27.130'},null,null,{ts '2015-12-01 09:20:29.710'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('6daedc97-8e6d-44a2-8cf3-fecb2a51f7cb','1114ac37-97f6-45c5-b85b-0e2f604afd5f','filename.message.header','true',{ts '2015-11-25 14:02:43.844'},null,null,{ts '2015-12-01 09:20:29.709'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('73b0e439-894d-466a-badd-b26de97fb2aa','57b74a50-a612-41c1-bae7-d0db5a947882','get.file.name.from.message','true',{ts '2015-11-25 14:02:17.706'},null,null,{ts '2015-12-04 19:40:05.785'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('752dd4eb-4ddb-4ba7-81c5-56b9a04945b5','117d159b-adac-40b6-aa24-18a54fe71b1e','handle.msg.script','classpathToDirectory(''/test.zip'')',{ts '2015-11-24 13:01:02.215'},null,null,{ts '2015-11-24 17:04:16.010'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('76ce2a10-dead-4db6-b968-9740758ad53c','1bde79b1-c9e0-4238-b3f9-03cd6bca4084','run.when','PER UNIT OF WORK',{ts '2015-11-25 14:01:01.880'},null,null,{ts '2015-12-04 19:40:05.784'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('7f51ff65-2283-493c-887b-dfaf0f733ba7','1bde79b1-c9e0-4238-b3f9-03cd6bca4084','handle.msg.script','File workingDir = new File("working/directory1")
deleteQuietly(workingDir)
deleteQuietly(new File("working/directory2"))
File inboxDir = new File(workingDir, "inbox")
inboxDir.mkdirs()
writeStringToFile(new File(inboxDir, "a.txt"), "this is the first file")
writeStringToFile(new File(inboxDir, "b.txt"), "this is the second file")',{ts '2015-11-25 13:48:17.272'},null,null,{ts '2015-12-04 19:40:05.784'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('85a7dbc4-20e9-40a7-aa1c-ef5683552feb','4e51fd79-739f-434d-a516-7086aa643d73','run.when','PER UNIT OF WORK',{ts '2015-11-25 14:01:01.880'},null,null,{ts '2015-12-01 09:20:23.734'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('a9606543-52c2-4a82-b3e8-b61765302fcb','57b74a50-a612-41c1-bae7-d0db5a947882','run.when','PER MESSAGE',{ts '2015-11-25 14:02:15.153'},null,null,{ts '2015-12-04 19:40:05.785'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('a9888312-05f7-4629-a384-a3bd4a455fa3','e244bc39-53bb-44b0-8cc9-d174791a0d2f','file.pattern','inbox/*.txt',{ts '2015-11-25 14:01:14.338'},null,null,{ts '2015-12-04 19:40:05.785'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('ab0b3c52-c170-49b4-9416-a0a949c10ba8','a06ba3d3-054b-4dd0-bbd1-72ca08e591dd','get.file.name.from.message','true',{ts '2015-11-25 14:02:17.706'},null,null,{ts '2015-12-01 09:20:27.610'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('ac9224fd-2176-4cef-8770-fadb84a781a4','df0ac23e-e75b-4824-837e-1df1fd1896aa','get.file.name.from.message','true',{ts '2015-11-25 14:05:12.785'},null,null,{ts '2015-12-04 19:40:05.786'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('ad547591-0351-43dc-8fc7-1c41654decc9','4e51fd79-739f-434d-a516-7086aa643d73','handle.msg.script','File workingDir = new File("working/directory1")
deleteQuietly(workingDir)
deleteQuietly(new File("working/directory2"))
writeStringToFile(new File(workingDir, "a.txt"), "this is the first file")',{ts '2015-11-25 13:48:17.272'},null,null,{ts '2015-12-01 09:25:30.508'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('b14af825-ded7-4883-889f-91e4cbff819f','a06ba3d3-054b-4dd0-bbd1-72ca08e591dd','control.message.on.eof','true',{ts '2015-11-25 14:02:21.509'},null,null,{ts '2015-12-01 09:20:27.610'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('b6ee91ac-048c-44bb-8fb3-f66375480a91','117d159b-adac-40b6-aa24-18a54fe71b1e','run.when','PER UNIT OF WORK',{ts '2015-11-24 12:49:35.760'},null,null,{ts '2015-11-24 17:04:16.010'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('c90763e8-da37-4a2d-870e-bf742ef48c36','1114ac37-97f6-45c5-b85b-0e2f604afd5f','get.file.name.from.message','false',{ts '2015-11-25 14:05:12.785'},null,null,{ts '2015-12-01 09:20:29.709'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('da0523af-db9c-46c6-9a5b-54aebb6c8aa2','1114ac37-97f6-45c5-b85b-0e2f604afd5f','filename.property','source.file.path',{ts '2015-11-25 14:06:08.618'},null,null,{ts '2015-12-01 09:20:29.709'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('e28021c2-334c-4ba2-99dc-331a58a470b3','bddf0bf7-9790-4743-8da5-f10377f88153','file.pattern','inbox/*.txt',{ts '2015-11-25 14:05:29.876'},null,null,{ts '2015-12-04 19:40:05.786'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('e812d7dd-8a94-4401-8c8a-a79323d5dc3b','ae82ccba-6ba7-43bd-b5e0-b17f1ba8d7b8','handle.msg.script','File workingDir = new File("working/directory2/testdir")
File testFile = new File(workingDir, "a.txt")
if (!testFile.exists()) {
    throw new AssertException("${testFile.getAbsolutePath()} does not exist");
}',{ts '2015-12-01 09:17:10.335'},null,null,{ts '2015-12-01 09:20:32.495'});
insert into METL_FLOW (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, FOLDER_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME, TEST) values ('4cc8c5eb-3119-46dd-867e-36d6d81d317f','ac3aecda-f4fe-4b06-8db1-2724243ba1a6','a27e7f8c-7ef5-4684-9041-a2fa5682b366',0,'BinaryFileWriter - Test Parameter and Header Token Replacement',null,{ts '2015-12-01 09:07:25.641'},null,null,{ts '2015-12-01 09:16:52.096'},1);
insert into METL_FLOW (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, FOLDER_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME, TEST) values ('c8a1b3e8-e324-48ff-9083-5f3f34e93a76','93860b34-291a-4e6c-a2c4-caf8b8eb1177','a27e7f8c-7ef5-4684-9041-a2fa5682b366',0,'BinaryFileWriter - Test Multiple File Writes',null,{ts '2015-11-25 13:45:09.324'},null,null,{ts '2015-12-04 19:40:05.784'},1);
insert into METL_FLOW_PARAMETER (ID, FLOW_ID, NAME, DEFAULT_VALUE, POSITION, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('aa0a641c-2f5f-40df-a24c-92b299a6bba5','4cc8c5eb-3119-46dd-867e-36d6d81d317f','subdir','testdir',1,{ts '2015-12-01 09:17:18.790'},null,null,{ts '2015-12-01 09:17:27.357'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('140da742-2ba8-4d4c-8d29-3cfd20d87893','4cc8c5eb-3119-46dd-867e-36d6d81d317f','1114ac37-97f6-45c5-b85b-0e2f604afd5f',410,20,3,{ts '2015-11-25 13:46:53.388'},null,null,{ts '2015-12-01 09:20:29.710'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('2eff0573-65ca-4df6-82a8-b647fa39b94d','c8a1b3e8-e324-48ff-9083-5f3f34e93a76','0328bc3b-49b1-4d0b-b2e8-2e53869b14c0',390,180,6,{ts '2015-11-25 13:47:10.989'},null,null,{ts '2015-12-04 19:40:05.787'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('33d3b1e8-8aca-4258-b971-c8d712f1a22c','c8a1b3e8-e324-48ff-9083-5f3f34e93a76','bddf0bf7-9790-4743-8da5-f10377f88153',240,180,5,{ts '2015-11-25 13:47:05.114'},null,null,{ts '2015-12-04 19:40:05.786'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('47798f9c-58db-4ac0-85b3-bb57a2f964c5','4cc8c5eb-3119-46dd-867e-36d6d81d317f','4e51fd79-739f-434d-a516-7086aa643d73',20,20,0,{ts '2015-11-25 13:46:11.749'},null,null,{ts '2015-12-01 09:20:23.734'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('75117be5-6732-4f55-b8c4-9d45e56afdd7','c8a1b3e8-e324-48ff-9083-5f3f34e93a76','1bde79b1-c9e0-4238-b3f9-03cd6bca4084',30,20,0,{ts '2015-11-25 13:46:11.749'},null,null,{ts '2015-12-04 19:40:05.784'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('8256dad9-4ccf-4374-a79c-4ff77f7c2f3e','4cc8c5eb-3119-46dd-867e-36d6d81d317f','ae82ccba-6ba7-43bd-b5e0-b17f1ba8d7b8',540,20,4,{ts '2015-12-01 09:16:44.277'},null,null,{ts '2015-12-01 09:20:32.495'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('964fa2d6-d54f-47ad-8465-13082d1ca3b9','c8a1b3e8-e324-48ff-9083-5f3f34e93a76','df0ac23e-e75b-4824-837e-1df1fd1896aa',470,20,3,{ts '2015-11-25 13:46:53.388'},null,null,{ts '2015-12-04 19:40:05.786'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('9bdf6f5b-9e42-40af-936c-d6d1e27f034c','4cc8c5eb-3119-46dd-867e-36d6d81d317f','43aefaa0-40ea-4140-8eef-5fd0d74d9900',150,20,1,{ts '2015-11-25 13:46:26.611'},null,null,{ts '2015-12-01 09:20:25.718'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('c9917d1c-b694-45a6-8b9e-8cac00051de5','c8a1b3e8-e324-48ff-9083-5f3f34e93a76','57b74a50-a612-41c1-bae7-d0db5a947882',320,20,2,{ts '2015-11-25 13:46:32.818'},null,null,{ts '2015-12-04 19:40:05.785'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('d07ff0a6-03c9-4aab-812f-5ff78b6fb084','4cc8c5eb-3119-46dd-867e-36d6d81d317f','a06ba3d3-054b-4dd0-bbd1-72ca08e591dd',280,20,2,{ts '2015-11-25 13:46:32.818'},null,null,{ts '2015-12-01 09:20:27.611'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('e420aa09-1c15-40d6-9ae4-6d4360231172','c8a1b3e8-e324-48ff-9083-5f3f34e93a76','e244bc39-53bb-44b0-8cc9-d174791a0d2f',170,20,1,{ts '2015-11-25 13:46:26.611'},null,null,{ts '2015-12-04 19:40:05.785'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('140da742-2ba8-4d4c-8d29-3cfd20d87893','8256dad9-4ccf-4374-a79c-4ff77f7c2f3e',{ts '2015-12-01 09:16:52.096'},null,null,{ts '2015-12-01 09:16:52.104'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('33d3b1e8-8aca-4258-b971-c8d712f1a22c','2eff0573-65ca-4df6-82a8-b647fa39b94d',{ts '2015-11-25 13:47:25.385'},null,null,{ts '2015-12-04 19:40:05.787'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('47798f9c-58db-4ac0-85b3-bb57a2f964c5','9bdf6f5b-9e42-40af-936c-d6d1e27f034c',{ts '2015-11-25 13:47:15.918'},null,null,{ts '2015-12-01 09:16:52.103'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('75117be5-6732-4f55-b8c4-9d45e56afdd7','e420aa09-1c15-40d6-9ae4-6d4360231172',{ts '2015-11-25 13:47:15.918'},null,null,{ts '2015-12-04 19:40:05.787'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('964fa2d6-d54f-47ad-8465-13082d1ca3b9','33d3b1e8-8aca-4258-b971-c8d712f1a22c',{ts '2015-12-04 19:40:05.784'},null,null,{ts '2015-12-04 19:40:05.787'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('9bdf6f5b-9e42-40af-936c-d6d1e27f034c','d07ff0a6-03c9-4aab-812f-5ff78b6fb084',{ts '2015-11-25 13:47:17.975'},null,null,{ts '2015-12-01 09:16:52.103'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('c9917d1c-b694-45a6-8b9e-8cac00051de5','964fa2d6-d54f-47ad-8465-13082d1ca3b9',{ts '2015-11-25 13:47:20.204'},null,null,{ts '2015-12-04 19:40:05.787'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('d07ff0a6-03c9-4aab-812f-5ff78b6fb084','140da742-2ba8-4d4c-8d29-3cfd20d87893',{ts '2015-11-25 13:47:20.204'},null,null,{ts '2015-12-01 09:16:52.104'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('e420aa09-1c15-40d6-9ae4-6d4360231172','c9917d1c-b694-45a6-8b9e-8cac00051de5',{ts '2015-11-25 13:47:17.975'},null,null,{ts '2015-12-04 19:40:05.787'});
