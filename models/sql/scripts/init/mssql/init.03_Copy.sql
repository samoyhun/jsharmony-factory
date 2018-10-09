SET NUMERIC_ROUNDABORT OFF
GO
SET XACT_ABORT, ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
/*Pointer used for text / image updates. This might not be needed, but is declared here just in case*/
DECLARE @pv binary(16)
ALTER TABLE [jsharmony].[H] DROP CONSTRAINT [FK_H_HP]
ALTER TABLE [jsharmony].[GPP] DROP CONSTRAINT [FK_GPP_PPD]
ALTER TABLE [jsharmony].[TXT] DROP CONSTRAINT [FK_TXT_UCOD_TXT_TYPE]
ALTER TABLE [jsharmony].[V] DROP CONSTRAINT [FK_V_UCOD_V_STS]
ALTER TABLE [jsharmony].[SRM] DROP CONSTRAINT [FK_SRM_SM]
ALTER TABLE [jsharmony].[SRM] DROP CONSTRAINT [FK_SRM_SR_SR_NAME]
ALTER TABLE [jsharmony].[SR] DROP CONSTRAINT [FK_SR_UCOD_AHC]
ALTER TABLE [jsharmony].[XPP] DROP CONSTRAINT [FK_XPP_PPD]
ALTER TABLE [jsharmony].[CRM] DROP CONSTRAINT [FK_CRM_CR_CR_NAME]
ALTER TABLE [jsharmony].[CRM] DROP CONSTRAINT [FK_CRM_SM]
ALTER TABLE [jsharmony].[CR] DROP CONSTRAINT [FK_CR_UCOD_AHC]
ALTER TABLE [jsharmony].[PPP] DROP CONSTRAINT [FK_PPP_PE]
ALTER TABLE [jsharmony].[PPP] DROP CONSTRAINT [FK_PPP_PPD]
ALTER TABLE [jsharmony].[PPD] DROP CONSTRAINT [FK_PPD_UCOD_PPD_TYPE]
ALTER TABLE [jsharmony].[SF] DROP CONSTRAINT [FK_SF_UCOD_AHC]
ALTER TABLE [jsharmony].[SM] DROP CONSTRAINT [FK_SM_SM]
ALTER TABLE [jsharmony].[SM] DROP CONSTRAINT [FK_SM_UCOD_AHC]
SET IDENTITY_INSERT [jsharmony].[UCOD_AHC] ON
INSERT INTO [jsharmony].[UCOD_AHC] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'ACTIVE', 3, 1, N'Active', NULL, NULL, NULL, '20170508 12:46:38.3707513', N'Microsoft SQL Server', '20170508 12:46:38.3707513', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_AHC] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'CLOSED', 4, 3, N'Closed', NULL, NULL, NULL, '20170508 12:46:38.3707513', N'Microsoft SQL Server', '20170508 12:46:38.3717520', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_AHC] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'HOLD', 5, 2, N'Hold', NULL, NULL, NULL, '20170508 12:46:38.3717520', N'Microsoft SQL Server', '20170508 12:46:38.3717520', N'Microsoft SQL Server', NULL, NULL, NULL)
SET IDENTITY_INSERT [jsharmony].[UCOD_AHC] OFF
SET IDENTITY_INSERT [jsharmony].[SM] ON
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (1, N'S', 1,      N'ACTIVE', NULL,N'ADMIN',                         NULL, N'Admin', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (2, N'C', 2,      N'ACTIVE', NULL,N'CLIENT',                        NULL, N'Customer', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (13, N'S', 170,   N'ACTIVE', 1,   N'ADMINISTRATION',                   3, N'Administration', NULL, NULL, N'ADMIN_OVERVIEW', NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (16, N'C', 200,   N'ACTIVE', 2,   N'C_DASHBOARD',                   NULL, N'Dashboard', NULL, NULL, N'C_DASHBOARD', NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (19, N'C', 270,   N'ACTIVE', 2,   N'C_ADMINISTRATION',              NULL, N'Administration', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (84, N'S', 1787,  N'ACTIVE', 170, N'ADMINISTRATION_AUDITTRAIL',     NULL, N'Audit Trail', NULL, NULL, N'AUDL', NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (85, N'S', 1783,  N'ACTIVE', 170, N'ADMINISTRATION_CODETABLES',     NULL, N'1D Code Tables', NULL, NULL, N'GCOD_HL', NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (86, N'S', 1784,  N'ACTIVE', 170, N'ADMINISTRATION_CODE2TABLES',    NULL, N'2D Code Tables', NULL, NULL, N'GCOD2_HL', NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (87, N'S', 1785,  N'ACTIVE', 170, N'ADMINISTRATION_TEXTMAINTENANCE',NULL, N'Text Maint', NULL, NULL, N'TXTL', NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (88, N'S', 1782,  N'ACTIVE', 170, N'ADMINISTRATION_GPARAMETERS',    NULL, N'System Settings', NULL, NULL, N'GPPL', NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (89, N'S', 1781,  N'ACTIVE', 170, N'ADMINISTRATION_PPARAMETERS',    NULL, N'User Settings', NULL, NULL, N'PPPL', NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (90, N'S', 1786,  N'ACTIVE', 170, N'ADMINISTRATION_HELPMAINTENANCE',NULL, N'Help Maint', NULL, NULL, N'HL', NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (118, N'C', 2700, N'ACTIVE', 270, N'C_ADMINISTRATION_USERS',        NULL, N'Cust Users', NULL, NULL, N'CPEL_CLIENT', NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (125, N'S', 10,   N'ACTIVE', 1,   N'DEV',                              3, N'Developer',          NULL, NULL, N'DEV_OVERVIEW', NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (126, N'S', 11,   N'ACTIVE', 10,  N'DEV_X_SRL',                       12, N'User Roles',  NULL, NULL, N'X_SRL', NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (128, N'S', 13,   N'ACTIVE', 10,  N'DEV_X_PPDL',                      21, N'Settings Definitions', NULL, NULL, N'X_PPDL', NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (129, N'S', 14,   N'ACTIVE', 10,  N'DEV_X_GPPL',                      22, N'System Settings', NULL, NULL, N'X_GPPL', NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (130, N'S', 15,   N'ACTIVE', 10,  N'DEV_X_XPPL',                      23, N'Developer Settings', NULL, NULL, N'X_XPPL', NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (132, N'S', 16,   N'ACTIVE', 10,  N'DEV_X_GCOD_HL',                   31, N'Admin 1D Codes', NULL, NULL, N'X_GCOD_HL', NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (133, N'S', 17,   N'ACTIVE', 10,  N'DEV_X_GCOD2_HL',                  32, N'Admin 2D Codes', NULL, NULL, N'X_GCOD2_HL', NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (134, N'S', 1700, N'ACTIVE', 170, N'ADMINISTRATION_USERS',          NULL, N'System Users', NULL, NULL, N'PEL', NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (135, N'S', 18,   N'ACTIVE', 10,  N'DEV_X_UCOD_HL',                   33, N'System 1D Codes', NULL, NULL, N'X_UCOD_HL', NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (136, N'S', 19,   N'ACTIVE', 10,  N'DEV_X_UCOD2_HL',                  34, N'System 2D Codes', NULL, NULL, N'X_UCOD2_HL', NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (137, N'S', 20,   N'ACTIVE', 10,  N'DEV_X_CRL',                       13, N'Client User Roles', NULL, NULL, N'X_CRL', NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (138, N'S', 21,   N'ACTIVE', 10,  N'DEV_X_TXTL',                      41, N'Text Maint',     NULL, NULL, N'X_TXTL', NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (139, N'S', 22,   N'ACTIVE', 10,  N'DEV_X_HPL',                       42, N'Help Panels',    NULL, NULL, N'X_HPL', NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (140, N'S', 1795, N'ACTIVE', 170, N'ADMINISTRATION_LOG',            NULL, N'Logs',           NULL, NULL, N'LOG',            NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (141, N'S', 1796, N'ACTIVE', 170, N'ADMINISTRATION_RESTART_SYSTEM', NULL, N'Restart System', NULL, NULL, N'RESTART_SYSTEM', NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (142, N'S', 3,    N'ACTIVE', 1,   N'DASHBOARD',                        1, N'Dashboard',      NULL, NULL, N'DASHBOARD',      NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (147, N'S', 12,   N'ACTIVE', 10,  N'DEV_X_SML',                       11, N'Menu Items',     NULL, NULL, N'X_SMLW',         NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (148, N'S', 160,  N'ACTIVE', 1,   N'REPORTS',                          2, N'Reports',        NULL, NULL, N'REPORTS',        NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (149, N'S', 1601, N'ACTIVE', 160, N'REPORT_USERS',                  NULL, N'User Listing',   NULL, NULL, N'_report/RPE',    NULL, NULL, NULL)
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (150, N'S', 23,   N'ACTIVE', 10,  N'DEV_DB',                          43, N'DB SQL',         NULL, NULL, N'DEV_DB',         NULL, NULL, NULL);
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (151, N'S', 24,   N'ACTIVE', 10,  N'DEV_DB_SCRIPTS',                  44, N'DB Scripts',     NULL, NULL, N'DEV_DB_SCRIPTS', NULL, NULL, NULL);
INSERT INTO [jsharmony].[SM] ([SM_ID_AUTO], [SM_UTYPE], [SM_ID], [SM_STS], [SM_ID_Parent], [SM_Name], [SM_Seq], [SM_DESC], [SM_DESCL], [SM_DESCVL], [SM_Cmd], [SM_Image], [SM_SNotes], [SM_SubCmd]) VALUES (152, N'S', 25,   N'ACTIVE', 10,  N'DEV_MODELS',                      45, N'Model Viewer',   NULL, NULL, N'DEV_MODELS',     NULL, NULL, NULL);
SET IDENTITY_INSERT [jsharmony].[SM] OFF
SET IDENTITY_INSERT [jsharmony].[SF] ON
INSERT INTO [jsharmony].[SF] ([SF_Name], [SF_ID], [SF_SEQ], [SF_STS], [SF_Desc], [SF_CODE], [SF_ATTRIB], [SF_SNotes]) VALUES (N'TBD', 1, 1, N'ACTIVE', N'TBD', NULL, NULL, NULL)
SET IDENTITY_INSERT [jsharmony].[SF] OFF
SET IDENTITY_INSERT [jsharmony].[PPD] ON
INSERT INTO [jsharmony].[PPD] ([PPD_PROCESS], [PPD_ATTRIB], [PPD_DESC], [PPD_TYPE], [CODENAME], [PPD_GPP], [PPD_PPP], [PPD_XPP], [PPD_ID], [PPD_ETstmp], [PPD_EU], [PPD_MTstmp], [PPD_MU], [PPD_SNotes]) VALUES (N'DEVICEURL', N'PRINTBAR', N'Device URL - Bar Code Printer', N'C', NULL, 1, 1, 0, 48, '20161104 16:23:06.9929061', N'dbo', '20170509 06:40:51.2129233', N'S200010', NULL)
INSERT INTO [jsharmony].[PPD] ([PPD_PROCESS], [PPD_ATTRIB], [PPD_DESC], [PPD_TYPE], [CODENAME], [PPD_GPP], [PPD_PPP], [PPD_XPP], [PPD_ID], [PPD_ETstmp], [PPD_EU], [PPD_MTstmp], [PPD_MU], [PPD_SNotes]) VALUES (N'DEVICEURL', N'SCAN', N'Device URL - Document Scanner', N'C', NULL, 1, 1, 0, 46, '20161104 16:22:18.5387234', N'dbo', '20161104 16:36:44.7365876', N'dbo', NULL)
INSERT INTO [jsharmony].[PPD] ([PPD_PROCESS], [PPD_ATTRIB], [PPD_DESC], [PPD_TYPE], [CODENAME], [PPD_GPP], [PPD_PPP], [PPD_XPP], [PPD_ID], [PPD_ETstmp], [PPD_EU], [PPD_MTstmp], [PPD_MU], [PPD_SNotes]) VALUES (N'EMAIL', N'NOTIF_ADMIN', N'Notifications Email - Administrative', N'C', NULL, 1, 0, 0, 18, '20151025 09:57:49.0276562', N'dbo', '20151025 09:57:49.0276562', N'dbo', NULL)
INSERT INTO [jsharmony].[PPD] ([PPD_PROCESS], [PPD_ATTRIB], [PPD_DESC], [PPD_TYPE], [CODENAME], [PPD_GPP], [PPD_PPP], [PPD_XPP], [PPD_ID], [PPD_ETstmp], [PPD_EU], [PPD_MTstmp], [PPD_MU], [PPD_SNotes]) VALUES (N'EMAIL', N'NOTIF_SYS', N'Notifications Email - System', N'C', NULL, 1, 0, 1, 20, '20151025 09:57:49.0276562', N'dbo', '20151025 09:57:49.0276562', N'dbo', NULL)
INSERT INTO [jsharmony].[PPD] ([PPD_PROCESS], [PPD_ATTRIB], [PPD_DESC], [PPD_TYPE], [CODENAME], [PPD_GPP], [PPD_PPP], [PPD_XPP], [PPD_ID], [PPD_ETstmp], [PPD_EU], [PPD_MTstmp], [PPD_MU], [PPD_SNotes]) VALUES (N'HOUSE', N'ADDR', N'HOUSE Address', N'C', NULL, 1, 0, 0, 21, '20151025 09:57:49.0276562', N'dbo', '20151025 09:57:49.0276562', N'dbo', NULL)
INSERT INTO [jsharmony].[PPD] ([PPD_PROCESS], [PPD_ATTRIB], [PPD_DESC], [PPD_TYPE], [CODENAME], [PPD_GPP], [PPD_PPP], [PPD_XPP], [PPD_ID], [PPD_ETstmp], [PPD_EU], [PPD_MTstmp], [PPD_MU], [PPD_SNotes]) VALUES (N'HOUSE', N'BPHONE', N'HOUSE Business Phone', N'C', NULL, 1, 0, 0, 22, '20151025 09:57:49.0276562', N'dbo', '20151025 09:57:49.0276562', N'dbo', NULL)
INSERT INTO [jsharmony].[PPD] ([PPD_PROCESS], [PPD_ATTRIB], [PPD_DESC], [PPD_TYPE], [CODENAME], [PPD_GPP], [PPD_PPP], [PPD_XPP], [PPD_ID], [PPD_ETstmp], [PPD_EU], [PPD_MTstmp], [PPD_MU], [PPD_SNotes]) VALUES (N'HOUSE', N'CITY', N'HOUSE City', N'C', NULL, 1, 0, 0, 23, '20151025 09:57:49.0276562', N'dbo', '20151025 09:57:49.0276562', N'dbo', NULL)
INSERT INTO [jsharmony].[PPD] ([PPD_PROCESS], [PPD_ATTRIB], [PPD_DESC], [PPD_TYPE], [CODENAME], [PPD_GPP], [PPD_PPP], [PPD_XPP], [PPD_ID], [PPD_ETstmp], [PPD_EU], [PPD_MTstmp], [PPD_MU], [PPD_SNotes]) VALUES (N'HOUSE', N'CONTACT', N'HOUSE Contact', N'C', NULL, 1, 0, 0, 24, '20151025 09:57:49.0276562', N'dbo', '20151025 09:57:49.0276562', N'dbo', NULL)
INSERT INTO [jsharmony].[PPD] ([PPD_PROCESS], [PPD_ATTRIB], [PPD_DESC], [PPD_TYPE], [CODENAME], [PPD_GPP], [PPD_PPP], [PPD_XPP], [PPD_ID], [PPD_ETstmp], [PPD_EU], [PPD_MTstmp], [PPD_MU], [PPD_SNotes]) VALUES (N'HOUSE', N'EMAIL', N'HOUSE Email', N'C', NULL, 1, 0, 0, 25, '20151025 09:57:49.0276562', N'dbo', '20151025 09:57:49.0276562', N'dbo', NULL)
INSERT INTO [jsharmony].[PPD] ([PPD_PROCESS], [PPD_ATTRIB], [PPD_DESC], [PPD_TYPE], [CODENAME], [PPD_GPP], [PPD_PPP], [PPD_XPP], [PPD_ID], [PPD_ETstmp], [PPD_EU], [PPD_MTstmp], [PPD_MU], [PPD_SNotes]) VALUES (N'HOUSE', N'FAX', N'HOUSE Fax', N'C', NULL, 1, 0, 0, 26, '20151025 09:57:49.0276562', N'dbo', '20151025 09:57:49.0276562', N'dbo', NULL)
INSERT INTO [jsharmony].[PPD] ([PPD_PROCESS], [PPD_ATTRIB], [PPD_DESC], [PPD_TYPE], [CODENAME], [PPD_GPP], [PPD_PPP], [PPD_XPP], [PPD_ID], [PPD_ETstmp], [PPD_EU], [PPD_MTstmp], [PPD_MU], [PPD_SNotes]) VALUES (N'HOUSE', N'NAME', N'HOUSE Name', N'C', NULL, 1, 0, 0, 27, '20151025 09:57:49.0276562', N'dbo', '20151025 09:57:49.0276562', N'dbo', NULL)
INSERT INTO [jsharmony].[PPD] ([PPD_PROCESS], [PPD_ATTRIB], [PPD_DESC], [PPD_TYPE], [CODENAME], [PPD_GPP], [PPD_PPP], [PPD_XPP], [PPD_ID], [PPD_ETstmp], [PPD_EU], [PPD_MTstmp], [PPD_MU], [PPD_SNotes]) VALUES (N'HOUSE', N'STATE', N'HOUSE State', N'C', NULL, 1, 0, 0, 28, '20151025 09:57:49.0276562', N'dbo', '20151025 09:57:49.0276562', N'dbo', NULL)
INSERT INTO [jsharmony].[PPD] ([PPD_PROCESS], [PPD_ATTRIB], [PPD_DESC], [PPD_TYPE], [CODENAME], [PPD_GPP], [PPD_PPP], [PPD_XPP], [PPD_ID], [PPD_ETstmp], [PPD_EU], [PPD_MTstmp], [PPD_MU], [PPD_SNotes]) VALUES (N'HOUSE', N'ZIP', N'HOUSE ZIP', N'C', NULL, 1, 0, 0, 29, '20151025 09:57:49.0276562', N'dbo', '20151025 09:57:49.0276562', N'dbo', NULL)
INSERT INTO [jsharmony].[PPD] ([PPD_PROCESS], [PPD_ATTRIB], [PPD_DESC], [PPD_TYPE], [CODENAME], [PPD_GPP], [PPD_PPP], [PPD_XPP], [PPD_ID], [PPD_ETstmp], [PPD_EU], [PPD_MTstmp], [PPD_MU], [PPD_SNotes]) VALUES (N'SQL', N'DSCOPE_DCTGR', N'Code Table - Document Types by Scope', N'C', NULL, 0, 0, 1, 59, '20170523 06:51:14.2346793', N'S200010', '20170523 07:25:32.4949255', N'S200010', NULL)
INSERT INTO [jsharmony].[PPD] ([PPD_PROCESS], [PPD_ATTRIB], [PPD_DESC], [PPD_TYPE], [CODENAME], [PPD_GPP], [PPD_PPP], [PPD_XPP], [PPD_ID], [PPD_ETstmp], [PPD_EU], [PPD_MTstmp], [PPD_MU], [PPD_SNotes]) VALUES (N'SQL', N'GETCID', N'SQL Function - GET_C_ID', N'C', NULL, 0, 0, 1, 57, '20170522 18:38:50.0414885', N'S200010', '20170522 18:38:50.0414885', N'S200010', NULL)
INSERT INTO [jsharmony].[PPD] ([PPD_PROCESS], [PPD_ATTRIB], [PPD_DESC], [PPD_TYPE], [CODENAME], [PPD_GPP], [PPD_PPP], [PPD_XPP], [PPD_ID], [PPD_ETstmp], [PPD_EU], [PPD_MTstmp], [PPD_MU], [PPD_SNotes]) VALUES (N'SQL', N'GETEID', N'SQL Function - GET_E_ID', N'C', NULL, 0, 0, 1, 58, '20170522 18:39:15.6797064', N'S200010', '20170522 18:39:15.6797064', N'S200010', NULL)
INSERT INTO [jsharmony].[PPD] ([PPD_PROCESS], [PPD_ATTRIB], [PPD_DESC], [PPD_TYPE], [CODENAME], [PPD_GPP], [PPD_PPP], [PPD_XPP], [PPD_ID], [PPD_ETstmp], [PPD_EU], [PPD_MTstmp], [PPD_MU], [PPD_SNotes]) VALUES (N'SYSTEM', N'CLIENT_SYS_URL', N'Client Portal URL', N'C', NULL, 0, 0, 1, 38, '20151025 09:57:49.0276562', N'dbo', '20170618 14:35:15.4742861', N'Red Gate Software  -', NULL)
INSERT INTO [jsharmony].[PPD] ([PPD_PROCESS], [PPD_ATTRIB], [PPD_DESC], [PPD_TYPE], [CODENAME], [PPD_GPP], [PPD_PPP], [PPD_XPP], [PPD_ID], [PPD_ETstmp], [PPD_EU], [PPD_MTstmp], [PPD_MU], [PPD_SNotes]) VALUES (N'USERS', N'HASH_SEED_C', N'Hash Seed Client Users', N'C', NULL, 0, 0, 1, 31, '20151025 09:57:49.0276562', N'dbo', '20151025 09:57:49.0276562', N'dbo', NULL)
INSERT INTO [jsharmony].[PPD] ([PPD_PROCESS], [PPD_ATTRIB], [PPD_DESC], [PPD_TYPE], [CODENAME], [PPD_GPP], [PPD_PPP], [PPD_XPP], [PPD_ID], [PPD_ETstmp], [PPD_EU], [PPD_MTstmp], [PPD_MU], [PPD_SNotes]) VALUES (N'USERS', N'HASH_SEED_S', N'Hash Seed System Users', N'C', NULL, 0, 0, 1, 32, '20151025 09:57:49.0276562', N'dbo', '20151025 09:57:49.0276562', N'dbo', NULL)
SET IDENTITY_INSERT [jsharmony].[PPD] OFF
SET IDENTITY_INSERT [jsharmony].[CR] ON
INSERT INTO [jsharmony].[CR] ([CR_Name], [CR_ID], [CR_SEQ], [CR_STS], [CR_Desc], [CR_CODE], [CR_ATTRIB], [CR_SNotes]) VALUES (N'C*', 5, 0, N'ACTIVE', N'All Users', NULL, NULL, NULL)
INSERT INTO [jsharmony].[CR] ([CR_Name], [CR_ID], [CR_SEQ], [CR_STS], [CR_Desc], [CR_CODE], [CR_ATTRIB], [CR_SNotes]) VALUES (N'CSYSADMIN', 1, 1, N'ACTIVE', N'Administrator', NULL, NULL, NULL)
INSERT INTO [jsharmony].[CR] ([CR_Name], [CR_ID], [CR_SEQ], [CR_STS], [CR_Desc], [CR_CODE], [CR_ATTRIB], [CR_SNotes]) VALUES (N'CUSER', 10, 1, N'ACTIVE', N'Client User', NULL, NULL, NULL)
INSERT INTO [jsharmony].[CR] ([CR_Name], [CR_ID], [CR_SEQ], [CR_STS], [CR_Desc], [CR_CODE], [CR_ATTRIB], [CR_SNotes]) VALUES (N'CX_B', 2, 2, N'ACTIVE', N'Browse', NULL, NULL, NULL)
INSERT INTO [jsharmony].[CR] ([CR_Name], [CR_ID], [CR_SEQ], [CR_STS], [CR_Desc], [CR_CODE], [CR_ATTRIB], [CR_SNotes]) VALUES (N'CX_X', 3, 3, N'ACTIVE', N'Entry / Update', NULL, NULL, NULL)
SET IDENTITY_INSERT [jsharmony].[CR] OFF
SET IDENTITY_INSERT [jsharmony].[CRM] ON
INSERT INTO [jsharmony].[CRM] ([CR_NAME], [SM_ID], [CRM_SNotes], [CRM_ID]) VALUES (N'CSYSADMIN', 270, NULL, 7)
INSERT INTO [jsharmony].[CRM] ([CR_NAME], [SM_ID], [CRM_SNotes], [CRM_ID]) VALUES (N'CSYSADMIN', 2700, NULL, 9)
INSERT INTO [jsharmony].[CRM] ([CR_NAME], [SM_ID], [CRM_SNotes], [CRM_ID]) VALUES (N'CUSER', 200, NULL, 83)
INSERT INTO [jsharmony].[CRM] ([CR_NAME], [SM_ID], [CRM_SNotes], [CRM_ID]) VALUES (N'CX_B', 200, NULL, 4)
INSERT INTO [jsharmony].[CRM] ([CR_NAME], [SM_ID], [CRM_SNotes], [CRM_ID]) VALUES (N'CX_X', 200, NULL, 29)
SET IDENTITY_INSERT [jsharmony].[CRM] OFF
SET IDENTITY_INSERT [jsharmony].[UCOD_N_SCOPE] ON
INSERT INTO [jsharmony].[UCOD_N_SCOPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'C', 8, 2, N'Customer', NULL, NULL, NULL, '20150722 09:52:03.7467854', N'Microsoft SQL Server', '20150722 09:52:03.7467854', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_N_SCOPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'CM', 23, 12, N'Credit Memo', NULL, NULL, NULL, '20160930 08:11:17.1362080', N'Microsoft SQL Server', '20160930 08:11:17.1362080', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_N_SCOPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'CT', 12, 6, N'Cust Contact', NULL, NULL, NULL, '20150722 09:55:30.2789513', N'Microsoft SQL Server', '20150722 09:55:30.2789513', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_N_SCOPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'DC', 16, 4, N'Damage Claim', NULL, NULL, NULL, '20160106 12:47:13.1332196', N'Microsoft SQL Server', '20160106 12:47:13.1332196', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_N_SCOPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'DI', 17, 5, N'Damage Issue', NULL, NULL, NULL, '20160106 12:47:21.1673508', N'Microsoft SQL Server', '20160106 12:47:21.1673508', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_N_SCOPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'DR', 25, 13, N'Damage Service Request', NULL, NULL, NULL, '20170201 15:15:48.9083234', N'Microsoft SQL Server', '20170201 15:15:48.9083234', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_N_SCOPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'E', 9, 3, N'Item', NULL, NULL, NULL, '20150722 09:52:27.8180255', N'Microsoft SQL Server', '20150722 09:52:27.8180255', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_N_SCOPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'O', 22, 11, N'Bill', NULL, NULL, NULL, '20160930 08:11:17.1362080', N'Microsoft SQL Server', '20160930 08:11:17.1362080', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_N_SCOPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'S', 7, 1, N'System', NULL, NULL, NULL, '20150722 09:51:41.9219899', N'Microsoft SQL Server', '20150722 09:51:41.9531889', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_N_SCOPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'SQ', 20, 9, N'Series', NULL, NULL, NULL, '20160709 11:26:57.2351924', N'Microsoft SQL Server', '20160709 11:26:57.2351924', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_N_SCOPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'TES', 21, 10, N'Estimate', NULL, NULL, NULL, '20160808 08:59:10.1604791', N'Microsoft SQL Server', '20160808 08:59:10.1604791', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_N_SCOPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'TO', 18, 7, N'Order', NULL, NULL, NULL, '20160401 18:13:00.0535979', N'Microsoft SQL Server', '20160401 18:13:00.0692004', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_N_SCOPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'VEN', 19, 8, N'Vendor', NULL, NULL, NULL, '20160405 07:00:16.5707463', N'Microsoft SQL Server', '20160405 07:00:16.5707463', N'Microsoft SQL Server', NULL, NULL, NULL)
SET IDENTITY_INSERT [jsharmony].[UCOD_N_SCOPE] OFF
SET IDENTITY_INSERT [jsharmony].[XPP] ON
INSERT INTO [jsharmony].[XPP] ([XPP_PROCESS], [XPP_ATTRIB], [XPP_VAL], [XPP_ETstmp], [XPP_EU], [XPP_MTstmp], [XPP_MU], [XPP_ID]) VALUES (N'EMAIL', N'NOTIF_SYS', N'notify@jsharmony.com', '20151025 10:03:52.7722097', N'Red Gate Software  -', '20171017 12:17:12.2663547', N'S200010', 1)
INSERT INTO [jsharmony].[XPP] ([XPP_PROCESS], [XPP_ATTRIB], [XPP_VAL], [XPP_ETstmp], [XPP_EU], [XPP_MTstmp], [XPP_MU], [XPP_ID]) VALUES (N'SQL', N'DSCOPE_DCTGR', N'GCOD2_D_SCOPE_D_CTGR', '20170523 07:26:56.8315086', N'S200010', '20170523 07:26:56.8315086', N'S200010', 11)
INSERT INTO [jsharmony].[XPP] ([XPP_PROCESS], [XPP_ATTRIB], [XPP_VAL], [XPP_ETstmp], [XPP_EU], [XPP_MTstmp], [XPP_MU], [XPP_ID]) VALUES (N'SQL', N'GETCID', N'public.get_c_id', '20171019 12:09:35.0288545', N'S200010', '20171019 12:09:35.0288545', N'S200010', 13)
INSERT INTO [jsharmony].[XPP] ([XPP_PROCESS], [XPP_ATTRIB], [XPP_VAL], [XPP_ETstmp], [XPP_EU], [XPP_MTstmp], [XPP_MU], [XPP_ID]) VALUES (N'SQL', N'GETEID', N'public.get_e_id', '20171019 12:09:53.5555173', N'S200010', '20171019 12:09:53.5555173', N'S200010', 14)
INSERT INTO [jsharmony].[XPP] ([XPP_PROCESS], [XPP_ATTRIB], [XPP_VAL], [XPP_ETstmp], [XPP_EU], [XPP_MTstmp], [XPP_MU], [XPP_ID]) VALUES (N'SYSTEM', N'CLIENT_SYS_URL', N'https://yoursystem.yourcompany.com', '20170618 14:35:15.5364000', N'Red Gate Software  -', '20171017 12:15:37.1792702', N'S200010', 12)
INSERT INTO [jsharmony].[XPP] ([XPP_PROCESS], [XPP_ATTRIB], [XPP_VAL], [XPP_ETstmp], [XPP_EU], [XPP_MTstmp], [XPP_MU], [XPP_ID]) VALUES (N'USERS', N'HASH_SEED_C', N'w3vefSQ@aewfa@#V5awdfA@#Rdf2%V235wfAF@#%csdfsfvq235@EFSDFAV2352vswfAW@V#%@', '20151025 10:03:52.7722097', N'Red Gate Software  -', '20151215 11:43:05.3775248', N'Microsoft SQL Server', 3)
INSERT INTO [jsharmony].[XPP] ([XPP_PROCESS], [XPP_ATTRIB], [XPP_VAL], [XPP_ETstmp], [XPP_EU], [XPP_MTstmp], [XPP_MU], [XPP_ID]) VALUES (N'USERS', N'HASH_SEED_S', N'frtue5 i876h4567h*&IOJK*()9%UHJS$6agfghjdyszwetsbfg5&$&$TFB5763bergereg', '20151025 10:03:52.7722097', N'Red Gate Software  -', '20151215 11:43:05.1591229', N'Microsoft SQL Server', 4)
SET IDENTITY_INSERT [jsharmony].[XPP] OFF
SET IDENTITY_INSERT [jsharmony].[SR] ON
INSERT INTO [jsharmony].[SR] ([SR_Name], [SR_ID], [SR_SEQ], [SR_STS], [SR_Desc], [SR_CODE], [SR_ATTRIB], [SR_SNotes]) VALUES (N'*', 17, 0, N'ACTIVE', N'All USers', NULL, NULL, NULL)
INSERT INTO [jsharmony].[SR] ([SR_Name], [SR_ID], [SR_SEQ], [SR_STS], [SR_Desc], [SR_CODE], [SR_ATTRIB], [SR_SNotes]) VALUES (N'DADMIN', 5, 97, N'ACTIVE', N'Data Administration', NULL, NULL, NULL)
INSERT INTO [jsharmony].[SR] ([SR_Name], [SR_ID], [SR_SEQ], [SR_STS], [SR_Desc], [SR_CODE], [SR_ATTRIB], [SR_SNotes]) VALUES (N'DEV', 33, 99, N'ACTIVE', N'Developer (Restricted)', NULL, NULL, NULL)
INSERT INTO [jsharmony].[SR] ([SR_Name], [SR_ID], [SR_SEQ], [SR_STS], [SR_Desc], [SR_CODE], [SR_ATTRIB], [SR_SNotes]) VALUES (N'SYSADMIN', 1, 98, N'ACTIVE', N'System Administration', NULL, NULL, NULL)
INSERT INTO [jsharmony].[SR] ([SR_Name], [SR_ID], [SR_SEQ], [SR_STS], [SR_Desc], [SR_CODE], [SR_ATTRIB], [SR_SNotes]) VALUES (N'X_B', 8, 91, N'ACTIVE', N'General Browse', NULL, NULL, NULL)
INSERT INTO [jsharmony].[SR] ([SR_Name], [SR_ID], [SR_SEQ], [SR_STS], [SR_Desc], [SR_CODE], [SR_ATTRIB], [SR_SNotes]) VALUES (N'X_X', 15, 92, N'ACTIVE', N'General BIUD', NULL, NULL, NULL)
SET IDENTITY_INSERT [jsharmony].[SR] OFF
SET IDENTITY_INSERT [jsharmony].[SRM] ON
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'*', 3, NULL, 1908)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'DEV', 10, NULL, 1887)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'DEV', 11, NULL, 1888)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'DEV', 12, NULL, 1906)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'DEV', 13, NULL, 1890)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'DEV', 14, NULL, 1891)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'DEV', 15, NULL, 1892)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'DEV', 16, NULL, 1893)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'DEV', 17, NULL, 1894)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'DEV', 18, NULL, 1899)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'DEV', 19, NULL, 1900)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'DEV', 20, NULL, 1901)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'DEV', 21, NULL, 1902)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'DEV', 22, NULL, 1903)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'DEV', 23, NULL, 1911)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'DEV', 24, NULL, 1912)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'DEV', 25, NULL, 1913)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'DEV', 170, NULL, 1895)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'DEV', 1700, NULL, 1898)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'SYSADMIN', 1, NULL, 1527)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'SYSADMIN', 160, NULL, 1909)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'SYSADMIN', 170, NULL, 1538)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'SYSADMIN', 1601, NULL, 1910)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'SYSADMIN', 1700, NULL, 1897)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'SYSADMIN', 1781, NULL, 1616)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'SYSADMIN', 1782, NULL, 1615)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'SYSADMIN', 1783, NULL, 1612)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'SYSADMIN', 1784, NULL, 1613)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'SYSADMIN', 1785, NULL, 1614)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'SYSADMIN', 1786, NULL, 1617)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'SYSADMIN', 1787, NULL, 1611)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'SYSADMIN', 1795, NULL, 1904)
INSERT INTO [jsharmony].[SRM] ([SR_NAME], [SM_ID], [SRM_SNotes], [SRM_ID]) VALUES (N'SYSADMIN', 1796, NULL, 1905)
SET IDENTITY_INSERT [jsharmony].[SRM] OFF
SET IDENTITY_INSERT [jsharmony].[UCOD_D_SCOPE] ON
INSERT INTO [jsharmony].[UCOD_D_SCOPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'C', 2, 2, N'Customer', N'Y', NULL, NULL, '20150722 09:52:03.7467854', N'Microsoft SQL Server', '20150722 09:52:03.7467854', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_D_SCOPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'CM', 10, 10, N'Credit Memo', N'N', NULL, NULL, '20160930 08:11:52.4490903', N'Microsoft SQL Server', '20160930 08:11:52.4490903', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_D_SCOPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'DC', 11, 11, N'Damage Claim', N'N', NULL, NULL, '20170201 15:14:36.5535062', N'Microsoft SQL Server', '20170201 15:14:36.5535062', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_D_SCOPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'DI', 12, 12, N'Damage Issue', N'N', NULL, NULL, '20170201 15:14:36.5535062', N'Microsoft SQL Server', '20170201 15:14:36.5535062', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_D_SCOPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'DR', 13, 13, N'Damage Service Request', N'N', NULL, NULL, '20170201 15:14:36.5535062', N'Microsoft SQL Server', '20170201 15:14:36.5535062', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_D_SCOPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'E', 3, 3, N'Item', N'Y', NULL, NULL, '20150722 09:52:27.8180255', N'Microsoft SQL Server', '20150722 09:52:27.8180255', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_D_SCOPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'O', 9, 9, N'Bill', N'N', NULL, NULL, '20160930 08:11:52.4490903', N'Microsoft SQL Server', '20160930 08:11:52.4490903', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_D_SCOPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'S', 1, 1, N'System', N'N', NULL, NULL, '20150722 09:51:41.9219899', N'Microsoft SQL Server', '20150722 09:51:41.9531889', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_D_SCOPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'SQ', 7, 7, N'Series', N'N', NULL, NULL, '20160709 11:27:22.0948956', N'Microsoft SQL Server', '20160709 11:27:22.0948956', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_D_SCOPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'TES', 8, 8, N'Estimate', N'N', NULL, NULL, '20160808 08:58:33.5351974', N'Microsoft SQL Server', '20160808 08:58:33.5507993', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_D_SCOPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'TO', 5, 5, N'Order', N'N', NULL, NULL, '20150722 09:52:57.4273669', N'Microsoft SQL Server', '20150722 09:52:57.4273669', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_D_SCOPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'VEN', 6, 6, N'Vendor', N'N', NULL, NULL, '20160405 06:59:48.1314555', N'Microsoft SQL Server', '20160405 06:59:48.1470567', N'Microsoft SQL Server', NULL, NULL, NULL)
SET IDENTITY_INSERT [jsharmony].[UCOD_D_SCOPE] OFF
SET IDENTITY_INSERT [jsharmony].[UCOD_V_STS] ON
INSERT INTO [jsharmony].[UCOD_V_STS] ([UCOD_ID], [CODSEQ], [CODEVAL], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (1, 1, N'OK', N'OK', NULL, NULL, NULL, '20170710 16:03:42.0098774', N'S200010', '20170710 16:03:42.0098774', N'S200010', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_V_STS] ([UCOD_ID], [CODSEQ], [CODEVAL], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (2, 2, N'ERROR', N'Error', NULL, NULL, NULL, '20170710 16:04:01.6334755', N'S200010', '20170710 16:04:01.6334755', N'S200010', NULL, NULL, NULL)
SET IDENTITY_INSERT [jsharmony].[UCOD_V_STS] OFF
SET IDENTITY_INSERT [jsharmony].[UCOD_N_TYPE] ON
INSERT INTO [jsharmony].[UCOD_N_TYPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'C', 2, 2, N'Client', NULL, NULL, NULL, '20140819 09:48:24.3644285', N'Microsoft SQL Server', '20140819 09:48:24.3654286', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_N_TYPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'S', 3, 3, N'System', NULL, NULL, NULL, '20140819 09:48:33.9133833', N'Microsoft SQL Server', '20140819 09:48:33.9143834', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_N_TYPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'U', 1, 1, N'User', NULL, NULL, NULL, '20140819 09:48:07.4727395', N'Microsoft SQL Server', '20140819 09:48:07.4727395', N'Microsoft SQL Server', NULL, NULL, NULL)
SET IDENTITY_INSERT [jsharmony].[UCOD_N_TYPE] OFF
SET IDENTITY_INSERT [jsharmony].[UCOD_RQST_ATYPE] ON
INSERT INTO [jsharmony].[UCOD_RQST_ATYPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'MESSAGE', 1, NULL, N'Message', NULL, NULL, NULL, '20150917 12:14:39.2486190', N'Microsoft SQL Server', '20150917 12:14:39.2486190', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_RQST_ATYPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'REPORT', 2, NULL, N'Report Program', NULL, NULL, NULL, '20150917 12:14:39.2642211', N'Microsoft SQL Server', '20150917 12:14:39.2642211', N'Microsoft SQL Server', NULL, NULL, NULL)
SET IDENTITY_INSERT [jsharmony].[UCOD_RQST_ATYPE] OFF
SET IDENTITY_INSERT [jsharmony].[UCOD_RQST_SOURCE] ON
INSERT INTO [jsharmony].[UCOD_RQST_SOURCE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'ADMIN', 1, NULL, N'Administrator Interface', NULL, NULL, NULL, '20150917 12:14:48.7023901', N'Microsoft SQL Server', '20150917 12:14:48.7023901', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_RQST_SOURCE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'CLIENT', 2, NULL, N'Client Interface', NULL, NULL, NULL, '20150917 12:14:48.7023901', N'Microsoft SQL Server', '20150917 12:14:48.7023901', N'Microsoft SQL Server', NULL, NULL, NULL)
SET IDENTITY_INSERT [jsharmony].[UCOD_RQST_SOURCE] OFF
SET IDENTITY_INSERT [jsharmony].[UCOD_AC1] ON
INSERT INTO [jsharmony].[UCOD_AC1] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'A', 1, 1, N'Active', NULL, NULL, NULL, '20140804 13:15:52.9120880', N'Red Gate Software  -', '20140804 13:15:52.9120880', N'Red Gate Software  -', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_AC1] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'C', 2, 2, N'Closed', NULL, NULL, NULL, '20140804 13:15:52.9400908', N'Red Gate Software  -', '20140804 13:15:52.9400908', N'Red Gate Software  -', NULL, NULL, NULL)
SET IDENTITY_INSERT [jsharmony].[UCOD_AC1] OFF
SET IDENTITY_INSERT [jsharmony].[UCOD_TXT_TYPE] ON
INSERT INTO [jsharmony].[UCOD_TXT_TYPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'HTML', 1, 2, N'HTML', NULL, NULL, NULL, '20150319 10:30:09.4139859', N'Microsoft SQL Server', '20150319 10:30:09.4149860', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_TXT_TYPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'TEXT', 2, 1, N'Text', NULL, NULL, NULL, '20150319 10:29:58.0378484', N'Microsoft SQL Server', '20150319 10:29:58.0418488', N'Microsoft SQL Server', NULL, NULL, NULL)
SET IDENTITY_INSERT [jsharmony].[UCOD_TXT_TYPE] OFF
SET IDENTITY_INSERT [jsharmony].[TXT] ON
INSERT INTO [jsharmony].[TXT] ([TXT_ID], [TXT_PROCESS], [TXT_ATTRIB], [TXT_TYPE], [TXT_TVAL], [TXT_VAL], [TXT_BCC], [TXT_Desc], [TXT_ETstmp], [TXT_EU], [TXT_MTstmp], [TXT_MU]) VALUES (10, N'CMS', N'AGREEMENT', N'HTML', N'Client Agreement', NULL, NULL, N'Client Agreement', '20151025 10:18:24.5048356', N'Red Gate Software  -', '20171019 12:15:32.8752644', N'S200010')
INSERT INTO [jsharmony].[TXT] ([TXT_ID], [TXT_PROCESS], [TXT_ATTRIB], [TXT_TYPE], [TXT_TVAL], [TXT_VAL], [TXT_BCC], [TXT_Desc], [TXT_ETstmp], [TXT_EU], [TXT_MTstmp], [TXT_MU]) VALUES (11, N'CMS', N'AGREEMENT_DONE', N'HTML', N'Client Agreement Complete', N'<p>Thank you for completing sign-up.</p>
', NULL, N'Client Agreement Complete', '20151025 10:18:24.5048356', N'Red Gate Software  -', '20171019 12:16:10.5322131', N'S200010')
INSERT INTO [jsharmony].[TXT] ([TXT_ID], [TXT_PROCESS], [TXT_ATTRIB], [TXT_TYPE], [TXT_TVAL], [TXT_VAL], [TXT_BCC], [TXT_Desc], [TXT_ETstmp], [TXT_EU], [TXT_MTstmp], [TXT_MU]) VALUES (52, N'CMS', N'C_DASHBOARD', N'HTML', N'Client Dashboard Message of the Day', N'<p>Welcome to the jsHarmony Client Portal</p>
', NULL, N'Client Dashboard Message of the Day', '20171019 12:14:27.1907233', N'S200010', '20171019 12:14:27.1907233', N'S200010')
INSERT INTO [jsharmony].[TXT] ([TXT_ID], [TXT_PROCESS], [TXT_ATTRIB], [TXT_TYPE], [TXT_TVAL], [TXT_VAL], [TXT_BCC], [TXT_Desc], [TXT_ETstmp], [TXT_EU], [TXT_MTstmp], [TXT_MU]) VALUES (53, N'CMS', N'DASHBOARD', N'HTML', N'Dashboard Message of the Day', N'<p>Welcome to the jsHarmony System</p>
', NULL, N'Dashboard Message of the Day', '20171019 12:14:27.1907233', N'S200010', '20171019 12:14:27.1907233', N'S200010')
INSERT INTO [jsharmony].[TXT] ([TXT_ID], [TXT_PROCESS], [TXT_ATTRIB], [TXT_TYPE], [TXT_TVAL], [TXT_VAL], [TXT_BCC], [TXT_Desc], [TXT_ETstmp], [TXT_EU], [TXT_MTstmp], [TXT_MU]) VALUES (54, N'SMS', N'WELCOME', N'TEXT', N'Welcome', N'Your account has been initialized.
', NULL, N'SMS Welcome Message', '20171019 12:17:18.3468454', N'S200010', '20171019 12:17:32.9724230', N'S200010')
INSERT INTO [jsharmony].[TXT] ([TXT_ID], [TXT_PROCESS], [TXT_ATTRIB], [TXT_TYPE], [TXT_TVAL], [TXT_VAL], [TXT_BCC], [TXT_Desc], [TXT_ETstmp], [TXT_EU], [TXT_MTstmp], [TXT_MU]) VALUES (55, N'EMAIL', N'RESETPASS', N'HTML', N'Password Reset', N'<p>Dear <%-data.PE_NAME%>,<br />
<br />
A password reset has been requested on your account. If you did not initiate the request, please contact us at <%-data.SUPPORT_EMAIL%> immediately.<br />
<br />
Please follow the link below to reset your password:<br />
<a href="<%-data.RESET_LINK%>"><%-data.RESET_LINK%></a></p>
', NULL, N'<%-data.PE_NAME%> User Name
<%-data.SUPPORT_EMAIL%> Support Email
<%-data.RESET_LINK%> Reset Link', '20171019 12:19:12.8186251', N'S200010', '20171019 12:27:19.7518212', N'S200010')
SET IDENTITY_INSERT [jsharmony].[TXT] OFF
SET IDENTITY_INSERT [jsharmony].[UCOD_PPD_TYPE] ON
INSERT INTO [jsharmony].[UCOD_PPD_TYPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'C', 4, NULL, N'Character', NULL, NULL, NULL, '20170508 12:47:34.2010609', N'Microsoft SQL Server', '20170508 12:47:34.2010609', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_PPD_TYPE] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'N', 5, NULL, N'Number', NULL, NULL, NULL, '20170508 12:47:34.2010609', N'Microsoft SQL Server', '20170508 12:47:34.2020611', N'Microsoft SQL Server', NULL, NULL, NULL)
SET IDENTITY_INSERT [jsharmony].[UCOD_PPD_TYPE] OFF
SET IDENTITY_INSERT [jsharmony].[UCOD2_COUNTRY_STATE] ON
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (1, NULL, N'CANADA', N'AB', N'Alberta', NULL, NULL, NULL, NULL, '20170508 12:45:25.0904240', N'Microsoft SQL Server', '20170508 12:45:25.0914252', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (2, NULL, N'CANADA', N'BC', N'British Columbia', NULL, NULL, NULL, NULL, '20170508 12:45:25.0914252', N'Microsoft SQL Server', '20170508 12:45:25.0924254', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (3, NULL, N'CANADA', N'MB', N'Manitoba', NULL, NULL, NULL, NULL, '20170508 12:45:25.0924254', N'Microsoft SQL Server', '20170508 12:45:25.0924254', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (4, NULL, N'CANADA', N'NB', N'New Brunswick', NULL, NULL, NULL, NULL, '20170508 12:45:25.0924254', N'Microsoft SQL Server', '20170508 12:45:25.0924254', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (5, NULL, N'CANADA', N'NL', N'Newfoundland and Labrador', NULL, NULL, NULL, NULL, '20170508 12:45:25.0924254', N'Microsoft SQL Server', '20170508 12:45:25.0924254', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (6, NULL, N'CANADA', N'NS', N'Nova Scotia', NULL, NULL, NULL, NULL, '20170508 12:45:25.0924254', N'Microsoft SQL Server', '20170508 12:45:25.0934261', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (7, NULL, N'CANADA', N'NT', N'Northwest Territories', NULL, NULL, NULL, NULL, '20170508 12:45:25.0934261', N'Microsoft SQL Server', '20170508 12:45:25.0934261', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (8, NULL, N'CANADA', N'NU', N'Nunavut', NULL, NULL, NULL, NULL, '20170508 12:45:25.0934261', N'Microsoft SQL Server', '20170508 12:45:25.0934261', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (9, NULL, N'CANADA', N'ON', N'Ontario', NULL, NULL, NULL, NULL, '20170508 12:45:25.0934261', N'Microsoft SQL Server', '20170508 12:45:25.0934261', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (10, NULL, N'CANADA', N'PE', N'Prince Edward Island', NULL, NULL, NULL, NULL, '20170508 12:45:25.0934261', N'Microsoft SQL Server', '20170508 12:45:25.0944274', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (11, NULL, N'CANADA', N'QC', N'Quebec', NULL, NULL, NULL, NULL, '20170508 12:45:25.0944274', N'Microsoft SQL Server', '20170508 12:45:25.0944274', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (12, NULL, N'CANADA', N'SK', N'Saskatchewan', NULL, NULL, NULL, NULL, '20170508 12:45:25.0944274', N'Microsoft SQL Server', '20170508 12:45:25.0944274', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (13, NULL, N'CANADA', N'YT', N'Yukon', NULL, NULL, NULL, NULL, '20170508 12:45:25.0944274', N'Microsoft SQL Server', '20170508 12:45:25.0944274', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (14, NULL, N'MEXICO', N'AG', N'Aguascalientes', NULL, NULL, NULL, NULL, '20170508 12:45:25.0944274', N'Microsoft SQL Server', '20170508 12:45:25.0944274', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (15, NULL, N'MEXICO', N'BN', N'Baja California', NULL, NULL, NULL, NULL, '20170508 12:45:25.0954284', N'Microsoft SQL Server', '20170508 12:45:25.0954284', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (16, NULL, N'MEXICO', N'BS', N'Baja California Sur', NULL, NULL, NULL, NULL, '20170508 12:45:25.0954284', N'Microsoft SQL Server', '20170508 12:45:25.0954284', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (17, NULL, N'MEXICO', N'CA', N'Coahuila', NULL, NULL, NULL, NULL, '20170508 12:45:25.0954284', N'Microsoft SQL Server', '20170508 12:45:25.0954284', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (18, NULL, N'MEXICO', N'CH', N'Chihuahua', NULL, NULL, NULL, NULL, '20170508 12:45:25.0954284', N'Microsoft SQL Server', '20170508 12:45:25.0954284', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (19, NULL, N'MEXICO', N'CL', N'Colima', NULL, NULL, NULL, NULL, '20170508 12:45:25.0964276', N'Microsoft SQL Server', '20170508 12:45:25.0964276', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (20, NULL, N'MEXICO', N'CM', N'Compeche', NULL, NULL, NULL, NULL, '20170508 12:45:25.0964276', N'Microsoft SQL Server', '20170508 12:45:25.0964276', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (21, NULL, N'MEXICO', N'CP', N'Chiapas', NULL, NULL, NULL, NULL, '20170508 12:45:25.0964276', N'Microsoft SQL Server', '20170508 12:45:25.0964276', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (22, NULL, N'MEXICO', N'DF', N'Federal District', NULL, NULL, NULL, NULL, '20170508 12:45:25.0964276', N'Microsoft SQL Server', '20170508 12:45:25.0964276', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (23, NULL, N'MEXICO', N'DU', N'Durango', NULL, NULL, NULL, NULL, '20170508 12:45:25.0974298', N'Microsoft SQL Server', '20170508 12:45:25.0974298', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (24, NULL, N'MEXICO', N'GR', N'Guerrero', NULL, NULL, NULL, NULL, '20170508 12:45:25.0974298', N'Microsoft SQL Server', '20170508 12:45:25.0974298', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (25, NULL, N'MEXICO', N'GT', N'Guanajuato', NULL, NULL, NULL, NULL, '20170508 12:45:25.0974298', N'Microsoft SQL Server', '20170508 12:45:25.0974298', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (26, NULL, N'MEXICO', N'HI', N'Hidalgo', NULL, NULL, NULL, NULL, '20170508 12:45:25.0974298', N'Microsoft SQL Server', '20170508 12:45:25.0974298', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (27, NULL, N'MEXICO', N'JA', N'Jalisco', NULL, NULL, NULL, NULL, '20170508 12:45:25.0974298', N'Microsoft SQL Server', '20170508 12:45:25.0984296', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (28, NULL, N'MEXICO', N'MC', N'Michoacan', NULL, NULL, NULL, NULL, '20170508 12:45:25.0984296', N'Microsoft SQL Server', '20170508 12:45:25.0984296', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (29, NULL, N'MEXICO', N'MR', N'Morelos', NULL, NULL, NULL, NULL, '20170508 12:45:25.0984296', N'Microsoft SQL Server', '20170508 12:45:25.0984296', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (30, NULL, N'MEXICO', N'MX', N'Mexico', NULL, NULL, NULL, NULL, '20170508 12:45:25.0984296', N'Microsoft SQL Server', '20170508 12:45:25.0984296', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (31, NULL, N'MEXICO', N'NA', N'Nayarit', NULL, NULL, NULL, NULL, '20170508 12:45:25.0984296', N'Microsoft SQL Server', '20170508 12:45:25.0994303', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (32, NULL, N'MEXICO', N'NL', N'Nuevo Leon', NULL, NULL, NULL, NULL, '20170508 12:45:25.0994303', N'Microsoft SQL Server', '20170508 12:45:25.0994303', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (33, NULL, N'MEXICO', N'OA', N'Oaxaca', NULL, NULL, NULL, NULL, '20170508 12:45:25.0994303', N'Microsoft SQL Server', '20170508 12:45:25.0994303', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (34, NULL, N'MEXICO', N'PU', N'Puebla', NULL, NULL, NULL, NULL, '20170508 12:45:25.0994303', N'Microsoft SQL Server', '20170508 12:45:25.0994303', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (35, NULL, N'MEXICO', N'QE', N'Queretaro', NULL, NULL, NULL, NULL, '20170508 12:45:25.0994303', N'Microsoft SQL Server', '20170508 12:45:25.1004322', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (36, NULL, N'MEXICO', N'QR', N'Quintana Roo', NULL, NULL, NULL, NULL, '20170508 12:45:25.1004322', N'Microsoft SQL Server', '20170508 12:45:25.1004322', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (37, NULL, N'MEXICO', N'SI', N'Sinaloa', NULL, NULL, NULL, NULL, '20170508 12:45:25.1004322', N'Microsoft SQL Server', '20170508 12:45:25.1004322', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (38, NULL, N'MEXICO', N'SL', N'San Luis Potos�', NULL, NULL, NULL, NULL, '20170508 12:45:25.1004322', N'Microsoft SQL Server', '20170508 12:45:25.1004322', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (39, NULL, N'MEXICO', N'SO', N'Sonora', NULL, NULL, NULL, NULL, '20170508 12:45:25.1004322', N'Microsoft SQL Server', '20170508 12:45:25.1004322', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (40, NULL, N'MEXICO', N'TB', N'Tabasco', NULL, NULL, NULL, NULL, '20170508 12:45:25.1014315', N'Microsoft SQL Server', '20170508 12:45:25.1014315', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (41, NULL, N'MEXICO', N'TL', N'Tlaxcala', NULL, NULL, NULL, NULL, '20170508 12:45:25.1014315', N'Microsoft SQL Server', '20170508 12:45:25.1014315', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (42, NULL, N'MEXICO', N'TM', N'Tamaulipas', NULL, NULL, NULL, NULL, '20170508 12:45:25.1014315', N'Microsoft SQL Server', '20170508 12:45:25.1014315', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (43, NULL, N'MEXICO', N'VE', N'Veracruz', NULL, NULL, NULL, NULL, '20170508 12:45:25.1014315', N'Microsoft SQL Server', '20170508 12:45:25.1014315', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (44, NULL, N'MEXICO', N'YU', N'Yucat�n', NULL, NULL, NULL, NULL, '20170508 12:45:25.1024322', N'Microsoft SQL Server', '20170508 12:45:25.1024322', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (45, NULL, N'MEXICO', N'ZA', N'Zacatecas', NULL, NULL, NULL, NULL, '20170508 12:45:25.1024322', N'Microsoft SQL Server', '20170508 12:45:25.1024322', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (46, NULL, N'USA', N'AK', N'Alaska', NULL, NULL, NULL, NULL, '20170508 12:45:25.1024322', N'Microsoft SQL Server', '20170508 12:45:25.1024322', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (47, NULL, N'USA', N'AL', N'Alabama', NULL, NULL, NULL, NULL, '20170508 12:45:25.1024322', N'Microsoft SQL Server', '20170508 12:45:25.1034329', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (48, NULL, N'USA', N'AR', N'Arkansas', NULL, NULL, NULL, NULL, '20170508 12:45:25.1034329', N'Microsoft SQL Server', '20170508 12:45:25.1034329', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (49, NULL, N'USA', N'AS', N'American Samoa', NULL, NULL, NULL, NULL, '20170508 12:45:25.1034329', N'Microsoft SQL Server', '20170508 12:45:25.1034329', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (50, NULL, N'USA', N'AZ', N'Arizona', NULL, NULL, NULL, NULL, '20170508 12:45:25.1034329', N'Microsoft SQL Server', '20170508 12:45:25.1034329', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (51, NULL, N'USA', N'CA', N'California', NULL, NULL, NULL, NULL, '20170508 12:45:25.1034329', N'Microsoft SQL Server', '20170508 12:45:25.1034329', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (52, NULL, N'USA', N'CO', N'Colorado', NULL, NULL, NULL, NULL, '20170508 12:45:25.1044339', N'Microsoft SQL Server', '20170508 12:45:25.1044339', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (53, NULL, N'USA', N'CT', N'Connecticut', NULL, NULL, NULL, NULL, '20170508 12:45:25.1044339', N'Microsoft SQL Server', '20170508 12:45:25.1044339', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (54, NULL, N'USA', N'DC', N'District of Columbia', NULL, NULL, NULL, NULL, '20170508 12:45:25.1044339', N'Microsoft SQL Server', '20170508 12:45:25.1044339', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (55, NULL, N'USA', N'DE', N'Delaware', NULL, NULL, NULL, NULL, '20170508 12:45:25.1044339', N'Microsoft SQL Server', '20170508 12:45:25.1044339', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (56, NULL, N'USA', N'FL', N'Florida', NULL, NULL, NULL, NULL, '20170508 12:45:25.1054346', N'Microsoft SQL Server', '20170508 12:45:25.1054346', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (57, NULL, N'USA', N'FM', N'Federated States of Micronesia', NULL, NULL, NULL, NULL, '20170508 12:45:25.1054346', N'Microsoft SQL Server', '20170508 12:45:25.1054346', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (58, NULL, N'USA', N'GA', N'Georgia', NULL, NULL, NULL, NULL, '20170508 12:45:25.1054346', N'Microsoft SQL Server', '20170508 12:45:25.1054346', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (59, NULL, N'USA', N'GU', N'Guam', NULL, NULL, NULL, NULL, '20170508 12:45:25.1054346', N'Microsoft SQL Server', '20170508 12:45:25.1054346', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (60, NULL, N'USA', N'HI', N'Hawaii', NULL, NULL, NULL, NULL, '20170508 12:45:25.1064356', N'Microsoft SQL Server', '20170508 12:45:25.1064356', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (61, NULL, N'USA', N'IA', N'Iowa', NULL, NULL, NULL, NULL, '20170508 12:45:25.1064356', N'Microsoft SQL Server', '20170508 12:45:25.1064356', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (62, NULL, N'USA', N'ID', N'Idaho', NULL, NULL, NULL, NULL, '20170508 12:45:25.1064356', N'Microsoft SQL Server', '20170508 12:45:25.1064356', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (63, NULL, N'USA', N'IL', N'Illinois', NULL, NULL, NULL, NULL, '20170508 12:45:25.1064356', N'Microsoft SQL Server', '20170508 12:45:25.1064356', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (64, NULL, N'USA', N'IN', N'Indiana', NULL, NULL, NULL, NULL, '20170508 12:45:25.1074357', N'Microsoft SQL Server', '20170508 12:45:25.1074357', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (65, NULL, N'USA', N'KS', N'Kansas', NULL, NULL, NULL, NULL, '20170508 12:45:25.1074357', N'Microsoft SQL Server', '20170508 12:45:25.1074357', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (66, NULL, N'USA', N'KY', N'Kentucky', NULL, NULL, NULL, NULL, '20170508 12:45:25.1074357', N'Microsoft SQL Server', '20170508 12:45:25.1074357', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (67, NULL, N'USA', N'LA', N'Louisiana', NULL, NULL, NULL, NULL, '20170508 12:45:25.1074357', N'Microsoft SQL Server', '20170508 12:45:25.1074357', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (68, NULL, N'USA', N'MA', N'Massachusetts', NULL, NULL, NULL, NULL, '20170508 12:45:25.1084378', N'Microsoft SQL Server', '20170508 12:45:25.1084378', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (69, NULL, N'USA', N'MD', N'Maryland', NULL, NULL, NULL, NULL, '20170508 12:45:25.1084378', N'Microsoft SQL Server', '20170508 12:45:25.1084378', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (70, NULL, N'USA', N'ME', N'Maine', NULL, NULL, NULL, NULL, '20170508 12:45:25.1084378', N'Microsoft SQL Server', '20170508 12:45:25.1084378', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (71, NULL, N'USA', N'MH', N'Marshall Islands', NULL, NULL, NULL, NULL, '20170508 12:45:25.1084378', N'Microsoft SQL Server', '20170508 12:45:25.1084378', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (72, NULL, N'USA', N'MI', N'Michigan', NULL, NULL, NULL, NULL, '20170508 12:45:25.1084378', N'Microsoft SQL Server', '20170508 12:45:25.1094374', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (73, NULL, N'USA', N'MN', N'Minnesota', NULL, NULL, NULL, NULL, '20170508 12:45:25.1094374', N'Microsoft SQL Server', '20170508 12:45:25.1094374', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (74, NULL, N'USA', N'MO', N'Missouri', NULL, NULL, NULL, NULL, '20170508 12:45:25.1094374', N'Microsoft SQL Server', '20170508 12:45:25.1094374', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (75, NULL, N'USA', N'MP', N'Northern Mariana Islands', NULL, NULL, NULL, NULL, '20170508 12:45:25.1094374', N'Microsoft SQL Server', '20170508 12:45:25.1094374', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (76, NULL, N'USA', N'MS', N'Mississippi', NULL, NULL, NULL, NULL, '20170508 12:45:25.1094374', N'Microsoft SQL Server', '20170508 12:45:25.1104381', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (77, NULL, N'USA', N'MT', N'Montana', NULL, NULL, NULL, NULL, '20170508 12:45:25.1104381', N'Microsoft SQL Server', '20170508 12:45:25.1104381', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (78, NULL, N'USA', N'NC', N'North Carolina', NULL, NULL, NULL, NULL, '20170508 12:45:25.1104381', N'Microsoft SQL Server', '20170508 12:45:25.1104381', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (79, NULL, N'USA', N'ND', N'North Dakota', NULL, NULL, NULL, NULL, '20170508 12:45:25.1104381', N'Microsoft SQL Server', '20170508 12:45:25.1104381', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (80, NULL, N'USA', N'NE', N'Nebraska', NULL, NULL, NULL, NULL, '20170508 12:45:25.1104381', N'Microsoft SQL Server', '20170508 12:45:25.1114400', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (81, NULL, N'USA', N'NH', N'New Hampshire', NULL, NULL, NULL, NULL, '20170508 12:45:25.1114400', N'Microsoft SQL Server', '20170508 12:45:25.1114400', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (82, NULL, N'USA', N'NJ', N'New Jersey', NULL, NULL, NULL, NULL, '20170508 12:45:25.1114400', N'Microsoft SQL Server', '20170508 12:45:25.1114400', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (83, NULL, N'USA', N'NM', N'New Mexico', NULL, NULL, NULL, NULL, '20170508 12:45:25.1114400', N'Microsoft SQL Server', '20170508 12:45:25.1114400', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (84, NULL, N'USA', N'NV', N'Nevada', NULL, NULL, NULL, NULL, '20170508 12:45:25.1114400', N'Microsoft SQL Server', '20170508 12:45:25.1114400', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (85, NULL, N'USA', N'NY', N'New York', NULL, NULL, NULL, NULL, '20170508 12:45:25.1124393', N'Microsoft SQL Server', '20170508 12:45:25.1124393', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (86, NULL, N'USA', N'OH', N'Ohio', NULL, NULL, NULL, NULL, '20170508 12:45:25.1124393', N'Microsoft SQL Server', '20170508 12:45:25.1124393', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (87, NULL, N'USA', N'OK', N'Oklahoma', NULL, NULL, NULL, NULL, '20170508 12:45:25.1124393', N'Microsoft SQL Server', '20170508 12:45:25.1124393', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (88, NULL, N'USA', N'OR', N'Oregon', NULL, NULL, NULL, NULL, '20170508 12:45:25.1124393', N'Microsoft SQL Server', '20170508 12:45:25.1124393', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (89, NULL, N'USA', N'PA', N'Pennsylvania', NULL, NULL, NULL, NULL, '20170508 12:45:25.1134400', N'Microsoft SQL Server', '20170508 12:45:25.1134400', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (90, NULL, N'USA', N'PR', N'Puerto Rico', NULL, NULL, NULL, NULL, '20170508 12:45:25.1134400', N'Microsoft SQL Server', '20170508 12:45:25.1134400', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (91, NULL, N'USA', N'PW', N'Palau', NULL, NULL, NULL, NULL, '20170508 12:45:25.1134400', N'Microsoft SQL Server', '20170508 12:45:25.1134400', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (92, NULL, N'USA', N'RI', N'Rhode Island', NULL, NULL, NULL, NULL, '20170508 12:45:25.1134400', N'Microsoft SQL Server', '20170508 12:45:25.1134400', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (93, NULL, N'USA', N'SC', N'South Carolina', NULL, NULL, NULL, NULL, '20170508 12:45:25.1144421', N'Microsoft SQL Server', '20170508 12:45:25.1144421', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (94, NULL, N'USA', N'SD', N'South Dakota', NULL, NULL, NULL, NULL, '20170508 12:45:25.1144421', N'Microsoft SQL Server', '20170508 12:45:25.1144421', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (95, NULL, N'USA', N'TN', N'Tennessee', NULL, NULL, NULL, NULL, '20170508 12:45:25.1144421', N'Microsoft SQL Server', '20170508 12:45:25.1144421', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (96, NULL, N'USA', N'TX', N'Texas', NULL, NULL, NULL, NULL, '20170508 12:45:25.1144421', N'Microsoft SQL Server', '20170508 12:45:25.1144421', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (97, NULL, N'USA', N'UT', N'Utah', NULL, NULL, NULL, NULL, '20170508 12:45:25.1154417', N'Microsoft SQL Server', '20170508 12:45:25.1154417', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (98, NULL, N'USA', N'VA', N'Virginia', NULL, NULL, NULL, NULL, '20170508 12:45:25.1154417', N'Microsoft SQL Server', '20170508 12:45:25.1154417', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (99, NULL, N'USA', N'VI', N'Virgin Islands', NULL, NULL, NULL, NULL, '20170508 12:45:25.1154417', N'Microsoft SQL Server', '20170508 12:45:25.1154417', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (100, NULL, N'USA', N'VT', N'Vermont', NULL, NULL, NULL, NULL, '20170508 12:45:25.1154417', N'Microsoft SQL Server', '20170508 12:45:25.1154417', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (101, NULL, N'USA', N'WA', N'Washington', NULL, NULL, NULL, NULL, '20170508 12:45:25.1154417', N'Microsoft SQL Server', '20170508 12:45:25.1164421', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (102, NULL, N'USA', N'WI', N'Wisconsin', NULL, NULL, NULL, NULL, '20170508 12:45:25.1164421', N'Microsoft SQL Server', '20170508 12:45:25.1164421', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (103, NULL, N'USA', N'WV', N'West Virginia', NULL, NULL, NULL, NULL, '20170508 12:45:25.1164421', N'Microsoft SQL Server', '20170508 12:45:25.1164421', N'Microsoft SQL Server', NULL, NULL)
INSERT INTO [jsharmony].[UCOD2_COUNTRY_STATE] ([UCOD2_ID], [CODSEQ], [CODEVAL1], [CODEVAL2], [CODETXT], [CODECODE], [CODEATTRIB], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes]) VALUES (104, NULL, N'USA', N'WY', N'Wyoming', NULL, NULL, NULL, NULL, '20170508 12:45:25.1164421', N'Microsoft SQL Server', '20170508 12:45:25.1164421', N'Microsoft SQL Server', NULL, NULL)
SET IDENTITY_INSERT [jsharmony].[UCOD2_COUNTRY_STATE] OFF
SET IDENTITY_INSERT [jsharmony].[GPP] ON
INSERT INTO [jsharmony].[GPP] ([GPP_PROCESS], [GPP_ATTRIB], [GPP_VAL], [GPP_ETstmp], [GPP_EU], [GPP_MTstmp], [GPP_MU], [GPP_ID]) VALUES (N'EMAIL', N'NOTIF_ADMIN', N'user@company.com', '20151025 10:03:07.8267617', N'Red Gate Software  -', '20171019 12:51:39.9022466', N'S200010', 1)
INSERT INTO [jsharmony].[GPP] ([GPP_PROCESS], [GPP_ATTRIB], [GPP_VAL], [GPP_ETstmp], [GPP_EU], [GPP_MTstmp], [GPP_MU], [GPP_ID]) VALUES (N'HOUSE', N'ADDR', N'111 Main St.', '20151025 10:03:07.8423623', N'Red Gate Software  -', '20171019 11:44:12.0510597', N'S200010', 3)
INSERT INTO [jsharmony].[GPP] ([GPP_PROCESS], [GPP_ATTRIB], [GPP_VAL], [GPP_ETstmp], [GPP_EU], [GPP_MTstmp], [GPP_MU], [GPP_ID]) VALUES (N'HOUSE', N'BPHONE', N'(222) 222-2222', '20151025 10:03:07.8423623', N'Red Gate Software  -', '20171019 11:44:20.7688798', N'S200010', 4)
INSERT INTO [jsharmony].[GPP] ([GPP_PROCESS], [GPP_ATTRIB], [GPP_VAL], [GPP_ETstmp], [GPP_EU], [GPP_MTstmp], [GPP_MU], [GPP_ID]) VALUES (N'HOUSE', N'CITY', N'Anytown', '20151025 10:03:07.8423623', N'Red Gate Software  -', '20171019 11:44:26.7231815', N'S200010', 5)
INSERT INTO [jsharmony].[GPP] ([GPP_PROCESS], [GPP_ATTRIB], [GPP_VAL], [GPP_ETstmp], [GPP_EU], [GPP_MTstmp], [GPP_MU], [GPP_ID]) VALUES (N'HOUSE', N'CONTACT', N'John Contact', '20151025 10:03:07.8423623', N'Red Gate Software  -', '20171019 11:44:38.4681563', N'S200010', 6)
INSERT INTO [jsharmony].[GPP] ([GPP_PROCESS], [GPP_ATTRIB], [GPP_VAL], [GPP_ETstmp], [GPP_EU], [GPP_MTstmp], [GPP_MU], [GPP_ID]) VALUES (N'HOUSE', N'EMAIL', N'user@company.com', '20151025 10:03:07.8423623', N'Red Gate Software  -', '20171019 11:44:48.5757533', N'S200010', 7)
INSERT INTO [jsharmony].[GPP] ([GPP_PROCESS], [GPP_ATTRIB], [GPP_VAL], [GPP_ETstmp], [GPP_EU], [GPP_MTstmp], [GPP_MU], [GPP_ID]) VALUES (N'HOUSE', N'FAX', N'(333) 333-3333', '20151025 10:03:07.8423623', N'Red Gate Software  -', '20171019 11:44:59.5875727', N'S200010', 8)
INSERT INTO [jsharmony].[GPP] ([GPP_PROCESS], [GPP_ATTRIB], [GPP_VAL], [GPP_ETstmp], [GPP_EU], [GPP_MTstmp], [GPP_MU], [GPP_ID]) VALUES (N'HOUSE', N'NAME', N'COMPANY NAME', '20151025 10:03:07.8423623', N'Red Gate Software  -', '20171019 11:45:07.2251813', N'S200010', 9)
INSERT INTO [jsharmony].[GPP] ([GPP_PROCESS], [GPP_ATTRIB], [GPP_VAL], [GPP_ETstmp], [GPP_EU], [GPP_MTstmp], [GPP_MU], [GPP_ID]) VALUES (N'HOUSE', N'STATE', N'IL', '20151025 10:03:07.8423623', N'Red Gate Software  -', '20151025 10:03:07.8423623', N'Red Gate Software  -', 10)
INSERT INTO [jsharmony].[GPP] ([GPP_PROCESS], [GPP_ATTRIB], [GPP_VAL], [GPP_ETstmp], [GPP_EU], [GPP_MTstmp], [GPP_MU], [GPP_ID]) VALUES (N'HOUSE', N'ZIP', N'11111', '20151025 10:03:07.8579623', N'Red Gate Software  -', '20171019 11:45:11.8177576', N'S200010', 11)
SET IDENTITY_INSERT [jsharmony].[GPP] OFF
SET IDENTITY_INSERT [jsharmony].[HP] ON
INSERT INTO [jsharmony].[HP] ([HP_CODE], [HP_Desc], [HP_ID]) VALUES (N'C', N'Customer', 15)
INSERT INTO [jsharmony].[HP] ([HP_CODE], [HP_Desc], [HP_ID]) VALUES (N'E_B', N'Item - Charges', 11)
INSERT INTO [jsharmony].[HP] ([HP_CODE], [HP_Desc], [HP_ID]) VALUES (N'E_H', N'Item - History', 3)
INSERT INTO [jsharmony].[HP] ([HP_CODE], [HP_Desc], [HP_ID]) VALUES (N'E_O', N'Item - Overview', 9)
INSERT INTO [jsharmony].[HP] ([HP_CODE], [HP_Desc], [HP_ID]) VALUES (N'E_POPUP_E', N'New Item (from E)', 6)
INSERT INTO [jsharmony].[HP] ([HP_CODE], [HP_Desc], [HP_ID]) VALUES (N'E_POPUP_SQ', N'New Item (from SQ)', 5)
INSERT INTO [jsharmony].[HP] ([HP_CODE], [HP_Desc], [HP_ID]) VALUES (N'EL_C_REL', N'Items - Related', 7)
INSERT INTO [jsharmony].[HP] ([HP_CODE], [HP_Desc], [HP_ID]) VALUES (N'SCHED', N'Scheduling', 14)
INSERT INTO [jsharmony].[HP] ([HP_CODE], [HP_Desc], [HP_ID]) VALUES (N'SQ_A', N'Series - Assemblies', 13)
INSERT INTO [jsharmony].[HP] ([HP_CODE], [HP_Desc], [HP_ID]) VALUES (N'SQ_B', N'Series - Charges', 12)
INSERT INTO [jsharmony].[HP] ([HP_CODE], [HP_Desc], [HP_ID]) VALUES (N'SQ_H', N'Series - History', 4)
INSERT INTO [jsharmony].[HP] ([HP_CODE], [HP_Desc], [HP_ID]) VALUES (N'SQ_O', N'Series - Overview', 10)
INSERT INTO [jsharmony].[HP] ([HP_CODE], [HP_Desc], [HP_ID]) VALUES (N'TO_H', N'Order History', 2)
INSERT INTO [jsharmony].[HP] ([HP_CODE], [HP_Desc], [HP_ID]) VALUES (N'TOL_C_REL', N'Orders - Related', 8)
INSERT INTO [jsharmony].[HP] ([HP_CODE], [HP_Desc], [HP_ID]) VALUES (N'TOLSEL_SEL', N'Items Selector', 1)
SET IDENTITY_INSERT [jsharmony].[HP] OFF
SET IDENTITY_INSERT [jsharmony].[UCOD_COUNTRY] ON
INSERT INTO [jsharmony].[UCOD_COUNTRY] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'CANADA', 1, 3, N'CANADA', NULL, NULL, NULL, '20170508 12:47:07.8423080', N'Microsoft SQL Server', '20170508 12:47:07.8433087', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_COUNTRY] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'MEXICO', 2, 2, N'MEXICO', NULL, NULL, NULL, '20170508 12:47:07.8433087', N'Microsoft SQL Server', '20170508 12:47:07.8433087', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_COUNTRY] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'USA', 3, 1, N'USA', NULL, NULL, NULL, '20170508 12:47:07.8443088', N'Microsoft SQL Server', '20170508 12:47:07.8443088', N'Microsoft SQL Server', NULL, NULL, NULL)
SET IDENTITY_INSERT [jsharmony].[UCOD_COUNTRY] OFF
SET IDENTITY_INSERT [jsharmony].[DUAL] ON
INSERT INTO [jsharmony].[DUAL] ([DUAL_IDENT], [DUMMY], [DUAL_BIGINT], [DUAL_NVARCHAR50]) VALUES (1, N'X', NULL, NULL)
SET IDENTITY_INSERT [jsharmony].[DUAL] OFF
EXEC(N'INSERT INTO [jsharmony].[SCRIPT] ([SCRIPT_NAME], [SCRIPT_TXT]) VALUES (N''CREATE_GCOD'', N''CREATE TABLE [%%%schema%%%].[GCOD_%%%name%%%](
  [GCOD_ID] [bigint] IDENTITY(1,1) NOT NULL,
  [CODSEQ] [smallint] NULL,
  [CODEVAL] [nvarchar](8) NOT NULL,
  [CODETXT] [nvarchar](50) NULL,
  [CODECODE] [nvarchar](50) NULL,
  [CODETDT] [date] NULL,
  [CODETCM] [nvarchar](50) NULL,
  [COD_ETstmp] [datetime2](7) NULL,
  [COD_EU] [nvarchar](20) NULL,
  [COD_MTstmp] [datetime2](7) NULL,
  [COD_MU] [nvarchar](20) NULL,
  [COD_SNotes] [nvarchar](255) NULL,
  [COD_Notes] [nvarchar](255) NULL,
  [COD_EU_FMT]  AS ([jsharmony].[myCUSER_FMT]([COD_EU])),
  [COD_MU_FMT]  AS ([jsharmony].[myCUSER_FMT]([COD_MU])),
  [CODEATTRIB] [nvarchar](50) NULL,
 CONSTRAINT [PK_GCOD_%%%name%%%] PRIMARY KEY CLUSTERED 
(
  [GCOD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UNQ_GCOD_%%%name%%%_CODETXT] UNIQUE NONCLUSTERED 
(
  [CODETXT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UNQ_GCOD_%%%name%%%_CODEVAL] UNIQUE NONCLUSTERED 
(
  [CODEVAL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;

ALTER TABLE [%%%schema%%%].[GCOD_%%%name%%%] ADD  CONSTRAINT [DF_GCOD_%%%name%%%_COD_EDt]  DEFAULT ([jsharmony].[myNOW]()) FOR [COD_ETstmp]
;

ALTER TABLE [%%%schema%%%].[GCOD_%%%name%%%] ADD  CONSTRAINT [DF_GCOD_%%%name%%%_COD_EUser]  DEFAULT ([jsharmony].[myCUSER]()) FOR [COD_EU]
;

ALTER TABLE [%%%schema%%%].[GCOD_%%%name%%%] ADD  CONSTRAINT [DF_GCOD_%%%name%%%_COD_MDt]  DEFAULT ([jsharmony].[myNOW]()) FOR [COD_MTstmp]
;

ALTER TABLE [%%%schema%%%].[GCOD_%%%name%%%] ADD  CONSTRAINT [DF_GCOD_%%%name%%%_COD_MUser]  DEFAULT ([jsharmony].[myCUSER]()) FOR [COD_MU]
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value ID'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''GCOD_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''GCOD_ID''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value Sequence'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''GCOD_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''CODSEQ''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''GCOD_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''CODEVAL''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value Description'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''GCOD_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''CODETXT''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Additional Code'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''GCOD_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''CODECODE''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value Termination Date'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''GCOD_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''CODETDT''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value Termination Comment'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''GCOD_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''CODETCM''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value Entry Timestamp'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''GCOD_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''COD_ETstmp''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value Entry User'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema'')')
UPDATE [jsharmony].[SCRIPT] SET [SCRIPT_TXT].WRITE(N'%%%'', @level1type=N''TABLE'',@level1name=N''GCOD_%%%name%%%'', @level2type=N''COLUMN'',@level2name=N''COD_EU''
;

EXEC sys.sp_addextendedproperty @name=N''MS_Description'', @value=N''Code Value Last Modification Timestamp'' , @level0type=N''SCHEMA'',@level0name=N''%%%schema%%%'', @level1type=N''TABLE'',@level1name=N''GCOD_%%%name%%%'', @level2type=N''COLUMN'',@level2name=N''COD_MTstmp''
;

EXEC sys.sp_addextendedproperty @name=N''MS_Description'', @value=N''Code Value Last Modification User'' , @level0type=N''SCHEMA'',@level0name=N''%%%schema%%%'', @level1type=N''TABLE'',@level1name=N''GCOD_%%%name%%%'', @level2type=N''COLUMN'',@level2name=N''COD_MU''
;

EXEC sys.sp_addextendedproperty @name=N''MS_Description'', @value=N''Code System Notes'' , @level0type=N''SCHEMA'',@level0name=N''%%%schema%%%'', @level1type=N''TABLE'',@level1name=N''GCOD_%%%name%%%'', @level2type=N''COLUMN'',@level2name=N''COD_SNotes''
;

EXEC sys.sp_addextendedproperty @name=N''MS_Description'', @value=N''User Codes - %%%mean%%%'' , @level0type=N''SCHEMA'',@level0name=N''%%%schema%%%'', @level1type=N''TABLE'',@level1name=N''GCOD_%%%name%%%''
;


',NULL,NULL) WHERE [SCRIPT_NAME]=N'CREATE_GCOD'
EXEC(N'INSERT INTO [jsharmony].[SCRIPT] ([SCRIPT_NAME], [SCRIPT_TXT]) VALUES (N''CREATE_GCOD_TRIGGER'', N''CREATE trigger [%%%schema%%%].[GCOD_%%%name%%%_IUD] on [%%%schema%%%].[GCOD_%%%name%%%]
for insert, update, delete
AS
BEGIN
  set nocount on
  DECLARE @TP char(1)
  DECLARE @CURDTTM DATETIME2(7)
  DECLARE @CURDT DATE
  DECLARE @CURDTTM_CHAR NVARCHAR(MAX)
  DECLARE @MYUSER NVARCHAR(20)
  DECLARE @ERRTXT NVARCHAR(500)
  DECLARE @MY_AUD_SEQ NUMERIC(20,0)
  DECLARE CUR_GCOD_%%%name%%%_IUD CURSOR LOCAL FOR
     SELECT  d.GCOD_ID, i.GCOD_ID,
           d.CODSEQ, i.CODSEQ,
           d.CODETDT, i.CODETDT,
           d.CODEVAL, i.CODEVAL,
           d.CODETXT, i.CODETXT,
           d.CODECODE, i.CODECODE,
           d.CODEATTRIB, i.CODEATTRIB,
           d.CODETCM, i.CODETCM
       FROM deleted d FULL OUTER JOIN inserted i
                       ON i.GCOD_ID = d.GCOD_ID;
  DECLARE @D_GCOD_ID bigint
  DECLARE @I_GCOD_ID bigint
  DECLARE @D_CODSEQ bigint
  DECLARE @I_CODSEQ bigint
  DECLARE @D_CODETDT DATETIME2(7)
  DECLARE @I_CODETDT DATETIME2(7)
  DECLARE @D_CODEVAL NVARCHAR(MAX)
  DECLARE @I_CODEVAL NVARCHAR(MAX)
  DECLARE @D_CODETXT NVARCHAR(MAX)
  DECLARE @I_CODETXT NVARCHAR(MAX)
  DECLARE @D_CODECODE NVARCHAR(MAX)
  DECLARE @I_CODECODE NVARCHAR(MAX)
  DECLARE @D_CODEATTRIB NVARCHAR(MAX)
  DECLARE @I_CODEATTRIB NVARCHAR(MAX)
  DECLARE @D_CODETCM NVARCHAR(MAX)
  DECLARE @I_CODETCM NVARCHAR(MAX)

  DECLARE @MYERROR_NO INT = 0
  DECLARE @MYERROR_MSG NVARCHAR(MAX) = NULL

  DECLARE @xloc nvarchar(MAX)
  DECLARE @xtxt nvarchar(MAX)

  DECLARE @DYNSQL NVARCHAR(MAX)
  DECLARE @C BIGINT
  DECLARE @CODEVAL NVARCHAR(MAX)
  DECLARE @WK_GCOD_ID bigint
  DECLARE @M NVARCHAR(MAX)
  DECLARE @CPE_USER BIT

  DECLARE @return_value int,
      @out_msg nvarchar(max),
      @out_rslt nvarchar(255)


  if exists (select * from inserted)
    if exists (select * from deleted)
      set @TP = ''''U''''
    else
      set @TP = ''''I''''
  else
    if exists (select * from deleted)
    set @TP = ''''D''''
    ELSE
    BEGIN
      RETURN
    END    
  
  SET @CURDTTM = jsharmony.myNOW_DO()
  SET @CURDT = jsharmony.myTODATE(@CURDTTM)
  SET @CURDTTM_CHAR = CONVERT(NVARCHAR, @CURDTTM, 120)+''''.0000000''''
  SET @MYUSER = jsharmony.myCUSER() 

  IF @TP = ''''U'''' AND UPDATE(GCOD_ID)
  BEGIN
    EXEC [jsharmony].[ZZ-FILEDEBUG] ''''TRIGGER'''',''''GCOD_%%%name%%%_IUD'''',''''ERR'''', ''''Cannot update ID''''
    raiserror(''''Cannot update identity'''',16,1)
    ROLLBACK TRANSACTION
    return
  END

  IF @TP = ''''U'''' AND UPDATE(CODEVAL)
  BEGIN
    EXEC [jsharmony].[ZZ-FILEDEBUG] ''''TRIGGER'''',''''GCOD_%%%name%%%_IUD'''',''''ERR'''', ''''Cannot update CODEVAL''''
    raiserror(''''Cannot update foreign key CODEVAL'''',16,1)
    ROLLBACK TRANSACTION
    return
  END

  
  OPEN CUR_GCOD_%%%name%%%_IUD
  FETCH NEXT FROM CUR_GCOD_%%%name%%%_IUD
        INTO @D_GCOD_ID, @I_GCOD_ID,
             @D_CODSEQ, @I_CODSEQ,
             @D_CODETDT, @I_CODETDT,
             @D_CODEVAL, @I_CODEVAL,
             @D_CODETXT, @I_CODETXT,
             @D_CODECODE, @I_CODECODE,
             @D_CODEATTRIB, @I_CODEATTRIB,
             @D_CODETCM, @I_CODETCM

  WHILE (@@Fetch_Status = 0)
  BEGIN

  /******************************************/
  /****** SPECIAL FRONT ACTION - BEGIN ******/
  /******************************************/

    IF (@TP=''''I'''')
  BEGIN
      UPDATE %%%schema%%%.GCOD_%%%name%%%
       SET COD_ETstmp = @CURDTTM,
       COD_EU = @MYUSER,
         COD_MTstmp = @CURDTTM,
       COD_MU = @MYUSER
       WHERE GCOD_%%%name%%%.GCOD_ID = @I_GCOD_ID;
    END  

  /******************************************/
  /****** SPECIAL FRONT ACTION - END   ******/
  /******************************************/


    SET @MY_AUD_SEQ = 0
  IF (@TP=''''I'''' OR @TP=''''D'''')
  BEGIN  
    SET @WK_GCOD_ID = ISNULL(@D_GCOD_ID,@I_GCOD_ID)
    EXEC  @MY_AUD_SEQ = jsharmony.AUDH_BASE @TP, ''''GCOD_%%%name%%%'''', @WK_GCOD_ID, @MYUSER, @CURDTTM
  END

 
    IF @TP=''''U'''' OR @TP=''''D''''
  BEGIN

      IF (@TP = ''''D'''' AND @D_CODSEQ IS NOT NULL OR
          @TP = ''''U'''' AND jsharmony.NONEQUALN(@D_CODSEQ, @I_'')')
UPDATE [jsharmony].[SCRIPT] SET [SCRIPT_TXT].WRITE(N'CODSEQ) > 0)
      BEGIN
        IF (@MY_AUD_SEQ=0)
      EXEC  @MY_AUD_SEQ = jsharmony.AUDH_BASE ''U'', ''GCOD_%%%name%%%'', @I_GCOD_ID, @MYUSER, @CURDTTM
        INSERT INTO jsharmony.AUD_D VALUES (@MY_AUD_SEQ, ''CODSEQ'', @D_CODSEQ)
      END

      IF (@TP = ''D'' AND @D_CODETDT IS NOT NULL OR
          @TP = ''U'' AND jsharmony.NONEQUALD(@D_CODETDT, @I_CODETDT) > 0)
      BEGIN
        IF (@MY_AUD_SEQ=0)
      EXEC  @MY_AUD_SEQ = jsharmony.AUDH_BASE ''U'', ''GCOD_%%%name%%%'', @I_GCOD_ID, @MYUSER, @CURDTTM
        INSERT INTO jsharmony.AUD_D VALUES (@MY_AUD_SEQ, ''CODETDT'', @D_CODETDT)
      END

      IF (@TP = ''D'' AND @D_CODEVAL IS NOT NULL OR
          @TP = ''U'' AND jsharmony.NONEQUALC(@D_CODEVAL, @I_CODEVAL) > 0)
      BEGIN
        IF (@MY_AUD_SEQ=0)
      EXEC  @MY_AUD_SEQ = jsharmony.AUDH_BASE ''U'', ''GCOD_%%%name%%%'', @I_GCOD_ID, @MYUSER, @CURDTTM
        INSERT INTO jsharmony.AUD_D VALUES (@MY_AUD_SEQ, ''CODEVAL'', @D_CODEVAL)
      END

      IF (@TP = ''D'' AND @D_CODETXT IS NOT NULL OR
          @TP = ''U'' AND jsharmony.NONEQUALC(@D_CODETXT, @I_CODETXT) > 0)
      BEGIN
        IF (@MY_AUD_SEQ=0)
      EXEC  @MY_AUD_SEQ = jsharmony.AUDH_BASE ''U'', ''GCOD_%%%name%%%'', @I_GCOD_ID, @MYUSER, @CURDTTM
        INSERT INTO jsharmony.AUD_D VALUES (@MY_AUD_SEQ, ''CODETXT'', @D_CODETXT)
      END

      IF (@TP = ''D'' AND @D_CODECODE IS NOT NULL OR
          @TP = ''U'' AND jsharmony.NONEQUALC(@D_CODECODE, @I_CODECODE) > 0)
      BEGIN
        IF (@MY_AUD_SEQ=0)
      EXEC  @MY_AUD_SEQ = jsharmony.AUDH_BASE ''U'', ''GCOD_%%%name%%%'', @I_GCOD_ID, @MYUSER, @CURDTTM
        INSERT INTO jsharmony.AUD_D VALUES (@MY_AUD_SEQ, ''CODECODE'', @D_CODECODE)
      END

      IF (@TP = ''D'' AND @D_codeattrib IS NOT NULL OR
          @TP = ''U'' AND jsharmony.NONEQUALC(@D_codeattrib, @I_codeattrib) > 0)
      BEGIN
        IF (@MY_AUD_SEQ=0)
      EXEC  @MY_AUD_SEQ = jsharmony.AUDH_BASE ''U'', ''GCOD_%%%name%%%'', @I_GCOD_ID, @MYUSER, @CURDTTM
        INSERT INTO jsharmony.AUD_D VALUES (@MY_AUD_SEQ, ''CODEATTRIB'', @D_CODEATTRIB)
      END

      IF (@TP = ''D'' AND @D_CODETCM IS NOT NULL OR
          @TP = ''U'' AND jsharmony.NONEQUALC(@D_CODETCM, @I_CODETCM) > 0)
      BEGIN
        IF (@MY_AUD_SEQ=0)
      EXEC  @MY_AUD_SEQ = jsharmony.AUDH_BASE ''U'', ''GCOD_%%%name%%%'', @I_GCOD_ID, @MYUSER, @CURDTTM
        INSERT INTO jsharmony.AUD_D VALUES (@MY_AUD_SEQ, ''CODETCM'', @D_CODETCM)
      END

    END  /* END OF "IF @TP=''U'' OR @TP=''D''"  */


  /******************************************/
  /****** SPECIAL BACK ACTION - BEGIN  ******/
  /******************************************/

    IF (@TP=''U'' AND @MY_AUD_SEQ <> 0)
  BEGIN
      UPDATE %%%schema%%%.GCOD_%%%name%%%
       SET COD_MTstmp = @CURDTTM,
       COD_MU = @MYUSER
       WHERE GCOD_%%%name%%%.GCOD_ID = @I_GCOD_ID;
    END  

  /*****************************************/
  /****** SPECIAL BACK ACTION - END   ******/
  /*****************************************/



            
    FETCH NEXT FROM CUR_GCOD_%%%name%%%_IUD
        INTO @D_GCOD_ID, @I_GCOD_ID,
             @D_CODSEQ,  @I_CODSEQ,
             @D_CODETDT, @I_CODETDT,
             @D_CODEVAL, @I_CODEVAL,
             @D_CODETXT, @I_CODETXT,
             @D_CODECODE, @I_CODECODE,
             @D_CODEATTRIB, @I_CODEATTRIB,
             @D_CODETCM, @I_CODETCM


  END
  CLOSE CUR_GCOD_%%%name%%%_IUD
  DEALLOCATE CUR_GCOD_%%%name%%%_IUD


  RETURN

END



',NULL,NULL) WHERE [SCRIPT_NAME]=N'CREATE_GCOD_TRIGGER'
EXEC(N'INSERT INTO [jsharmony].[SCRIPT] ([SCRIPT_NAME], [SCRIPT_TXT]) VALUES (N''CREATE_GCOD2'', N''CREATE TABLE [%%%schema%%%].[GCOD2_%%%name%%%](
  [GCOD2_ID] [bigint] IDENTITY(1,1) NOT NULL,
  [CODSEQ] [smallint] NULL,
  [CODEVAL1] [nvarchar](8) NOT NULL,
  [CODEVAL2] [nvarchar](8) NOT NULL,
  [CODETXT] [nvarchar](50) NULL,
  [CODECODE] [nvarchar](50) NULL,
  [CODEATTRIB] [nvarchar](50) NULL,
  [CODETDT] [datetime2](7) NULL,
  [CODETCM] [nvarchar](50) NULL,
  [COD_ETstmp] [datetime2](7) NULL,
  [COD_EU] [nvarchar](20) NULL,
  [COD_MTstmp] [datetime2](7) NULL,
  [COD_MU] [nvarchar](20) NULL,
  [COD_SNotes] [nvarchar](255) NULL,
  [COD_Notes] [nvarchar](255) NULL,
  [COD_EU_FMT]  AS ([jsharmony].[myCUSER_FMT]([COD_EU])),
  [COD_MU_FMT]  AS ([jsharmony].[myCUSER_FMT]([COD_MU])),
 CONSTRAINT [PK_GCOD2_%%%name%%%] PRIMARY KEY CLUSTERED 
(
  [GCOD2_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UNQ_GCOD2_%%%name%%%] UNIQUE NONCLUSTERED 
(
  [CODEVAL1] ASC,
  [CODEVAL2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;

ALTER TABLE [%%%schema%%%].[GCOD2_%%%name%%%] ADD  CONSTRAINT [DF_GCOD2_%%%name%%%_COD_EDt]  DEFAULT ([jsharmony].[myNOW]()) FOR [COD_ETstmp]
;

ALTER TABLE [%%%schema%%%].[GCOD2_%%%name%%%] ADD  CONSTRAINT [DF_GCOD2_%%%name%%%_COD_EUser]  DEFAULT ([jsharmony].[myCUSER]()) FOR [COD_EU]
;

ALTER TABLE [%%%schema%%%].[GCOD2_%%%name%%%] ADD  CONSTRAINT [DF_GCOD2_%%%name%%%_COD_MDt]  DEFAULT ([jsharmony].[myNOW]()) FOR [COD_MTstmp]
;

ALTER TABLE [%%%schema%%%].[GCOD2_%%%name%%%] ADD  CONSTRAINT [DF_GCOD2_%%%name%%%_COD_MUser]  DEFAULT ([jsharmony].[myCUSER]()) FOR [COD_MU]
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value ID'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''GCOD2_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''GCOD2_ID''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value Sequence'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''GCOD2_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''CODSEQ''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''GCOD2_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''CODEVAL1''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value Description'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''GCOD2_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''CODETXT''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Additional Code'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''GCOD2_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''CODECODE''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value Termination Date'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''GCOD2_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''CODETDT''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value Termination Comment'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''GCOD2_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''CODETCM''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value Entry Timestamp'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''GCOD2_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''COD_ETstmp''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value Entry User'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''GCOD2_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''COD_EU''''
;

EXEC sys.sp_addextendedproper'')')
UPDATE [jsharmony].[SCRIPT] SET [SCRIPT_TXT].WRITE(N'ty @name=N''MS_Description'', @value=N''Code Value Last Modification Timestamp'' , @level0type=N''SCHEMA'',@level0name=N''%%%schema%%%'', @level1type=N''TABLE'',@level1name=N''GCOD2_%%%name%%%'', @level2type=N''COLUMN'',@level2name=N''COD_MTstmp''
;

EXEC sys.sp_addextendedproperty @name=N''MS_Description'', @value=N''Code Value Last Modification User'' , @level0type=N''SCHEMA'',@level0name=N''%%%schema%%%'', @level1type=N''TABLE'',@level1name=N''GCOD2_%%%name%%%'', @level2type=N''COLUMN'',@level2name=N''COD_MU''
;

EXEC sys.sp_addextendedproperty @name=N''MS_Description'', @value=N''Code System Notes'' , @level0type=N''SCHEMA'',@level0name=N''%%%schema%%%'', @level1type=N''TABLE'',@level1name=N''GCOD2_%%%name%%%'', @level2type=N''COLUMN'',@level2name=N''COD_SNotes''
;

EXEC sys.sp_addextendedproperty @name=N''MS_Description'', @value=N''User Codes 2 - %%%mean%%%'' , @level0type=N''SCHEMA'',@level0name=N''%%%schema%%%'', @level1type=N''TABLE'',@level1name=N''GCOD2_%%%name%%%''
;


',NULL,NULL) WHERE [SCRIPT_NAME]=N'CREATE_GCOD2'
EXEC(N'INSERT INTO [jsharmony].[SCRIPT] ([SCRIPT_NAME], [SCRIPT_TXT]) VALUES (N''CREATE_GCOD2_TRIGGER'', N''CREATE trigger [%%%schema%%%].[GCOD2_%%%name%%%_IUD] on [%%%schema%%%].[GCOD2_%%%name%%%]
for insert, update, delete
AS
BEGIN
  set nocount on
  DECLARE @TP char(1)
  DECLARE @CURDTTM DATETIME2(7)
  DECLARE @CURDT DATE
  DECLARE @CURDTTM_CHAR NVARCHAR(MAX)
  DECLARE @MYUSER NVARCHAR(20)
  DECLARE @ERRTXT NVARCHAR(500)
  DECLARE @MY_AUD_SEQ NUMERIC(20,0)
  DECLARE CUR_GCOD2_%%%name%%%_IUD CURSOR LOCAL FOR
     SELECT  d.GCOD2_ID, i.GCOD2_ID,
           d.CODSEQ, i.CODSEQ,
           d.CODETDT, i.CODETDT,
           d.CODEVAL1, i.CODEVAL1,
           d.CODEVAL2, i.CODEVAL2,
           d.CODETXT, i.CODETXT,
           d.CODECODE, i.CODECODE,
           d.CODEATTRIB, i.CODEATTRIB,
           d.CODETCM, i.CODETCM
       FROM deleted d FULL OUTER JOIN inserted i
                       ON i.GCOD2_ID = d.GCOD2_ID;
  DECLARE @D_GCOD2_ID bigint
  DECLARE @I_GCOD2_ID bigint
  DECLARE @D_CODSEQ bigint
  DECLARE @I_CODSEQ bigint
  DECLARE @D_CODETDT DATETIME2(7)
  DECLARE @I_CODETDT DATETIME2(7)
  DECLARE @D_CODEVAL1 NVARCHAR(MAX)
  DECLARE @I_CODEVAL1 NVARCHAR(MAX)
  DECLARE @D_CODEVAL2 NVARCHAR(MAX)
  DECLARE @I_CODEVAL2 NVARCHAR(MAX)
  DECLARE @D_CODETXT NVARCHAR(MAX)
  DECLARE @I_CODETXT NVARCHAR(MAX)
  DECLARE @D_CODECODE NVARCHAR(MAX)
  DECLARE @I_CODECODE NVARCHAR(MAX)
  DECLARE @D_CODEATTRIB NVARCHAR(MAX)
  DECLARE @I_CODEATTRIB NVARCHAR(MAX)
  DECLARE @D_CODETCM NVARCHAR(MAX)
  DECLARE @I_CODETCM NVARCHAR(MAX)

  DECLARE @MYERROR_NO INT = 0
  DECLARE @MYERROR_MSG NVARCHAR(MAX) = NULL

  DECLARE @xloc nvarchar(MAX)
  DECLARE @xtxt nvarchar(MAX)

  DECLARE @DYNSQL NVARCHAR(MAX)
  DECLARE @C BIGINT
  DECLARE @M NVARCHAR(MAX)
  DECLARE @CPE_USER BIT
  DECLARE @WK_GCOD2_ID BIGINT

  DECLARE @return_value int,
      @out_msg nvarchar(max),
      @out_rslt nvarchar(255)


  if exists (select * from inserted)
    if exists (select * from deleted)
      set @TP = ''''U''''
    else
      set @TP = ''''I''''
  else
    if exists (select * from deleted)
    set @TP = ''''D''''
    ELSE
    BEGIN
      RETURN
    END    
  
  SET @CURDTTM = jsharmony.myNOW_DO()
  SET @CURDT = jsharmony.myTODATE(@CURDTTM)
  SET @CURDTTM_CHAR = CONVERT(NVARCHAR, @CURDTTM, 120)+''''.0000000''''
  SET @MYUSER = jsharmony.myCUSER() 

  IF @TP = ''''U'''' AND UPDATE(GCOD2_ID)
  BEGIN
    EXEC [jsharmony].[ZZ-FILEDEBUG] ''''TRIGGER'''',''''GCOD2_%%%name%%%_IUD'''',''''ERR'''', ''''Cannot update ID''''
    raiserror(''''Cannot update identity'''',16,1)
    ROLLBACK TRANSACTION
    return
  END

  IF @TP = ''''U'''' AND UPDATE(CODEVAL1)
  BEGIN
    EXEC [jsharmony].[ZZ-FILEDEBUG] ''''TRIGGER'''',''''GCOD2_%%%name%%%_IUD'''',''''ERR'''', ''''Cannot update CODEVAL1''''
    raiserror(''''Cannot update foreign key CODEVAL1'''',16,1)
    ROLLBACK TRANSACTION
    return
  END

  IF @TP = ''''U'''' AND UPDATE(CODEVAL2)
  BEGIN
    EXEC [jsharmony].[ZZ-FILEDEBUG] ''''TRIGGER'''',''''GCOD2_%%%name%%%_IUD'''',''''ERR'''', ''''Cannot update CODEVAL2''''
    raiserror(''''Cannot update foreign key CODEVAL2'''',16,1)
    ROLLBACK TRANSACTION
    return
  END

  
  OPEN CUR_GCOD2_%%%name%%%_IUD
  FETCH NEXT FROM CUR_GCOD2_%%%name%%%_IUD
        INTO @D_GCOD2_ID, @I_GCOD2_ID,
             @D_CODSEQ, @I_CODSEQ,
             @D_CODETDT, @I_CODETDT,
             @D_CODEVAL1, @I_CODEVAL1,
             @D_CODEVAL2, @I_CODEVAL2,
             @D_CODETXT, @I_CODETXT,
             @D_CODECODE, @I_CODECODE,
             @D_CODEATTRIB, @I_CODEATTRIB,
             @D_CODETCM, @I_CODETCM

  WHILE (@@Fetch_Status = 0)
  BEGIN

  /******************************************/
  /****** SPECIAL FRONT ACTION - BEGIN ******/
  /******************************************/

    IF (@TP=''''I'''')
  BEGIN
      UPDATE %%%schema%%%.GCOD2_%%%name%%%
       SET COD_ETstmp = @CURDTTM,
       COD_EU = @MYUSER,
         COD_MTstmp = @CURDTTM,
       COD_MU = @MYUSER
       WHERE GCOD2_%%%name%%%.GCOD2_ID = @I_GCOD2_ID;
    END  

  /******************************************/
  /****** SPECIAL FRONT ACTION - END   ******/
  /******************'')')
EXEC(N'DECLARE @pv binary(16)
'+N'UPDATE [jsharmony].[SCRIPT] SET [SCRIPT_TXT].WRITE(N''************************/


    SET @MY_AUD_SEQ = 0
  IF (@TP=''''I'''' OR @TP=''''D'''')
  BEGIN  
    SET @WK_GCOD2_ID = ISNULL(@D_GCOD2_ID,@I_GCOD2_ID)
    EXEC  @MY_AUD_SEQ = jsharmony.AUDH_BASE @TP, ''''GCOD2_%%%name%%%'''', @WK_GCOD2_ID, @MYUSER, @CURDTTM
  END

 
    IF @TP=''''U'''' OR @TP=''''D''''
  BEGIN

      IF (@TP = ''''D'''' AND @D_CODSEQ IS NOT NULL OR
          @TP = ''''U'''' AND jsharmony.NONEQUALN(@D_CODSEQ, @I_CODSEQ) > 0)
      BEGIN
        IF (@MY_AUD_SEQ=0)
      EXEC  @MY_AUD_SEQ = jsharmony.AUDH_BASE ''''U'''', ''''GCOD2_%%%name%%%'''', @I_GCOD2_ID, @MYUSER, @CURDTTM
        INSERT INTO jsharmony.AUD_D VALUES (@MY_AUD_SEQ, ''''CODSEQ'''', @D_CODSEQ)
      END

      IF (@TP = ''''D'''' AND @D_CODETDT IS NOT NULL OR
          @TP = ''''U'''' AND jsharmony.NONEQUALD(@D_CODETDT, @I_CODETDT) > 0)
      BEGIN
        IF (@MY_AUD_SEQ=0)
      EXEC  @MY_AUD_SEQ = jsharmony.AUDH_BASE ''''U'''', ''''GCOD2_%%%name%%%'''', @I_GCOD2_ID, @MYUSER, @CURDTTM
        INSERT INTO jsharmony.AUD_D VALUES (@MY_AUD_SEQ, ''''CODETDT'''', @D_CODETDT)
      END

      IF (@TP = ''''D'''' AND @D_CODEVAL1 IS NOT NULL OR
          @TP = ''''U'''' AND jsharmony.NONEQUALC(@D_CODEVAL1, @I_CODEVAL1) > 0)
      BEGIN
        IF (@MY_AUD_SEQ=0)
      EXEC  @MY_AUD_SEQ = jsharmony.AUDH_BASE ''''U'''', ''''GCOD2_%%%name%%%'''', @I_GCOD2_ID, @MYUSER, @CURDTTM
        INSERT INTO jsharmony.AUD_D VALUES (@MY_AUD_SEQ, ''''CODEVAL1'''', @D_CODEVAL1)
      END

      IF (@TP = ''''D'''' AND @D_CODEVAL2 IS NOT NULL OR
          @TP = ''''U'''' AND jsharmony.NONEQUALC(@D_CODEVAL2, @I_CODEVAL2) > 0)
      BEGIN
        IF (@MY_AUD_SEQ=0)
      EXEC  @MY_AUD_SEQ = jsharmony.AUDH_BASE ''''U'''', ''''GCOD2_%%%name%%%'''', @I_GCOD2_ID, @MYUSER, @CURDTTM
        INSERT INTO jsharmony.AUD_D VALUES (@MY_AUD_SEQ, ''''CODEVAL2'''', @D_CODEVAL2)
      END

      IF (@TP = ''''D'''' AND @D_CODETXT IS NOT NULL OR
          @TP = ''''U'''' AND jsharmony.NONEQUALC(@D_CODETXT, @I_CODETXT) > 0)
      BEGIN
        IF (@MY_AUD_SEQ=0)
      EXEC  @MY_AUD_SEQ = jsharmony.AUDH_BASE ''''U'''', ''''GCOD2_%%%name%%%'''', @I_GCOD2_ID, @MYUSER, @CURDTTM
        INSERT INTO jsharmony.AUD_D VALUES (@MY_AUD_SEQ, ''''CODETXT'''', @D_CODETXT)
      END

      IF (@TP = ''''D'''' AND @D_CODECODE IS NOT NULL OR
          @TP = ''''U'''' AND jsharmony.NONEQUALC(@D_CODECODE, @I_CODECODE) > 0)
      BEGIN
        IF (@MY_AUD_SEQ=0)
      EXEC  @MY_AUD_SEQ = jsharmony.AUDH_BASE ''''U'''', ''''GCOD2_%%%name%%%'''', @I_GCOD2_ID, @MYUSER, @CURDTTM
        INSERT INTO jsharmony.AUD_D VALUES (@MY_AUD_SEQ, ''''CODECODE'''', @D_CODECODE)
      END

      IF (@TP = ''''D'''' AND @D_CODEATTRIB IS NOT NULL OR
          @TP = ''''U'''' AND jsharmony.NONEQUALC(@D_CODEATTRIB, @I_CODEATTRIB) > 0)
      BEGIN
        IF (@MY_AUD_SEQ=0)
      EXEC  @MY_AUD_SEQ = jsharmony.AUDH_BASE ''''U'''', ''''GCOD2_%%%name%%%'''', @I_GCOD2_ID, @MYUSER, @CURDTTM
        INSERT INTO jsharmony.AUD_D VALUES (@MY_AUD_SEQ, ''''CODEATTRIB'''', @D_CODEATTRIB)
      END

      IF (@TP = ''''D'''' AND @D_CODETCM IS NOT NULL OR
          @TP = ''''U'''' AND jsharmony.NONEQUALC(@D_CODETCM, @I_CODETCM) > 0)
      BEGIN
        IF (@MY_AUD_SEQ=0)
      EXEC  @MY_AUD_SEQ = jsharmony.AUDH_BASE ''''U'''', ''''GCOD2_%%%name%%%'''', @I_GCOD2_ID, @MYUSER, @CURDTTM
        INSERT INTO jsharmony.AUD_D VALUES (@MY_AUD_SEQ, ''''CODETCM'''', @D_CODETCM)
      END

    END  /* END OF "IF @TP=''''U'''' OR @TP=''''D''''"  */


  /******************************************/
  /****** SPECIAL BACK ACTION - BEGIN  ******/
  /******************************************/

    IF (@TP=''''U'''' AND @MY_AUD_SEQ <> 0)
  BEGIN
      UPDATE %%%schema%%%.GCOD2_%%%name%%%
       SET COD_MTstmp = @CURDTTM,
       COD_MU = @MYUSER
       WHERE GCOD2_%%%name%%%.GCOD2_ID = @I_GCOD2_ID;
    END  

  /*****************************************/
  /****** SPECIAL BACK ACTION - END   ******/
  /*****************************************/



            
    FETCH NEXT FROM CUR_GCOD2_%%%name%%%_IUD
        INTO @D_GCOD2_ID, @I_GCOD2_ID,
             @D_CODSEQ,  @I_CODSEQ,
             @D_CODETDT, @I_CODETDT,
             @D_CODEVAL1, @I_CODEVAL1,
             @D_CODEVAL2, @I_CO'',NULL,NULL) WHERE [SCRIPT_NAME]=N''CREATE_GCOD2_TRIGGER''
UPDATE [jsharmony].[SCRIPT] SET [SCRIPT_TXT].WRITE(N''DEVAL2,
             @D_CODETXT, @I_CODETXT,
             @D_CODECODE, @I_CODECODE,
             @D_CODEATTRIB, @I_CODEATTRIB,
             @D_CODETCM, @I_CODETCM


  END
  CLOSE CUR_GCOD2_%%%name%%%_IUD
  DEALLOCATE CUR_GCOD2_%%%name%%%_IUD


  RETURN

END


'',NULL,NULL) WHERE [SCRIPT_NAME]=N''CREATE_GCOD2_TRIGGER''
')
EXEC(N'INSERT INTO [jsharmony].[SCRIPT] ([SCRIPT_NAME], [SCRIPT_TXT]) VALUES (N''CREATE_UCOD'', N''CREATE TABLE [%%%schema%%%].[UCOD_%%%name%%%](
  [UCOD_ID] [bigint] IDENTITY(1,1) NOT NULL,
  [CODSEQ] [smallint] NULL,
  [CODEVAL] [nvarchar](8) NOT NULL,
  [CODETXT] [nvarchar](50) NULL,
  [CODECODE] [nvarchar](50) NULL,
  [CODETDT] [datetime2](7) NULL,
  [CODETCM] [nvarchar](50) NULL,
  [COD_ETstmp] [datetime2](7) NULL,
  [COD_EU] [nvarchar](20) NULL,
  [COD_MTstmp] [datetime2](7) NULL,
  [COD_MU] [nvarchar](20) NULL,
  [COD_SNotes] [nvarchar](255) NULL,
  [COD_Notes] [nvarchar](255) NULL,
  [CODEATTRIB] [nvarchar](50) NULL,
 CONSTRAINT [PK_UCOD_%%%name%%%] PRIMARY KEY CLUSTERED 
(
  [UCOD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UNQ_UCOD_%%%name%%%_CODETXT] UNIQUE NONCLUSTERED 
(
  [CODETXT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UNQ_UCOD_%%%name%%%_CODEVAL] UNIQUE NONCLUSTERED 
(
  [CODEVAL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;

ALTER TABLE [%%%schema%%%].[UCOD_%%%name%%%] ADD  CONSTRAINT [DF_UCOD_%%%name%%%_COD_EDt]  DEFAULT ([jsharmony].[myNOW]()) FOR [COD_ETstmp]
;

ALTER TABLE [%%%schema%%%].[UCOD_%%%name%%%] ADD  CONSTRAINT [DF_UCOD_%%%name%%%_COD_EUser]  DEFAULT ([jsharmony].[myCUSER]()) FOR [COD_EU]
;

ALTER TABLE [%%%schema%%%].[UCOD_%%%name%%%] ADD  CONSTRAINT [DF_UCOD_%%%name%%%_COD_MDt]  DEFAULT ([jsharmony].[myNOW]()) FOR [COD_MTstmp]
;

ALTER TABLE [%%%schema%%%].[UCOD_%%%name%%%] ADD  CONSTRAINT [DF_UCOD_%%%name%%%_COD_MUser]  DEFAULT ([jsharmony].[myCUSER]()) FOR [COD_MU]
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value ID'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''UCOD_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''UCOD_ID''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value Sequence'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''UCOD_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''CODSEQ''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''UCOD_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''CODEVAL''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value Description'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''UCOD_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''CODETXT''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Additional Code'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''UCOD_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''CODECODE''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value Termination Date'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''UCOD_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''CODETDT''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value Termination Comment'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''UCOD_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''CODETCM''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value Entry Timestamp'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''UCOD_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''COD_ETstmp''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value Entry User'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''UCOD_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''COD_EU''''
;

'')')
UPDATE [jsharmony].[SCRIPT] SET [SCRIPT_TXT].WRITE(N'
EXEC sys.sp_addextendedproperty @name=N''MS_Description'', @value=N''Code Value Last Modification Timestamp'' , @level0type=N''SCHEMA'',@level0name=N''%%%schema%%%'', @level1type=N''TABLE'',@level1name=N''UCOD_%%%name%%%'', @level2type=N''COLUMN'',@level2name=N''COD_MTstmp''
;

EXEC sys.sp_addextendedproperty @name=N''MS_Description'', @value=N''Code Value Last Modification User'' , @level0type=N''SCHEMA'',@level0name=N''%%%schema%%%'', @level1type=N''TABLE'',@level1name=N''UCOD_%%%name%%%'', @level2type=N''COLUMN'',@level2name=N''COD_MU''
;

EXEC sys.sp_addextendedproperty @name=N''MS_Description'', @value=N''Code System Notes'' , @level0type=N''SCHEMA'',@level0name=N''%%%schema%%%'', @level1type=N''TABLE'',@level1name=N''UCOD_%%%name%%%'', @level2type=N''COLUMN'',@level2name=N''COD_SNotes''
;

EXEC sys.sp_addextendedproperty @name=N''MS_Description'', @value=N''System Codes - %%%mean%%%'' , @level0type=N''SCHEMA'',@level0name=N''%%%schema%%%'', @level1type=N''TABLE'',@level1name=N''UCOD_%%%name%%%''
;


',NULL,NULL) WHERE [SCRIPT_NAME]=N'CREATE_UCOD'
EXEC(N'INSERT INTO [jsharmony].[SCRIPT] ([SCRIPT_NAME], [SCRIPT_TXT]) VALUES (N''CREATE_UCOD2'', N''CREATE TABLE [%%%schema%%%].[UCOD2_%%%name%%%](
  [UCOD2_ID] [bigint] IDENTITY(1,1) NOT NULL,
  [CODSEQ] [smallint] NULL,
  [CODEVAL1] [nvarchar](8) NOT NULL,
  [CODEVAL2] [nvarchar](8) NOT NULL,
  [CODETXT] [nvarchar](50) NULL,
  [CODECODE] [nvarchar](50) NULL,
  [CODEATTRIB] [nvarchar](50) NULL,
  [CODETDT] [datetime2](7) NULL,
  [CODETCM] [nvarchar](50) NULL,
  [COD_ETstmp] [datetime2](7) NULL,
  [COD_EU] [nvarchar](20) NULL,
  [COD_MTstmp] [datetime2](7) NULL,
  [COD_MU] [nvarchar](20) NULL,
  [COD_SNotes] [nvarchar](255) NULL,
  [COD_Notes] [nvarchar](255) NULL,
 CONSTRAINT [PK_UCOD2_%%%name%%%] PRIMARY KEY CLUSTERED 
(
  [UCOD2_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UNQ_UCOD2_%%%name%%%] UNIQUE NONCLUSTERED 
(
  [CODEVAL1] ASC,
  [CODEVAL2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

;

ALTER TABLE [%%%schema%%%].[UCOD2_%%%name%%%] ADD  CONSTRAINT [DF_UCOD2_%%%name%%%_COD_EDt]  DEFAULT ([jsharmony].[myNOW]()) FOR [COD_ETstmp]
;

ALTER TABLE [%%%schema%%%].[UCOD2_%%%name%%%] ADD  CONSTRAINT [DF_UCOD2_%%%name%%%_COD_EUser]  DEFAULT ([jsharmony].[myCUSER]()) FOR [COD_EU]
;

ALTER TABLE [%%%schema%%%].[UCOD2_%%%name%%%] ADD  CONSTRAINT [DF_UCOD2_%%%name%%%_COD_MDt]  DEFAULT ([jsharmony].[myNOW]()) FOR [COD_MTstmp]
;

ALTER TABLE [%%%schema%%%].[UCOD2_%%%name%%%] ADD  CONSTRAINT [DF_UCOD2_%%%name%%%_COD_MUser]  DEFAULT ([jsharmony].[myCUSER]()) FOR [COD_MU]
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value ID'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''UCOD2_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''UCOD2_ID''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value Sequence'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''UCOD2_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''CODSEQ''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''UCOD2_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''CODEVAL1''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value Description'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''UCOD2_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''CODETXT''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Additional Code'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''UCOD2_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''CODECODE''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value Termination Date'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''UCOD2_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''CODETDT''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value Termination Comment'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''UCOD2_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''CODETCM''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value Entry Timestamp'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''UCOD2_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''COD_ETstmp''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value Entry User'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%%%schema%%%'''', @level1type=N''''TABLE'''',@level1name=N''''UCOD2_%%%name%%%'''', @level2type=N''''COLUMN'''',@level2name=N''''COD_EU''''
;

EXEC sys.sp_addextendedproperty @name=N''''MS_Description'''', @value=N''''Code Value Last Modification Timestamp'''' , @level0type=N''''SCHEMA'''',@level0name=N''''%'')')
UPDATE [jsharmony].[SCRIPT] SET [SCRIPT_TXT].WRITE(N'%%schema%%%'', @level1type=N''TABLE'',@level1name=N''UCOD2_%%%name%%%'', @level2type=N''COLUMN'',@level2name=N''COD_MTstmp''
;

EXEC sys.sp_addextendedproperty @name=N''MS_Description'', @value=N''Code Value Last Modification User'' , @level0type=N''SCHEMA'',@level0name=N''%%%schema%%%'', @level1type=N''TABLE'',@level1name=N''UCOD2_%%%name%%%'', @level2type=N''COLUMN'',@level2name=N''COD_MU''
;

EXEC sys.sp_addextendedproperty @name=N''MS_Description'', @value=N''Code System Notes'' , @level0type=N''SCHEMA'',@level0name=N''%%%schema%%%'', @level1type=N''TABLE'',@level1name=N''UCOD2_%%%name%%%'', @level2type=N''COLUMN'',@level2name=N''COD_SNotes''
;

EXEC sys.sp_addextendedproperty @name=N''MS_Description'', @value=N''System Codes 2 - %%%mean%%%'' , @level0type=N''SCHEMA'',@level0name=N''%%%schema%%%'', @level1type=N''TABLE'',@level1name=N''UCOD2_%%%name%%%''
;


',NULL,NULL) WHERE [SCRIPT_NAME]=N'CREATE_UCOD2'
SET IDENTITY_INSERT [jsharmony].[UCOD2_H] ON
INSERT INTO [jsharmony].[UCOD2_H] ([UCOD2_H_ID], [CODENAME], [CODEMEAN], [CODECODEMEAN], [CODEATTRIBMEAN], [COD_H_ETstmp], [COD_H_EU], [COD_H_MTstmp], [COD_H_MU], [COD_SNotes], [CODESCHEMA]) VALUES (1, N'COUNTRY_STATE', N'Country - State', NULL, NULL, '20170625 11:05:30.2774588', N'S200010', '20170625 11:05:30.2774588', N'S200010', NULL, N'jsharmony')
SET IDENTITY_INSERT [jsharmony].[UCOD2_H] OFF
INSERT INTO [jsharmony].[GCOD2_H] ([CODENAME], [CODEMEAN], [CODECODEMEAN], [CODEATTRIBMEAN], [COD_H_ETstmp], [COD_H_EU], [COD_H_MTstmp], [COD_H_MU], [COD_SNotes], [CODESCHEMA]) VALUES (N'D_SCOPE_D_CTGR', N'Scope - Documents', NULL, NULL, '20170619 16:19:42.8761883', N'S200010', '20170619 16:19:42.8761883', N'S200010', NULL, N'jsharmony')
SET IDENTITY_INSERT [jsharmony].[UCOD_H] ON
INSERT INTO [jsharmony].[UCOD_H] ([UCOD_H_ID], [CODENAME], [CODEMEAN], [CODECODEMEAN], [CODEATTRIBMEAN], [COD_H_CODECODE_DESC], [COD_H_ETstmp], [COD_H_EU], [COD_H_MTstmp], [COD_H_MU], [COD_SNotes], [CODESCHEMA]) VALUES (46, N'AC', N'ACTIVE-CLOSED', NULL, NULL, NULL, '20170625 11:04:41.0172257', N'S200010', '20170625 11:04:41.0182259', N'S200010', NULL, N'jsharmony')
INSERT INTO [jsharmony].[UCOD_H] ([UCOD_H_ID], [CODENAME], [CODEMEAN], [CODECODEMEAN], [CODEATTRIBMEAN], [COD_H_CODECODE_DESC], [COD_H_ETstmp], [COD_H_EU], [COD_H_MTstmp], [COD_H_MU], [COD_SNotes], [CODESCHEMA]) VALUES (47, N'AC1', N'ACTIVE-CLOSED 1 Character', NULL, NULL, NULL, '20170625 15:58:52.0776720', N'Microsoft SQL Server', '20170625 15:58:52.0776720', N'Microsoft SQL Server', NULL, N'jsharmony')
INSERT INTO [jsharmony].[UCOD_H] ([UCOD_H_ID], [CODENAME], [CODEMEAN], [CODECODEMEAN], [CODEATTRIBMEAN], [COD_H_CODECODE_DESC], [COD_H_ETstmp], [COD_H_EU], [COD_H_MTstmp], [COD_H_MU], [COD_SNotes], [CODESCHEMA]) VALUES (48, N'AHC', N'ACTIVE-HOLD_CLOSED', NULL, NULL, NULL, '20170625 15:58:52.0776720', N'Microsoft SQL Server', '20170625 15:58:52.0786425', N'Microsoft SQL Server', NULL, N'jsharmony')
INSERT INTO [jsharmony].[UCOD_H] ([UCOD_H_ID], [CODENAME], [CODEMEAN], [CODECODEMEAN], [CODEATTRIBMEAN], [COD_H_CODECODE_DESC], [COD_H_ETstmp], [COD_H_EU], [COD_H_MTstmp], [COD_H_MU], [COD_SNotes], [CODESCHEMA]) VALUES (49, N'COUNTRY', N'Country', NULL, NULL, NULL, '20170625 15:58:52.0786425', N'Microsoft SQL Server', '20170625 15:58:52.0786425', N'Microsoft SQL Server', NULL, N'jsharmony')
INSERT INTO [jsharmony].[UCOD_H] ([UCOD_H_ID], [CODENAME], [CODEMEAN], [CODECODEMEAN], [CODEATTRIBMEAN], [COD_H_CODECODE_DESC], [COD_H_ETstmp], [COD_H_EU], [COD_H_MTstmp], [COD_H_MU], [COD_SNotes], [CODESCHEMA]) VALUES (50, N'D_SCOPE', N'Document Scope', N'Client User Y/N', NULL, NULL, '20170625 15:58:52.0786425', N'Microsoft SQL Server', '20170625 15:58:52.0786425', N'Microsoft SQL Server', NULL, N'jsharmony')
INSERT INTO [jsharmony].[UCOD_H] ([UCOD_H_ID], [CODENAME], [CODEMEAN], [CODECODEMEAN], [CODEATTRIBMEAN], [COD_H_CODECODE_DESC], [COD_H_ETstmp], [COD_H_EU], [COD_H_MTstmp], [COD_H_MU], [COD_SNotes], [CODESCHEMA]) VALUES (51, N'N_SCOPE', N'Note Scope', NULL, NULL, NULL, '20170625 15:58:52.0796714', N'Microsoft SQL Server', '20170625 15:58:52.0796714', N'Microsoft SQL Server', NULL, N'jsharmony')
INSERT INTO [jsharmony].[UCOD_H] ([UCOD_H_ID], [CODENAME], [CODEMEAN], [CODECODEMEAN], [CODEATTRIBMEAN], [COD_H_CODECODE_DESC], [COD_H_ETstmp], [COD_H_EU], [COD_H_MTstmp], [COD_H_MU], [COD_SNotes], [CODESCHEMA]) VALUES (52, N'N_TYPE', N'Note Type', NULL, NULL, NULL, '20170625 15:58:52.0796714', N'Microsoft SQL Server', '20170625 15:58:52.0796714', N'Microsoft SQL Server', NULL, N'jsharmony')
INSERT INTO [jsharmony].[UCOD_H] ([UCOD_H_ID], [CODENAME], [CODEMEAN], [CODECODEMEAN], [CODEATTRIBMEAN], [COD_H_CODECODE_DESC], [COD_H_ETstmp], [COD_H_EU], [COD_H_MTstmp], [COD_H_MU], [COD_SNotes], [CODESCHEMA]) VALUES (53, N'PPD_TYPE', N'Parameter Type', NULL, NULL, NULL, '20170625 15:58:52.0796714', N'Microsoft SQL Server', '20170625 15:58:52.0796714', N'Microsoft SQL Server', NULL, N'jsharmony')
INSERT INTO [jsharmony].[UCOD_H] ([UCOD_H_ID], [CODENAME], [CODEMEAN], [CODECODEMEAN], [CODEATTRIBMEAN], [COD_H_CODECODE_DESC], [COD_H_ETstmp], [COD_H_EU], [COD_H_MTstmp], [COD_H_MU], [COD_SNotes], [CODESCHEMA]) VALUES (54, N'RQST_ATYPE', N'Request Action Type', NULL, NULL, NULL, '20170625 15:58:52.0806721', N'Microsoft SQL Server', '20170625 15:58:52.0806721', N'Microsoft SQL Server', NULL, N'jsharmony')
INSERT INTO [jsharmony].[UCOD_H] ([UCOD_H_ID], [CODENAME], [CODEMEAN], [CODECODEMEAN], [CODEATTRIBMEAN], [COD_H_CODECODE_DESC], [COD_H_ETstmp], [COD_H_EU], [COD_H_MTstmp], [COD_H_MU], [COD_SNotes], [CODESCHEMA]) VALUES (55, N'RQST_SOURCE', N'Request Source', NULL, NULL, NULL, '20170625 15:58:52.0806721', N'Microsoft SQL Server', '20170625 15:58:52.0806721', N'Microsoft SQL Server', NULL, N'jsharmony')
INSERT INTO [jsharmony].[UCOD_H] ([UCOD_H_ID], [CODENAME], [CODEMEAN], [CODECODEMEAN], [CODEATTRIBMEAN], [COD_H_CODECODE_DESC], [COD_H_ETstmp], [COD_H_EU], [COD_H_MTstmp], [COD_H_MU], [COD_SNotes], [CODESCHEMA]) VALUES (56, N'TXT_TYPE', N'Text Type', NULL, NULL, NULL, '20170625 15:58:52.0806721', N'Microsoft SQL Server', '20170625 15:58:52.0816740', N'Microsoft SQL Server', NULL, N'jsharmony')
INSERT INTO [jsharmony].[UCOD_H] ([UCOD_H_ID], [CODENAME], [CODEMEAN], [CODECODEMEAN], [CODEATTRIBMEAN], [COD_H_CODECODE_DESC], [COD_H_ETstmp], [COD_H_EU], [COD_H_MTstmp], [COD_H_MU], [COD_SNotes], [CODESCHEMA]) VALUES (58, N'V_STS', N'Version Status', NULL, NULL, NULL, '20170710 17:45:42.1952267', N'Microsoft SQL Server', '20170710 17:45:42.1952267', N'Microsoft SQL Server', NULL, N'jsharmony')
SET IDENTITY_INSERT [jsharmony].[UCOD_H] OFF
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (1)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (2)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (3)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (4)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (5)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (6)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (7)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (8)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (9)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (10)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (11)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (12)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (13)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (14)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (15)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (16)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (17)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (18)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (19)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (20)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (21)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (22)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (23)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (24)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (25)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (26)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (27)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (28)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (29)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (30)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (31)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (32)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (33)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (34)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (35)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (36)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (37)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (38)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (39)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (40)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (41)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (42)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (43)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (44)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (45)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (46)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (47)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (48)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (49)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (50)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (51)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (52)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (53)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (54)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (55)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (56)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (57)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (58)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (59)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (60)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (61)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (62)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (63)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (64)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (65)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (66)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (67)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (68)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (69)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (70)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (71)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (72)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (73)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (74)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (75)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (76)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (77)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (78)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (79)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (80)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (81)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (82)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (83)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (84)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (85)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (86)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (87)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (88)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (89)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (90)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (91)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (92)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (93)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (94)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (95)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (96)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (97)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (98)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (99)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (100)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (101)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (102)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (103)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (104)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (105)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (106)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (107)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (108)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (109)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (110)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (111)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (112)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (113)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (114)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (115)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (116)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (117)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (118)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (119)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (120)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (121)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (122)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (123)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (124)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (125)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (126)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (127)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (128)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (129)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (130)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (131)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (132)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (133)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (134)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (135)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (136)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (137)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (138)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (139)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (140)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (141)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (142)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (143)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (144)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (145)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (146)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (147)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (148)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (149)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (150)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (151)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (152)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (153)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (154)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (155)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (156)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (157)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (158)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (159)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (160)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (161)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (162)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (163)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (164)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (165)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (166)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (167)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (168)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (169)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (170)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (171)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (172)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (173)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (174)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (175)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (176)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (177)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (178)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (179)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (180)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (181)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (182)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (183)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (184)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (185)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (186)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (187)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (188)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (189)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (190)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (191)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (192)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (193)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (194)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (195)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (196)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (197)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (198)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (199)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (200)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (201)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (202)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (203)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (204)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (205)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (206)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (207)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (208)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (209)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (210)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (211)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (212)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (213)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (214)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (215)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (216)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (217)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (218)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (219)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (220)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (221)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (222)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (223)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (224)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (225)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (226)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (227)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (228)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (229)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (230)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (231)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (232)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (233)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (234)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (235)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (236)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (237)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (238)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (239)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (240)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (241)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (242)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (243)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (244)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (245)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (246)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (247)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (248)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (249)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (250)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (251)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (252)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (253)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (254)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (255)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (256)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (257)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (258)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (259)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (260)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (261)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (262)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (263)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (264)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (265)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (266)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (267)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (268)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (269)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (270)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (271)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (272)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (273)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (274)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (275)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (276)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (277)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (278)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (279)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (280)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (281)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (282)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (283)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (284)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (285)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (286)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (287)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (288)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (289)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (290)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (291)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (292)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (293)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (294)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (295)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (296)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (297)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (298)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (299)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (300)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (301)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (302)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (303)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (304)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (305)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (306)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (307)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (308)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (309)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (310)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (311)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (312)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (313)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (314)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (315)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (316)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (317)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (318)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (319)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (320)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (321)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (322)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (323)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (324)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (325)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (326)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (327)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (328)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (329)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (330)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (331)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (332)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (333)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (334)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (335)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (336)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (337)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (338)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (339)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (340)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (341)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (342)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (343)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (344)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (345)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (346)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (347)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (348)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (349)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (350)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (351)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (352)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (353)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (354)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (355)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (356)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (357)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (358)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (359)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (360)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (361)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (362)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (363)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (364)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (365)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (366)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (367)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (368)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (369)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (370)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (371)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (372)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (373)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (374)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (375)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (376)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (377)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (378)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (379)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (380)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (381)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (382)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (383)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (384)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (385)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (386)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (387)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (388)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (389)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (390)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (391)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (392)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (393)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (394)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (395)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (396)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (397)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (398)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (399)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (400)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (401)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (402)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (403)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (404)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (405)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (406)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (407)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (408)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (409)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (410)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (411)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (412)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (413)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (414)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (415)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (416)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (417)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (418)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (419)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (420)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (421)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (422)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (423)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (424)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (425)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (426)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (427)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (428)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (429)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (430)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (431)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (432)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (433)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (434)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (435)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (436)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (437)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (438)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (439)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (440)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (441)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (442)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (443)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (444)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (445)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (446)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (447)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (448)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (449)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (450)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (451)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (452)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (453)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (454)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (455)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (456)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (457)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (458)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (459)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (460)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (461)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (462)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (463)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (464)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (465)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (466)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (467)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (468)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (469)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (470)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (471)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (472)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (473)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (474)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (475)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (476)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (477)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (478)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (479)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (480)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (481)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (482)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (483)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (484)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (485)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (486)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (487)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (488)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (489)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (490)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (491)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (492)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (493)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (494)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (495)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (496)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (497)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (498)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (499)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (500)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (501)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (502)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (503)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (504)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (505)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (506)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (507)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (508)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (509)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (510)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (511)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (512)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (513)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (514)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (515)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (516)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (517)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (518)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (519)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (520)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (521)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (522)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (523)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (524)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (525)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (526)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (527)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (528)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (529)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (530)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (531)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (532)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (533)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (534)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (535)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (536)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (537)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (538)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (539)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (540)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (541)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (542)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (543)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (544)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (545)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (546)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (547)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (548)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (549)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (550)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (551)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (552)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (553)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (554)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (555)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (556)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (557)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (558)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (559)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (560)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (561)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (562)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (563)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (564)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (565)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (566)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (567)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (568)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (569)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (570)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (571)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (572)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (573)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (574)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (575)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (576)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (577)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (578)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (579)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (580)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (581)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (582)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (583)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (584)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (585)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (586)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (587)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (588)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (589)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (590)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (591)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (592)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (593)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (594)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (595)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (596)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (597)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (598)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (599)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (600)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (601)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (602)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (603)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (604)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (605)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (606)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (607)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (608)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (609)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (610)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (611)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (612)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (613)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (614)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (615)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (616)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (617)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (618)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (619)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (620)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (621)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (622)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (623)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (624)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (625)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (626)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (627)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (628)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (629)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (630)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (631)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (632)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (633)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (634)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (635)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (636)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (637)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (638)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (639)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (640)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (641)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (642)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (643)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (644)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (645)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (646)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (647)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (648)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (649)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (650)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (651)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (652)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (653)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (654)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (655)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (656)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (657)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (658)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (659)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (660)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (661)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (662)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (663)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (664)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (665)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (666)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (667)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (668)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (669)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (670)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (671)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (672)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (673)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (674)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (675)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (676)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (677)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (678)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (679)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (680)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (681)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (682)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (683)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (684)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (685)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (686)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (687)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (688)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (689)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (690)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (691)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (692)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (693)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (694)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (695)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (696)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (697)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (698)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (699)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (700)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (701)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (702)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (703)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (704)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (705)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (706)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (707)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (708)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (709)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (710)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (711)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (712)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (713)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (714)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (715)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (716)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (717)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (718)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (719)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (720)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (721)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (722)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (723)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (724)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (725)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (726)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (727)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (728)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (729)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (730)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (731)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (732)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (733)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (734)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (735)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (736)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (737)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (738)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (739)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (740)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (741)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (742)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (743)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (744)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (745)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (746)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (747)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (748)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (749)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (750)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (751)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (752)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (753)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (754)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (755)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (756)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (757)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (758)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (759)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (760)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (761)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (762)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (763)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (764)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (765)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (766)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (767)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (768)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (769)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (770)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (771)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (772)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (773)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (774)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (775)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (776)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (777)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (778)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (779)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (780)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (781)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (782)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (783)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (784)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (785)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (786)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (787)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (788)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (789)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (790)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (791)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (792)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (793)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (794)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (795)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (796)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (797)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (798)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (799)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (800)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (801)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (802)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (803)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (804)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (805)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (806)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (807)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (808)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (809)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (810)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (811)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (812)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (813)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (814)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (815)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (816)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (817)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (818)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (819)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (820)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (821)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (822)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (823)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (824)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (825)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (826)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (827)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (828)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (829)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (830)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (831)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (832)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (833)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (834)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (835)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (836)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (837)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (838)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (839)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (840)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (841)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (842)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (843)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (844)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (845)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (846)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (847)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (848)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (849)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (850)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (851)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (852)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (853)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (854)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (855)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (856)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (857)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (858)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (859)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (860)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (861)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (862)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (863)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (864)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (865)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (866)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (867)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (868)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (869)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (870)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (871)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (872)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (873)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (874)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (875)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (876)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (877)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (878)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (879)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (880)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (881)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (882)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (883)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (884)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (885)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (886)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (887)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (888)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (889)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (890)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (891)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (892)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (893)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (894)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (895)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (896)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (897)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (898)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (899)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (900)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (901)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (902)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (903)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (904)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (905)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (906)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (907)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (908)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (909)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (910)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (911)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (912)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (913)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (914)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (915)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (916)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (917)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (918)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (919)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (920)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (921)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (922)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (923)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (924)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (925)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (926)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (927)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (928)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (929)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (930)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (931)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (932)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (933)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (934)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (935)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (936)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (937)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (938)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (939)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (940)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (941)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (942)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (943)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (944)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (945)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (946)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (947)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (948)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (949)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (950)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (951)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (952)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (953)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (954)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (955)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (956)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (957)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (958)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (959)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (960)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (961)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (962)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (963)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (964)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (965)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (966)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (967)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (968)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (969)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (970)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (971)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (972)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (973)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (974)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (975)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (976)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (977)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (978)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (979)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (980)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (981)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (982)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (983)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (984)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (985)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (986)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (987)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (988)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (989)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (990)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (991)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (992)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (993)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (994)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (995)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (996)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (997)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (998)
INSERT INTO [jsharmony].[NUMBERS] ([N]) VALUES (999)
SET IDENTITY_INSERT [jsharmony].[UCOD_AC] ON
INSERT INTO [jsharmony].[UCOD_AC] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'ACTIVE', 1, 1, N'Active', NULL, NULL, NULL, '20170508 12:46:53.0923387', N'Microsoft SQL Server', '20170508 12:46:53.0923387', N'Microsoft SQL Server', NULL, NULL, NULL)
INSERT INTO [jsharmony].[UCOD_AC] ([CODEVAL], [UCOD_ID], [CODSEQ], [CODETXT], [CODECODE], [CODETDT], [CODETCM], [COD_ETstmp], [COD_EU], [COD_MTstmp], [COD_MU], [COD_SNotes], [COD_Notes], [CODEATTRIB]) VALUES (N'CLOSED', 2, 3, N'Closed', NULL, NULL, NULL, '20170508 12:46:53.0933391', N'Microsoft SQL Server', '20170508 12:46:53.0933391', N'Microsoft SQL Server', NULL, NULL, NULL)
SET IDENTITY_INSERT [jsharmony].[UCOD_AC] OFF
ALTER TABLE [jsharmony].[H]
    ADD CONSTRAINT [FK_H_HP] FOREIGN KEY ([HP_CODE]) REFERENCES [jsharmony].[HP] ([HP_CODE])
ALTER TABLE [jsharmony].[GPP]
    ADD CONSTRAINT [FK_GPP_PPD] FOREIGN KEY ([GPP_PROCESS], [GPP_ATTRIB]) REFERENCES [jsharmony].[PPD] ([PPD_PROCESS], [PPD_ATTRIB])
ALTER TABLE [jsharmony].[TXT]
    ADD CONSTRAINT [FK_TXT_UCOD_TXT_TYPE] FOREIGN KEY ([TXT_TYPE]) REFERENCES [jsharmony].[UCOD_TXT_TYPE] ([CODEVAL])
ALTER TABLE [jsharmony].[V]
    ADD CONSTRAINT [FK_V_UCOD_V_STS] FOREIGN KEY ([V_STS]) REFERENCES [jsharmony].[UCOD_V_STS] ([CODEVAL])
ALTER TABLE [jsharmony].[SRM]
    ADD CONSTRAINT [FK_SRM_SM] FOREIGN KEY ([SM_ID]) REFERENCES [jsharmony].[SM] ([SM_ID]) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE [jsharmony].[SRM]
    ADD CONSTRAINT [FK_SRM_SR_SR_NAME] FOREIGN KEY ([SR_NAME]) REFERENCES [jsharmony].[SR] ([SR_Name]) ON DELETE CASCADE
ALTER TABLE [jsharmony].[SR]
    ADD CONSTRAINT [FK_SR_UCOD_AHC] FOREIGN KEY ([SR_STS]) REFERENCES [jsharmony].[UCOD_AHC] ([CODEVAL])
ALTER TABLE [jsharmony].[XPP]
    ADD CONSTRAINT [FK_XPP_PPD] FOREIGN KEY ([XPP_PROCESS], [XPP_ATTRIB]) REFERENCES [jsharmony].[PPD] ([PPD_PROCESS], [PPD_ATTRIB])
ALTER TABLE [jsharmony].[CRM]
    ADD CONSTRAINT [FK_CRM_CR_CR_NAME] FOREIGN KEY ([CR_NAME]) REFERENCES [jsharmony].[CR] ([CR_Name]) ON DELETE CASCADE
ALTER TABLE [jsharmony].[CRM]
    ADD CONSTRAINT [FK_CRM_SM] FOREIGN KEY ([SM_ID]) REFERENCES [jsharmony].[SM] ([SM_ID]) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE [jsharmony].[CR]
    ADD CONSTRAINT [FK_CR_UCOD_AHC] FOREIGN KEY ([CR_STS]) REFERENCES [jsharmony].[UCOD_AHC] ([CODEVAL])
ALTER TABLE [jsharmony].[PPP]
    ADD CONSTRAINT [FK_PPP_PE] FOREIGN KEY ([PE_ID]) REFERENCES [jsharmony].[PE] ([PE_ID]) ON DELETE CASCADE
ALTER TABLE [jsharmony].[PPP]
    ADD CONSTRAINT [FK_PPP_PPD] FOREIGN KEY ([PPP_PROCESS], [PPP_ATTRIB]) REFERENCES [jsharmony].[PPD] ([PPD_PROCESS], [PPD_ATTRIB]) ON DELETE CASCADE
ALTER TABLE [jsharmony].[PPD]
    ADD CONSTRAINT [FK_PPD_UCOD_PPD_TYPE] FOREIGN KEY ([PPD_TYPE]) REFERENCES [jsharmony].[UCOD_PPD_TYPE] ([CODEVAL])
ALTER TABLE [jsharmony].[SF]
    ADD CONSTRAINT [FK_SF_UCOD_AHC] FOREIGN KEY ([SF_STS]) REFERENCES [jsharmony].[UCOD_AHC] ([CODEVAL])
ALTER TABLE [jsharmony].[SM]
    ADD CONSTRAINT [FK_SM_SM] FOREIGN KEY ([SM_ID_Parent]) REFERENCES [jsharmony].[SM] ([SM_ID])
ALTER TABLE [jsharmony].[SM]
    ADD CONSTRAINT [FK_SM_UCOD_AHC] FOREIGN KEY ([SM_STS]) REFERENCES [jsharmony].[UCOD_AHC] ([CODEVAL])

