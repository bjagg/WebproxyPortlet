CREATE TABLE WP_CACHE_STORE (
     CACHE_KEY      VARCHAR2(2000),
     OBJECT_TYPE    CHAR(1),
     CACHE_OBJECT   BLOB,
     CONSTRAINT WP_CACHE_STORE_PK PRIMARY KEY (CACHE_KEY, OBJECT_TYPE)
 );
 
CREATE TABLE WP_STATE_STORE (
     STATE_KEY    VARCHAR2(2000),
     STATE  BLOB,
     CONSTRAINT WP_STATE_STORE_PK PRIMARY KEY (STATE_KEY)
 );

CREATE TABLE WEB_PROXY_STATE
(
  STATE_KEY  VARCHAR2(255 CHAR)     NOT NULL,
  CONSTRAINT WEB_PROXY_STATE PRIMARY KEY (STATE_KEY)
);


CREATE TABLE WEB_PROXY_STATE_COOKIE
(
  STATE_ID         VARCHAR2(255 CHAR)           NOT NULL,
  COOKIE_COMMENT   VARCHAR2(255 CHAR),
  DOMAIN           VARCHAR2(255 CHAR),
  EXPIRY_DATE      TIMESTAMP(6),
  COOKIE_NAME      VARCHAR2(255 CHAR),
  PATH             VARCHAR2(255 CHAR),
  SECURE           NUMBER(1),
  COOKIE_VALUE     VARCHAR2(2048 CHAR),
  VERSION          NUMBER(10),
  STATE_COOKIE_ID  NUMBER(19),
  CONSTRAINT WEB_PROXY_STATE_COOKIE PRIMARY KEY (STATE_COOKIE_ID)
);



 