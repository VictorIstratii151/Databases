/*ALTER TABLE pc_uri
drop constraint df_constraint;
ALTER TABLE pc_uri
add constraint df_constraint DEFAULT 10 for ram;

ALTER TABLE pc_uri
drop constraint df_constraint;
ALTER TABLE pc_uri
add constraint df_constraint DEFAULT 1 for hd;

ALTER TABLE pc_uri
drop constraint df_constraint;
ALTER TABLE pc_uri
add constraint df_constraint DEFAULT '1' for cd;*/


ALTER TABLE dbo.pc_uri ADD DEFAULT 1 FOR hd;

ALTER TABLE dbo.pc_uri ADD DEFAULT 1 FOR ram;

ALTER TABLE dbo.pc_uri ADD DEFAULT 'x1' FOR cd;