/*
Copyright 2017 apHarmony

This file is part of jsHarmony.

jsHarmony is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

jsHarmony is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with this package.  If not, see <http://www.gnu.org/licenses/>.
*/

var jsHarmonyModuleTransform = require('jsharmony/jsHarmonyModuleTransform');

function jsHarmonyFactoryTransform(module){
  this.tables = {
    "audit__tbl": "audit",
    "audit_detail": "audit_detail",
    "sys_user": "sys_user",
    "sys_role": "sys_role",
    "sys_func": "sys_func",
    "sys_user_role": "sys_user_role",
    "sys_user_func": "sys_user_func",
    "menu__tbl": "menu",
    "sys_menu_role": "sys_menu_role",
    "cust_user": "cust_user",
    "cust_role": "cust_role",
    "cust_user_role": "cust_user_role",
    "cust_menu_role": "cust_menu_role",
    "doc__tbl": "doc",
    "single": "single",
    "number__tbl": "number",
    "note__tbl": "note",
    "txt__tbl": "txt",
    "version__tbl": "version",
    "help__tbl": "help",
    "help_target": "help_target",
    "code_app": "code_app",
    "code_sys": "code_sys",
    "code_app_prefix": "code_",
    "code_sys_prefix": "code_",
    "code_ac": "code_ac",
    "code_ac1": "code_ac1",
    "code_ahc": "code_ahc",
    "code_country": "code_country",
    "code_doc_scope": "code_doc_scope",
    "code_param_user_process": "code_param_user_process",
    "code_param_app_process": "code_param_app_process",
    "code_param_sys_process": "code_param_sys_process",
    "code2_app": "code2_app",
    "code2_sys": "code2_sys",
    "code2_app_prefix": "code2_",
    "code2_sys_prefix": "code2_",
    "code2_doc_ctgr": "code2_doc_ctgr",
    "code2_country_state": "code2_country_state",
    "code2_param_user_attrib": "code2_param_user_attrib",
    "code2_param_app_attrib": "code2_param_app_attrib",
    "code2_param_sys_attrib": "code2_param_sys_attrib",
    "code_note_scope": "code_note_scope",
    "code_note_type": "code_note_type",
    "code_param_type": "code_param_type",
    "code_job_action": "code_job_action",
    "code_job_source": "code_job_source",
    "code_txt_type": "code_txt_type",
    "code_version_sts": "code_version_sts",
    "queue__tbl": "queue",
    "script__tbl": "script",
    "job__tbl": "job",
    "job_doc": "job_doc",
    "job_email": "job_email",
    "job_note": "job_note",
    "job_queue": "job_queue",
    "job_sms": "job_sms",
    "param__tbl": "param",
    "param_user": "param_user",
    "param_app": "param_app",
    "param_sys": "param_sys",

    "v_audit_detail": "v_audit_detail",
    "v_cust_user_nostar": "v_cust_user_nostar",
    "v_sys_menu_role_selection": "v_sys_menu_role_selection",
    "v_cust_menu_role_selection": "v_cust_menu_role_selection",
    "v_param": "v_param",
    "v_param_cur": "v_param_cur",
    "v_param_user": "v_param_user",
    "v_param_app": "v_param_app",
    "v_param_sys": "v_param_sys",
    "v_app_info": "v_app_info",
    "v_month": "v_month",
    "v_year": "v_year",
    "v_my_roles": "v_my_roles",
    "v_my_user": "v_my_user",
    "v_doc": "v_doc",
    "v_doc_ext": "v_doc_ext",
    "v_doc_filename": "v_doc_filename",
    "v_note": "v_note",
    "v_note_ext": "v_note_ext",
  };

  this.fields = {
    "audit_op": "audit_op",
    "audit_seq": "audit_seq",
    "audit_tstmp": "audit_tstmp",
    "audit_user": "audit_user",
    "cust_id": "cust_id",
    "cust_name": "cust_name",
    "cust_name_ext": "cust_name_ext",
    "code_etstmp": "code_etstmp",
    "code_euser": "code_euser",
    "code_euser_fmt": "code_euser_fmt",
    "code_h_etstmp": "code_h_etstmp",
    "code_h_euser": "code_h_euser",
    "code_h_mtstmp": "code_h_mtstmp",
    "code_h_muser": "code_h_muser",
    "code_mtstmp": "code_mtstmp",
    "code_muser": "code_muser",
    "code_muser_fmt": "code_muser_fmt",
    "code_notes": "code_notes",
    "code_snotes": "code_snotes",
    "code_attrib": "code_attrib",
    "code_attrib_desc": "code_attrib_desc",
    "code_code": "code_code",
    "code_code_desc": "code_code_desc",
    "code_desc": "code_desc",
    "code_name": "code_name",
    "code_schema": "code_schema",
    "code_end_reason": "code_end_reason",
    "code_end_dt": "code_end_dt",
    "code_txt": "code_txt",
    "code_val": "code_val",
    "code_val1": "code_val1",
    "code_va12": "code_va12",
    "code_seq": "code_seq",
    "audit_column_name": "audit_column_name",
    "audit_column_val": "audit_column_val",
    "cust_user_role_id": "cust_user_role_id",
    "cust_user_role_snotes": "cust_user_role_snotes",
    "cust_role_attrib": "cust_role_attrib",
    "cust_role_code": "cust_role_code",
    "cust_role_desc": "cust_role_desc",
    "cust_role_id": "cust_role_id",
    "cust_role_name": "cust_role_name",
    "cust_role_seq": "cust_role_seq",
    "cust_role_snotes": "cust_role_snotes",
    "cust_role_sts": "cust_role_sts",
    "cust_menu_role_id": "cust_menu_role_id",
    "cust_menu_role_snotes": "cust_menu_role_snotes",
    "cust_menu_role_selection": "cust_menu_role_selection",
    "doc_ctgr": "doc_ctgr",
    "doc_ctgr_txt": "doc_ctgr_txt",
    "doc_desc": "doc_desc",
    "doc_etstmp": "doc_etstmp",
    "doc_euser": "doc_euser",
    "doc_euser_fmt": "doc_euser_fmt",
    "doc_ext": "doc_ext",
    "doc_filename": "doc_filename",
    "doc_id": "doc_id",
    "doc_sync_id": "doc_sync_id",
    "doc_datalock": "doc_datalock",
    "doc_mtstmp": "doc_mtstmp",
    "doc_muser": "doc_muser",
    "doc_muser_fmt": "doc_muser_fmt",
    "doc_scope": "doc_scope",
    "doc_scope_id": "doc_scope_id",
    "doc_size": "doc_size",
    "doc_snotes": "doc_snotes",
    "doc_sts": "doc_sts",
    "doc_sync_tstmp": "doc_sync_tstmp",
    "doc_utstmp": "doc_utstmp",
    "doc_uuser": "doc_uuser",
    "db_id": "db_id",
    "dual_bigint": "dual_bigint",
    "single_ident": "single_ident",
    "single_integer": "single_integer",
    "dual_nvarchar50": "dual_nvarchar50",
    "single_text": "single_text",
    "single_dummy": "single_dummy",
    "item_id": "item_id",
    "item_name": "item_name",
    "email_attach": "email_attach",
    "email_bcc": "email_bcc",
    "email_cc": "email_cc",
    "email_doc_id": "email_doc_id",
    "email_html": "email_html",
    "email_subject": "email_subject",
    "email_text": "email_text",
    "email_to": "email_to",
    "email_txt_attrib": "email_txt_attrib",
    "code_app_h_id": "code_app_h_id",
    "code_app_id": "code_app_id",
    "code2_app_h_id": "code2_app_h_id",
    "code2_app_id": "code2_app_id",
    "param_app_attrib": "param_app_attrib",
    "param_app_etstmp": "param_app_etstmp",
    "param_app_euser": "param_app_euser",
    "param_app_id": "param_app_id",
    "param_app_info": "param_app_info",
    "param_app_mtstmp": "param_app_mtstmp",
    "param_app_muser": "param_app_muser",
    "param_app_process": "param_app_process",
    "param_app_val": "param_app_val",
    "help_etstmp": "help_etstmp",
    "help_euser": "help_euser",
    "help_id": "help_id",
    "help_listing_main": "help_listing_main",
    "help_listing_client": "help_listing_client",
    "help_mtstmp": "help_mtstmp",
    "help_muser": "help_muser",
    "help_seq": "help_seq",
    "help_text": "help_text",
    "help_title": "help_title",
    "help_unq_code": "help_unq_code",
    "app_addr": "app_addr",
    "app_bphone": "app_bphone",
    "app_city": "app_city",
    "app_contact": "app_contact",
    "app_email": "app_email",
    "app_fax": "app_fax",
    "app_full_addr": "app_full_addr",
    "app_title": "app_title",
    "app_state": "app_state",
    "app_zip": "app_zip",
    "help_target_code": "help_target_code",
    "help_target_desc": "help_target_desc",
    "help_target_id": "help_target_id",
    "month_txt2": "month_txt2",
    "month_txt": "month_txt",
    "my_sys_user_id": "my_sys_user_id",
    "number_val": "number_val",
    "month_val": "month_val",
    "note_dt": "note_dt",
    "note_etstmp": "note_etstmp",
    "note_etstmp_fmt": "note_etstmp_fmt",
    "note_euser": "note_euser",
    "note_euser_fmt": "note_euser_fmt",
    "note_id": "note_id",
    "note_sync_id": "note_sync_id",
    "note_mtstmp": "note_mtstmp",
    "note_mtstmp_fmt": "note_mtstmp_fmt",
    "note_muser": "note_muser",
    "note_muser_fmt": "note_muser_fmt",
    "note_body": "note_body",
    "note_scope": "note_scope",
    "note_scope_id": "note_scope_id",
    "note_snotes": "note_snotes",
    "note_sts": "note_sts",
    "note_sync_tstmp": "note_sync_tstmp",
    "note_type": "note_type",
    "new_cust_role_name": "new_cust_role_name",
    "new_menu_id": "new_menu_id",
    "new_sys_role_name": "new_sys_role_name",
    "sys_user_addr": "sys_user_addr",
    "sys_user_bphone": "sys_user_bphone",
    "sys_user_city": "sys_user_city",
    "sys_user_country": "sys_user_country",
    "sys_user_cphone": "sys_user_cphone",
    "sys_user_email": "sys_user_email",
    "sys_user_enddt": "sys_user_enddt",
    "sys_user_etstmp": "sys_user_etstmp",
    "sys_user_euser": "sys_user_euser",
    "sys_user_fname": "sys_user_fname",
    "sys_user_hash": "sys_user_hash",
    "sys_user_id": "sys_user_id",
    "sys_user_initials": "sys_user_initials",
    "sys_user_jobtitle": "sys_user_jobtitle",
    "sys_user_lastlogin_ip": "sys_user_lastlogin_ip",
    "sys_user_lastlogin_tstmp": "sys_user_lastlogin_tstmp",
    "sys_user_lname": "sys_user_lname",
    "sys_user_mname": "sys_user_mname",
    "sys_user_mtstmp": "sys_user_mtstmp",
    "sys_user_muser": "sys_user_muser",
    "sys_user_name": "sys_user_name",
    "SYS_USER_NAME": "SYS_USER_NAME",
    "sys_user_pw1": "sys_user_pw1",
    "sys_user_pw2": "sys_user_pw2",
    "sys_user_snotes": "sys_user_snotes",
    "sys_user_startdt": "sys_user_startdt",
    "sys_user_state": "sys_user_state",
    "sys_user_sts": "sys_user_sts",
    "sys_user_stsdt": "sys_user_stsdt",
    "sys_user_unotes": "sys_user_unotes",
    "sys_user_unq_email": "sys_user_unq_email",
    "sys_user_zip": "sys_user_zip",
    "param_cur_attrib": "param_cur_attrib",
    "param_cur_process": "param_cur_process",
    "param_cur_source": "param_cur_source",
    "param_cur_val": "param_cur_val",
    "param_attrib": "param_attrib",
    "param_desc": "param_desc",
    "param_etstmp": "param_etstmp",
    "param_euser": "param_euser",
    "is_param_app": "is_param_app",
    "param_id": "param_id",
    "param_info": "param_info",
    "param_mtstmp": "param_mtstmp",
    "param_muser": "param_muser",
    "is_param_user": "is_param_user",
    "param_process": "param_process",
    "param_snotes": "param_snotes",
    "param_type": "param_type",
    "is_param_sys": "is_param_sys",
    "param_user_attrib": "param_user_attrib",
    "param_user_etstmp": "param_user_etstmp",
    "param_user_euser": "param_user_euser",
    "param_user_id": "param_user_id",
    "param_user_info": "param_user_info",
    "param_user_mtstmp": "param_user_mtstmp",
    "param_user_muser": "param_user_muser",
    "param_user_process": "param_user_process",
    "param_user_val": "param_user_val",
    "audit_ref_id": "audit_ref_id",
    "audit_ref_name": "audit_ref_name",
    "queue_etstmp": "queue_etstmp",
    "queue_euser": "queue_euser",
    "queue_id": "queue_id",
    "queue_message": "queue_message",
    "queue_name": "queue_name",
    "queue_rslt": "queue_rslt",
    "queue_rslt_tstmp": "queue_rslt_tstmp",
    "queue_rslt_user": "queue_rslt_user",
    "queue_snotes": "queue_snotes",
    "job_action_target": "job_action_target",
    "job_action": "job_action",
    "job_doc_id": "job_doc_id",
    "job_email_id": "job_email_id",
    "job_etstmp": "job_etstmp",
    "job_user": "job_user",
    "job_id": "job_id",
    "job_tag": "job_tag",
    "job_note_id": "job_note_id",
    "job_params": "job_params",
    "job_queue_id": "job_queue_id",
    "job_rslt": "job_rslt",
    "job_rslt_tstmp": "job_rslt_tstmp",
    "job_rslt_user": "job_rslt_user",
    "job_sms_id": "job_sms_id",
    "job_snotes": "job_snotes",
    "job_source": "job_source",
    "script_name": "script_name",
    "script_txt": "script_txt",
    "sys_func_attrib": "sys_func_attrib",
    "sys_func_code": "sys_func_code",
    "sys_func_desc": "sys_func_desc",
    "sys_func_id": "sys_func_id",
    "sys_func_name": "sys_func_name",
    "sys_func_seq": "sys_func_seq",
    "sys_func_snotes": "sys_func_snotes",
    "sys_func_sts": "sys_func_sts",
    "menu_cmd": "menu_cmd",
    "menu_desc": "menu_desc",
    "menu_desc_ext": "menu_desc_ext",
    "menu_desc_ext2": "menu_desc_ext2",
    "menu_id": "menu_id",
    "menu_id_auto": "menu_id_auto",
    "menu_id_parent": "menu_id_parent",
    "menu_image": "menu_image",
    "menu_name": "menu_name",
    "menu_seq": "menu_seq",
    "menu_snotes": "menu_snotes",
    "menu_sts": "menu_sts",
    "menu_subcmd": "menu_subcmd",
    "menu_group": "menu_group",
    "sms_body": "sms_body",
    "sms_to": "sms_to",
    "sms_txt_attrib": "sms_txt_attrib",
    "sys_user_func_id": "sys_user_func_id",
    "sys_user_func_snotes": "sys_user_func_snotes",
    "sys_user_role_id": "sys_user_role_id",
    "sys_user_role_snotes": "sys_user_role_snotes",
    "sys_role_attrib": "sys_role_attrib",
    "sys_role_code": "sys_role_code",
    "sys_role_desc": "sys_role_desc",
    "sys_role_id": "sys_role_id",
    "sys_role_name": "sys_role_name",
    "sys_role_seq": "sys_role_seq",
    "sys_role_snotes": "sys_role_snotes",
    "sys_role_sts": "sys_role_sts",
    "sys_menu_role_id": "sys_menu_role_id",
    "sys_menu_role_snotes": "sys_menu_role_snotes",
    "sys_menu_role_selection": "sys_menu_role_selection",
    "audit_subject": "audit_subject",
    "audit_table_id": "audit_table_id",
    "audit_table_name": "audit_table_name",
    "title_detail": "title_detail",
    "title_head": "title_head",
    "txt_attrib": "txt_attrib",
    "txt_bcc": "txt_bcc",
    "txt_desc": "txt_desc",
    "txt_etstmp": "txt_etstmp",
    "txt_euser": "txt_euser",
    "txt_id": "txt_id",
    "txt_mtstmp": "txt_mtstmp",
    "txt_muser": "txt_muser",
    "txt_process": "txt_process",
    "txt_title": "txt_title",
    "txt_type": "txt_type",
    "txt_body": "txt_body",
    "code_sys_h_id": "code_sys_h_id",
    "code_sys_id": "code_sys_id",
    "code2_sys_h_id": "code2_sys_h_id",
    "code2_sys_id": "code2_sys_id",
    "version_component": "version_component",
    "version_etstmp": "version_etstmp",
    "version_euser": "version_euser",
    "version_id": "version_id",
    "version_mtstmp": "version_mtstmp",
    "version_muser": "version_muser",
    "version_no_build": "version_no_build",
    "version_no_major": "version_no_major",
    "version_no_minor": "version_no_minor",
    "version_no_rev": "version_no_rev",
    "version_note": "version_note",
    "version_snotes": "version_snotes",
    "version_sts": "version_sts",
    "param_sys_attrib": "param_sys_attrib",
    "param_sys_etstmp": "param_sys_etstmp",
    "param_sys_euser": "param_sys_euser",
    "param_sys_id": "param_sys_id",
    "param_sys_info": "param_sys_info",
    "param_sys_mtstmp": "param_sys_mtstmp",
    "param_sys_muser": "param_sys_muser",
    "param_sys_process": "param_sys_process",
    "param_sys_val": "param_sys_val",
    "year_txt": "year_txt",
    "year_val": "year_val",
  };

  this.models = {
    "Admin/Overview": "Admin/Overview",
    "AuditTrail": "AuditTrail",
    "Base/AuditTrail": "Base/AuditTrail",
    "CustUser": "CustUser",
    "CustUser_Listing": "CustUser_Listing",
    "Base/CustUser_Listing": "Base/CustUser_Listing",
    "Client/CustUser_Listing": "Client/CustUser_Listing",
    "Base/CustUser": "Base/CustUser",
    "CustUser_Role": "CustUser_Role",
    "Base/CustUser_Role": "Base/CustUser_Role",
    "CreateCodeSys": "CreateCodeSys",
    "Dev/CustMenuRoleSelection_Role": "Dev/CustMenuRoleSelection_Role",
    "Dev/CustRoleMenuSelection_Menu": "Dev/CustRoleMenuSelection_Menu",
    "Client/Dashboard": "Client/Dashboard",
    "Client/Help": "Client/Help",
    "Client/Help_Listing": "Client/Help_Listing",
    "Client/Help_Code": "Client/Help_Code",
    "Client/Dashboard_Note_Listing": "Client/Dashboard_Note_Listing",
    "Doc__model": "Doc",
    "Dashboard__model": "Dashboard",
    "Doc_Browse": "Doc_Browse",
    "Dev/DBSQL": "Dev/DBSQL",
    "Dev/DBSchema": "Dev/DBSchema",
    "Dev/DBScripts": "Dev/DBScripts",
    "Dev/Models": "Dev/Models",
    "Dev/Overview": "Dev/Overview",
    "Doc_Listing": "Doc_Listing",
    "Base/Doc_Listing": "Base/Doc_Listing",
    "Base/Doc": "Base/Doc",
    "Code2Value_App_Listing": "Code2Value_App_Listing",
    "Code2_App_Listing": "Code2_App_Listing",
    "CodeValue_App_Listing": "CodeValue_App_Listing",
    "Code_App_Listing": "Code_App_Listing",
    "Admin/SysUser_Doc": "Admin/SysUser_Doc",
    "Admin/SysUser_Doc_Listing": "Admin/SysUser_Doc_Listing",
    "Admin/SysUser_Note": "Admin/SysUser_Note",
    "Admin/SysUser_Note_Browse": "Admin/SysUser_Note_Browse",
    "Admin/SysUser_Note_Sys_Listing": "Admin/SysUser_Note_Sys_Listing",
    "Admin/SysUser_Note_User_Listing": "Admin/SysUser_Note_User_Listing",
    "Admin/SysUser_Note_UserSys_Editor": "Admin/SysUser_Note_UserSys_Editor",
    "Admin/Param_App_Listing": "Admin/Param_App_Listing",
    "Admin/Help": "Admin/Help",
    "Admin/Help_Listing": "Admin/Help_Listing",
    "Help__model": "Help",
    "Help_Listing": "Help_Listing",
    "Help_Code": "Help_Code",
    "Dev/Log": "Dev/Log",
    "Note__model": "Note",
    "Note_Browse": "Note_Browse",
    "Note_Listing": "Note_Listing",
    "Base/Note_Listing": "Base/Note_Listing",
    "Note_Cust_Listing": "Note_Cust_Listing",
    "Note_Cust_Listing_Browse": "Note_Cust_Listing_Browse",
    "Base/Note_Cust_Listing_Browse": "Base/Note_Cust_Listing_Browse",
    "Client/Note_Listing": "Client/Note_Listing",
    "Base/Client/Note_Listing": "Base/Client/Note_Listing",
    "Base/Note_Cust_Listing": "Base/Note_Cust_Listing",
    "Note_Sys_Listing": "Note_Sys_Listing",
    "Base/Note_Sys_Listing": "Base/Note_Sys_Listing",
    "Note_User_Listing": "Note_User_Listing",
    "Base/Note_User_Listing": "Base/Note_User_Listing",
    "Note_CustSys_Editor": "Note_CustSys_Editor",
    "Client/Note_CustSys_Editor": "Client/Note_CustSys_Editor",
    "Note_CustSys_Editor_Browse": "Note_CustSys_Editor_Browse",
    "Base/Note_CustSys_Editor_Browse": "Base/Note_CustSys_Editor_Browse",
    "Note_UserCustSys_Editor": "Note_UserCustSys_Editor",
    "Base/Note_UserCustSys_Editor": "Base/Note_UserCustSys_Editor",
    "Note_UserSys_Editor": "Note_UserSys_Editor",
    "Base/Note": "Base/Note",
    "Admin/SysUser": "Admin/SysUser",
    "Admin/SysUser_Listing": "Admin/SysUser_Listing",
    "Base/Admin/SysUser_Listing": "Base/Admin/SysUser_Listing",
    "Admin/SysUser_Editor": "Admin/SysUser_Editor",
    "Base/Admin/SysUser": "Base/Admin/SysUser",
    "Admin/SysUser_Insert": "Admin/SysUser_Insert",
    "Admin/SysUser_Func": "Admin/SysUser_Func",
    "Admin/SysUser_Role": "Admin/SysUser_Role",
    "Dev/PopupExec": "Dev/PopupExec",
    "Dev/CreateCode_App": "Dev/CreateCode_App",
    "Dev/CreateCode2_App": "Dev/CreateCode2_App",
    "Dev/CreateCode_Base": "Dev/CreateCode_Base",
    "Dev/CreateCode_Sys": "Dev/CreateCode_Sys",
    "Dev/CreateCode2_Sys": "Dev/CreateCode2_Sys",
    "Admin/Param_User_Listing": "Admin/Param_User_Listing",
    "Dashboard_Note_Listing": "Dashboard_Note_Listing",
    "Reports/Overview": "Reports/Overview",
    "Client/Reports/Overview": "Client/Reports/Overview",
    "Dev/RestartSystem": "Dev/RestartSystem",
    "Queue__model": "Queue",
    "Dev/SysMenuRoleSelection_Role": "Dev/SysMenuRoleSelection_Role",
    "Dev/SysRoleMenuSelection_Menu": "Dev/SysRoleMenuSelection_Menu",
    "Admin/Txt": "Admin/Txt",
    "Admin/Txt_Listing": "Admin/Txt_Listing",
    "Dev/Code2Value_Sys_Listing": "Dev/Code2Value_Sys_Listing",
    "Dev/Code2_Sys_Listing_Browse": "Dev/Code2_Sys_Listing_Browse",
    "Dev/CodeValue_Sys_Listing": "Dev/CodeValue_Sys_Listing",
    "Dev/Code_Sys_Listing_Browse": "Dev/Code_Sys_Listing_Browse",
    "Dev/CustRole_Listing": "Dev/CustRole_Listing",
    "Dev/CustMenuRoleSelection": "Dev/CustMenuRoleSelection",
    "Dev/CustRoleMenuSelection": "Dev/CustRoleMenuSelection",
    "Dev/Code2Value_App_Listing": "Dev/Code2Value_App_Listing",
    "Dev/Code2_App_Listing": "Dev/Code2_App_Listing",
    "Dev/CodeValue_App_Listing": "Dev/CodeValue_App_Listing",
    "Dev/Code_App_Listing": "Dev/Code_App_Listing",
    "Dev/Param_App_Listing": "Dev/Param_App_Listing",
    "Dev/HelpTarget_Listing": "Dev/HelpTarget_Listing",
    "Dev/Model_Listing": "Dev/Model_Listing",
    "Dev/Param_Listing": "Dev/Param_Listing",
    "Dev/SysFunc_Listing": "Dev/SysFunc_Listing",
    "Dev/Menu_Listing": "Dev/Menu_Listing",
    "Dev/Menu_Tree_Editor": "Dev/Menu_Tree_Editor",
    "Dev/Menu_Exec_Delete": "Dev/Menu_Exec_Delete",
    "Dev/Menu_Exec_Insert": "Dev/Menu_Exec_Insert",
    "Dev/Menu": "Dev/Menu",
    "Dev/SysRole_Listing": "Dev/SysRole_Listing",
    "Dev/SysMenuRoleSelection": "Dev/SysMenuRoleSelection",
    "Dev/SysRoleMenuSelection": "Dev/SysRoleMenuSelection",
    "Dev/Txt": "Dev/Txt",
    "Dev/Txt_Listing": "Dev/Txt_Listing",
    "Dev/Code2_Sys_Listing": "Dev/Code2_Sys_Listing",
    "Dev/Code_Sys_Listing": "Dev/Code_Sys_Listing",
    "Dev/Param_Sys_Listing": "Dev/Param_Sys_Listing",
    "Reports/Agreement": "Reports/Agreement",
    "Reports/User_Listing": "Reports/User_Listing",
    "Reports/Template_Default": "Reports/Template_Default",
  };

  this.sql = {
    "@custid": "@custid",
    "@itemid": "@itemid",
    "@etstmp": "@etstmp",
    "@euser": "@euser",
    "@id": "@id",
    "@in1": "@in1",
    "@in2": "@in2",
    "@in_attrib": "@in_attrib",
    "@in_code_desc": "@in_code_desc",
    "@in_code_name": "@in_code_name",
    "@in_code_schema": "@in_code_schema",
    "@in_code_val": "@in_code_val",
    "@in_code_val1": "@in_code_val1",
    "@in_code_val2": "@in_code_val2",
    "@in_doc_ext": "@in_doc_ext",
    "@in_doc_id": "@in_doc_id",
    "@in_loc": "@in_loc",
    "@in_name": "@in_name",
    "@in_object": "@in_object",
    "@in_user_id": "@in_user_id",
    "@in_param_attrib": "@in_param_attrib",
    "@in_param_process": "@in_param_process",
    "@in_process": "@in_process",
    "@in_schema": "@in_schema",
    "@in_table": "@in_table",
    "@in_tblid": "@in_tblid",
    "@in_tblname": "@in_tblname",
    "@in_txt": "@in_txt",
    "@in_type": "@in_type",
    "@in_val": "@in_val",
    "@mtstmp": "@mtstmp",
    "@muser": "@muser",
    "@op": "@op",
    "@user_id": "@user_id",
    "@pw": "@pw",
    "@audit_ref_id": "@audit_ref_id",
    "@audit_ref_name": "@audit_ref_name",
    "@audit_subject": "@audit_subject",
    "@tbl": "@tbl",
    "@tid": "@tid",
    "@tname": "@tname",
    "@tstmp": "@tstmp",
    "@TYPE": "@TYPE",
    "@u": "@u",
    "@USER": "@USER",
    "@X": "@X",
    "agreement_code_cust_id": "agreement_code_cust_id",
    "agreement_code_month": "agreement_code_month",
    "agreement_code_state": "agreement_code_state",
    "agreement_code_year": "agreement_code_year",
    "agreement_paymentresult": "agreement_paymentresult",
    "agreement_report_note": "agreement_report_note",
    "agreement_sign": "agreement_sign",
    "log_audit": "log_audit",
    "log_audit_base": "log_audit_base",
    "log_audit_delete": "log_audit_delete",
    "log_audit_delete_mult": "log_audit_delete_mult",
    "log_audit_insert": "log_audit_insert",
    "log_audit_info": "log_audit_info",
    "log_audit_insert_ext": "log_audit_insert_ext",
    "log_audit_update": "log_audit_update",
    "log_audit_update_custom": "log_audit_update_custom",
    "log_audit_update_mult": "log_audit_update_mult",
    "check_code": "check_code",
    "check_code2": "check_code2",
    "check_code2_exec": "check_code2_exec",
    "check_code_exec": "check_code_exec",
    "check_foreign_key": "check_foreign_key",
    "check_foreign_key_exec": "check_foreign_key_exec",
    "check_param": "check_param",
    "client_scope": "client_scope",
    "client_sql_auth": "client_sql_auth",
    "client_sql_login": "client_sql_login",
    "client_sql_loginsuccess": "client_sql_loginsuccess",
    "client_sql_passwordreset": "client_sql_passwordreset",
    "client_sql_superlogin": "client_sql_superlogin",
    "str_concat": "str_concat",
    "create_code_app": "create_code_app",
    "create_code2_app": "create_code2_app",
    "create_code_sys": "create_code_sys",
    "create_code2_sys": "create_code2_sys",
    "context_user": "context_user",
    "doc_ctgr_table": "doc_ctgr_table",
    "doc_filename": "doc_filename",
    "exists_doc": "exists_doc",
    "exists_note": "exists_note",
    "func_prefix": "func_prefix",
    "get_cust_id": "get_cust_id",
    "get_item_id": "get_item_id",
    "get_cust_user_name": "get_cust_user_name",
    "get_sys_user_name": "get_sys_user_name",
    "get_param_desc": "get_param_desc",
    "init_db_user_exists": "init_db_user_exists",
    "init_sysadmin_access": "init_sysadmin_access",
    "jobproc_add_BEGIN": "jobproc_add_BEGIN",
    "jobproc_add_END": "jobproc_add_END",
    "jobproc_add_doc": "jobproc_add_doc",
    "jobproc_add_email": "jobproc_add_email",
    "jobproc_add_note": "jobproc_add_note",
    "jobproc_add_queue": "jobproc_add_queue",
    "jobproc_add_sms": "jobproc_add_sms",
    "jobproc_jobcheck": "jobproc_jobcheck",
    "jobproc_jobresult": "jobproc_jobresult",
    "jobproc_queuecheck": "jobproc_queuecheck",
    "jobproc_queuepop": "jobproc_queuepop",
    "jobproc_queueresult": "jobproc_queueresult",
    "jobproc_queuesubscribers": "jobproc_queuesubscribers",
    "jobproc_save_doc": "jobproc_save_doc",
    "jobproc_save_note": "jobproc_save_note",
    "jobproc_save_queue": "jobproc_save_queue",
    "jobproc_save_queue_message": "jobproc_save_queue_message",
    "JSEXEC_STR": "JSEXEC_STR",
    "JSHARMONY_FACTORY_INSTALLED": "JSHARMONY_FACTORY_INSTALLED",
    "main_sql_auth": "main_sql_auth",
    "main_sql_check_email": "main_sql_check_email",
    "main_sql_login": "main_sql_login",
    "main_sql_loginsuccess": "main_sql_loginsuccess",
    "main_sql_passwordreset": "main_sql_passwordreset",
    "main_sql_superlogin": "main_sql_superlogin",
    "menu_client": "menu_client",
    "menu_main": "menu_main",
    "menu_main_noauth": "menu_main_noauth",
    "my_cust_user": "my_cust_user",
    "my_db_user": "my_db_user",
    "my_cust_id": "my_cust_id",
    "my_db_user_exec": "my_db_user_exec",
    "my_db_user_fmt": "my_db_user_fmt",
    "my_db_user_fmt_exec": "my_db_user_fmt_exec",
    "my_hash": "my_hash",
    "my_mmddyyhhmi": "my_mmddyyhhmi",
    "my_now": "my_now",
    "my_now_exec": "my_now_exec",
    "my_sys_user_id": "my_sys_user_id",
    "my_cust_user_id": "my_cust_user_id",
    "my_cust_user_id_exec": "my_cust_user_id_exec",
    "my_user_do": "my_user_do",
    "my_to_date": "my_to_date",
    "my_today": "my_today",
    "my_today_exec": "my_today_exec",
    "nequal": "nequal",
    "nequal_chr": "nequal_chr",
    "nequal_date": "nequal_date",
    "nequal_num": "nequal_num",
    "par_list_beg": "par_list_beg",
    "par_list_end": "par_list_end",
    "proc_run": "proc_run",
    "sms_send_txt": "sms_send_txt",
    "menu_group_lov": "menu_group_lov",
    "table_type": "table_type",
    "get_tstmp": "get_tstmp",
    "menu_editor_insert": "menu_editor_insert",
    "menu_editor_lov": "menu_editor_lov",
    "menu_editor_top": "menu_editor_top",
    "zz-filedebug": "zz-filedebug",
    "cust_staging_id": "cust_staging_id",
    "cust_staging": "cust_staging",
    "payment_cc_fp_hash": "payment_cc_fp_hash",
    "payment_cc_sts": "payment_cc_sts",
    "payment_cc_result": "payment_cc_result",
    "new_client_result": "new_client_result",
    "cust_agreement_tstmp": "cust_agreement_tstmp",
    "cust": "cust",
    "code_cust_sts": "code_cust_sts",
    "cust_sts": "cust_sts",
    "item__tbl": "item",
    "@cust_id": "@cust_id",
    "@job_id": "@job_id",
    "@txt_attrib": "@txt_attrib",
    "@menu_id_parent": "@menu_id_parent",
    "@menu_name": "@menu_name",
    "@menu_desc": "@menu_desc",
    "@job_params": "@job_params",
    "@sys_user_email": "@sys_user_email",
    "@sys_user_lastlogin_ip": "@sys_user_lastlogin_ip",
    "@sys_user_lastlogin_tstmp": "@sys_user_lastlogin_tstmp",
    "@sys_user_hash": "@sys_user_hash",
    "@doc_scope": "@doc_scope",
    "@doc_scope_id": "@doc_scope_id",
    "@doc_ctgr": "@doc_ctgr",
    "@doc_desc": "@doc_desc",
    "@doc_size": "@doc_size",
    "@queue_name": "@queue_name",
    "@queue_message": "@queue_message",
    "@queue_id": "@queue_id",
    "@queue_rslt": "@queue_rslt",
    "@queue_snotes": "@queue_snotes",
    "@note_scope": "@note_scope",
    "@note_scope_id": "@note_scope_id",
    "@note_type": "@note_type",
    "@note_body": "@note_body",
    "@job_rslt": "@job_rslt",
    "@job_snotes": "@job_snotes",
    "@job_source": "@job_source",
    "@job_action": "@job_action",
    "@job_action_target": "@job_action_target",
    "@email_txt_attrib": "@email_txt_attrib",
    "@email_to": "@email_to",
    "@email_cc": "@email_cc",
    "@email_bcc": "@email_bcc",
    "@email_attach": "@email_attach",
    "@email_subject": "@email_subject",
    "@email_text": "@email_text",
    "@email_html": "@email_html",
    "@email_doc_id": "@email_doc_id",
    "@sms_txt_attrib": "@sms_txt_attrib",
    "@sms_to": "@sms_to",
    "@sms_body": "@sms_body",
  };

  jsHarmonyModuleTransform.call(this, module);
}

jsHarmonyFactoryTransform.prototype = new jsHarmonyModuleTransform();

exports = module.exports = jsHarmonyFactoryTransform;