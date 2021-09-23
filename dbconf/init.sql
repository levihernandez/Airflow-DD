create user datadog with password 'datadog';
grant pg_monitor to datadog;
grant SELECT ON pg_stat_database to datadog;

CREATE EXTENSION adminpack;
CREATE OR REPLACE FUNCTION ddlogf() RETURNS TRIGGER AS $my_table$
   BEGIN
      PERFORM pg_catalog.pg_file_write('/var/log/postgresql/audit_admin.log', row_to_json(NEW, false)::text || chr(10), true);
      RETURN NEW;
   END;
$my_table$ LANGUAGE plpgsql;
CREATE FUNCTION;
CREATE TRIGGER ddlogt AFTER INSERT ON log
FOR EACH ROW EXECUTE PROCEDURE ddlogf();