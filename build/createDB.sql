DROP TABLE public.yearbookorders;

CREATE TABLE public.yearbookorders
(
    id integer NOT NULL DEFAULT nextval('yearbookorders_id_seq'::regclass),
    name character varying COLLATE pg_catalog."default" NOT NULL,
    grade character varying(3) COLLATE pg_catalog."default" NOT NULL,
    personalize boolean NOT NULL DEFAULT false,
    personalize_name character varying COLLATE pg_catalog."default",
    CONSTRAINT yearbookorders_pkey PRIMARY KEY (id)
);