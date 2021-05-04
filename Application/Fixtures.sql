

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at) VALUES ('68dd1734-0e97-4a22-b846-175da1fac556', 'second post', 'huhuhu', '2021-05-03 16:57:53.729962+09');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('c4be3c90-e264-4fe3-a160-67d4a4c9f8f4', 'First post', 'hihihi', '2021-05-03 16:57:53.731046+09');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('8d5e2844-8fdd-45fb-8007-121bcba91512', 'Third post', 'kakaka', '2021-05-03 18:23:20.875838+09');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('21c656d7-43c0-46a8-a902-9b654bd52933', 'Fourth post', 'aaaa', '2021-05-03 18:24:36.387667+09');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, author, body, post_id) VALUES ('bdbddc1d-a41a-498f-90b7-d04f3035250e', 'mac', 'test', '21c656d7-43c0-46a8-a902-9b654bd52933');
INSERT INTO public.comments (id, author, body, post_id) VALUES ('688ddf4e-62b9-4661-bc6a-5c0c97b57a0d', 'test', 'test', '21c656d7-43c0-46a8-a902-9b654bd52933');
INSERT INTO public.comments (id, author, body, post_id) VALUES ('b37dcb10-586f-422b-801f-8009a91aeec2', 'masaki', 'testtest
', '21c656d7-43c0-46a8-a902-9b654bd52933');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


