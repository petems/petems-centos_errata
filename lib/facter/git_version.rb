# Get errata from sqlite
Facter.add('centos_errata_packages') do
  setcode do
    begin
      require 'sqlite3'

      erratadb = "/var/lib/centos-package-cron/already_annoyed.sqlite"
      query = ''

      if File.exist?(erratadb) then
        begin
          db = SQLite3::Database.new(appdb)
          db.results_as_hash = true
          row = db.execute(query)

          row.each_with_index do |info, i|

          end

        rescue SQLite3::SQLException
          warn('Error parsing application usage database')
        end
      else
        warn('No application usage database found')
      end
    rescue LoadError
      warn('No sqlite3 support')
    end
  end
end
