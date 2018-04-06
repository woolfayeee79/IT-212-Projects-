# SQLKids1 Example
# Create an SQL table using hardcoded Ruby statements.

require 'sqlite3'

# Create new database.
db = SQLite3::Database.new('kids1.db')
# db.results_as_hash = true

# Create kids table.
db.execute %Q{
create table if not exists kids(
  name varchar(15),
  gender varchar(1),
  age integer);
}

# Populate kids table.
db.execute %Q{ 
  insert into kids values('Alice', 'F', 11); }
db.execute %Q{ 
  insert into kids values('Chad', 'M', 12); }
db.execute %Q{ 
  insert into kids values('Sally', 'F', 9); }
db.execute %Q{ 
  insert into kids values('Jason', 'M', 10); }

# Query kids table.
kids = db.execute %Q{
  select * from kids;
}
print kids, "\n"

db.close