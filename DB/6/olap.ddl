-- Generated by Oracle SQL Developer Data Modeler 21.2.0.183.1957
--   at:        2021-12-12 18:39:02 MSK
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE dim_date
(
    date_id   INTEGER           NOT NULL,
    date_name VARCHAR2(10 CHAR) NOT NULL,
    "date"    DATE              NOT NULL,
    "level"   INTEGER           NOT NULL
);

ALTER TABLE dim_date ADD CONSTRAINT dim_date_pk PRIMARY KEY ( date_id );

CREATE TABLE dim_tag
(
    tag_id   INTEGER           NOT NULL,
    tag_name VARCHAR2(50 CHAR) NOT NULL
);

ALTER TABLE dim_tag ADD CONSTRAINT dim_tags_pk PRIMARY KEY ( tag_id );

CREATE TABLE fact_questions
(
    question_id      INTEGER NOT NULL,
    score            INTEGER NOT NULL,
    view_count       INTEGER NOT NULL,
    dim_date_id      INTEGER NULL,
    dim_tag_tag_1_id INTEGER NULL,
    dim_tag_tag_2_id INTEGER NULL,
    dim_tag_tag_3_id INTEGER NULL,
    dim_tag_tag_4_id INTEGER NULL,
    dim_tag_tag_5_id INTEGER NULL
);

ALTER TABLE fact_questions ADD CONSTRAINT fact_questions_pk PRIMARY KEY ( question_id );

ALTER TABLE fact_questions
    ADD CONSTRAINT fact_questions_dim_date_fk FOREIGN KEY ( dim_date_id )
        REFERENCES dim_date ( date_id );

ALTER TABLE fact_questions
    ADD CONSTRAINT fact_questions_dim_tag_1_fk FOREIGN KEY ( dim_tag_tag_1_id )
        REFERENCES dim_tag ( tag_id );

ALTER TABLE fact_questions
    ADD CONSTRAINT fact_questions_dim_tag_2_fk FOREIGN KEY ( dim_tag_tag_2_id )
        REFERENCES dim_tag ( tag_id );

ALTER TABLE fact_questions
    ADD CONSTRAINT fact_questions_dim_tag_3_fk FOREIGN KEY ( dim_tag_tag_3_id )
        REFERENCES dim_tag ( tag_id );

ALTER TABLE fact_questions
    ADD CONSTRAINT fact_questions_dim_tag_4_fk FOREIGN KEY ( dim_tag_tag_4_id )
        REFERENCES dim_tag ( tag_id );

ALTER TABLE fact_questions
    ADD CONSTRAINT fact_questions_dim_tag_5_fk FOREIGN KEY ( dim_tag_tag_5_id )
        REFERENCES dim_tag ( tag_id );

-- Oracle SQL Developer Data Modeler Summary Report:
--
-- CREATE TABLE                             3
-- CREATE INDEX                             0
-- ALTER TABLE                              9
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
--
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
--
-- REDACTION POLICY                         0
--
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
--
-- ERRORS                                   0
-- WARNINGS                                 0
