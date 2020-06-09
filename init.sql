-- Create tables
create table source_types(
	 				source_type_id SERIAL PRIMARY KEY,
                    name varchar NOT NULL, 
                    is_deleted bool default(false),
                    is_active bool default(true),
                    created timestamp without time zone default (now() at time zone 'utc')
                    );


create table sources(
	 				sourceId SERIAL PRIMARY KEY,
                    name varchar NOT NULL, 
                    description text, 
                    source_type_id INT,
                    endpoint varchar,
                    is_deleted bool default(false),
                    is_active bool default(true),
                    created timestamp without time zone default (now() at time zone 'utc')
                    );


-- Add Foreign Keys

ALTER TABLE sources
    ADD CONSTRAINT fk_sources_source_types FOREIGN KEY (source_type_id) REFERENCES source_types (source_type_id);

-- Insert source_types data

INSERT INTO public.source_types( name) VALUES ('CSV');
INSERT INTO public.source_types( name) VALUES ('SQL');
INSERT INTO public.source_types( name) VALUES ('JSON');

-- Insert sources data

INSERT INTO public.sources(
	name, description, source_type_id)
	VALUES ('Postgres', 'Postgres connection', 2)

INSERT INTO public.sources(
	name, description, source_type_id)
	VALUES ('Schema', 'Schema json file', 3)