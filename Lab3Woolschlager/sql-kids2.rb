# SQLKids2 Example
# Create an SQL table using data read from a .csv file.

require 'sqlite3'

# Create new database.
db = SQLite3::Database.new('kids2.db')
# db.results_as_hash = true

# Create kids table.
db.execute %Q{
create table kids(
  name varchar(10),
  gender varchar(1),
  age integer);
}

# Populate kids table.
File.open("kids.txt", "r") do |f|

  # Throw away header line.
  f.gets

  # Copy data from CSV file to database
  while line = f.gets
    fields = line.chomp.split ','
    db.execute %Q/
      insert into kids values(
        '#{fields[0]}',
        '#{fields[1]}',
        #{fields[2]})/
  end
end

# Query kids table.
kids = db.execute %Q{
  select * from kids;
}
print kids, "\n"

db.close
