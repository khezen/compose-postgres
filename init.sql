create table sources(
	 				id SERIAL PRIMARY KEY,
                    name varchar NOT NULL, 
                    description text, 
                    source_type varchar(50),
                    endpoint varchar(200),
                    is_deleted bool default(false),
                    is_active bool default(true),
                    created timestamp without time zone default (now() at time zone 'utc')
                    );


INSERT INTO public.sources(
	name, source_uuid, description)
	VALUES ('Test', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'Blah blah blah')