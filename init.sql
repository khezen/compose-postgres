create table sources(
	 				id SERIAL PRIMARY KEY,
                    name varchar NOT NULL, 
                    source_uuid uuid, 
                    description text, 
                    is_deleted bool,
                    created timestamp without time zone default (now() at time zone 'utc')
                    );

alter table public.sources alter column is_deleted set default false;

INSERT INTO public.sources(
	name, source_uuid, description)
	VALUES ('Test', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'Blah blah blah')