# class Room
#
#   attr_accessor :id, :title, :date_created, :price, :url
#
#   @@all = []
#
#   def self.create_from_array(array)
#     new_from_array(array).each do |room|
#       room.save
#     end
#   end
#
#   def self.new_from_array(array)
#     array.each do |room_hash|
#       room = self.new
#       room_hash.each do |attribute, value|
#         room.send("#{attribute}=", value)
#         @@all << room
#       end
#     end
#     @@all = @@all.uniq
#   end
#
#   def self.by_price(order = "ASC")
#     sql = <<-SQL
#       SELECT * FROM rooms ORDER BY price #{order}
#     SQL
#
#     rows =  DB[:conn].execute(sql)
#     self.new_from_rows(rosw)
#   end
#
#   def self.new_from_db(row)
#     self.new.tap do |room|
#       room.id = row[0]
#       room.title = row[1]
#       room.date_created = row[2]
#       room.price = row[3]
#       room.url = row[4]
#     end
#   end
#
#   def self.new_from_rows(rows)
#     rows.collect do |row|
#       self.new_from_db(row)
#     end
#   end
#
#   def self.all
#     sql = <<-SQL
#       SELECT * FROM rooms;
#     SQL
#
#     rows =  DB[:conn].execute(sql)
#     self.new_from_rows(rosw)
#   end
#
#   def save
#     insert
#   end
#
#   def insert
#     sql = <<-SQL
#       INSERT INTO rooms (title, date_created, price, url) VALUES (?, ?, ?, ?)
#     SQL
#
#     DB[:conn].execute(sql, self.title, self.date_created, self.price, self.url)
#   end
#
#   def self.create_table
#     sql = <<-SQL
#       CREATE TABLE IF NOT EXISTS rooms (
#         id INTEGER PRIMARY KEY,
#         title TEXT,
#         date_created DATETIME,
#         price TEXT,
#         url TEXT
#       )
#     SQL
#
#     DB[:conn].execute(sql)
#   end
# end
