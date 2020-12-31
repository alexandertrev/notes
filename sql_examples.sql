# Function example #
####################
CREATE OR REPLACE FUNCTION update_queries() RETURNS trigger AS 
$$
  DECLARE r_description text;
  BEGIN
    SELECT "description" into r_description
    FROM "queries"
    WHERE id = new.id;

    IF NEW.description <> r_description
    THEN
      RAISE EXCEPTION 'Cannot change description';
    END IF;
    RETURN NEW;
  END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER verify_query_update
BEFORE UPDATE ON queries 
FOR EACH ROW EXECUTE PROCEDURE update_queries();
 