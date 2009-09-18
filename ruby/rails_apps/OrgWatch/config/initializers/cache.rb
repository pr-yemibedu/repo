require 'sqlite3'
puts 'Initializing people cache ...'
db = SQLite3::Database.new("#{RAILS_ROOT}/db/development.sqlite3")
rows = db.execute('select id, uid, mrkdisplayname2 from people where mrkdisplayname2 is not null order by mrkdisplayname2')
people = rows.collect{ |r| {'id' => r[0], 'uid' => r[1], 'mrkdisplayname2' => r[2]} }
Rails.cache.write('people', people)
puts "Initialized people cache with #{rows.size} people."
