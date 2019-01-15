update jsharmony.xpp set XPP_VAL = '%%%INIT_DB_HASH_MAIN%%%'
where xpp_process='USERS' and xpp_attrib='HASH_SEED_S';
update jsharmony.xpp set XPP_VAL = '%%%INIT_DB_HASH_CLIENT%%%'
where xpp_process='USERS' and xpp_attrib='HASH_SEED_C';
GO
insert into jsharmony.pe (pe_fname,pe_lname,pe_email,pe_pw1,pe_pw2)
values ('Admin','User','%%%INIT_DB_ADMIN_EMAIL%%%','%%%INIT_DB_ADMIN_PASS%%%','%%%INIT_DB_ADMIN_PASS%%%');
insert into jsharmony.sper (pe_id, sr_name) values(1,'*');
insert into jsharmony.sper (pe_id, sr_name) values(1,'DEV');
insert into jsharmony.sper (pe_id, sr_name) values(1,'SYSADMIN');
insert into jsharmony.sper (pe_id, sr_name) values(1,'DADMIN');
insert into jsharmony.sper (pe_id, sr_name) values(1,'X_B');
insert into jsharmony.sper (pe_id, sr_name) values(1,'X_X');
GO
delete from jsharmony.aud_d;
delete from jsharmony.aud_h;
GO
      
insert into jsharmony.gcod2_d_scope_d_ctgr(codeval1, codeval2, codetxt) values ('PE','DOCUMENT','DOCUMENT');
insert into jsharmony.gcod2_d_scope_d_ctgr(codeval1, codeval2, codetxt) values ('PE','IMAGE','IMAGE');
insert into jsharmony.gcod2_d_scope_d_ctgr(codeval1, codeval2, codetxt) values ('PE','OTHER','OTHER');
GO