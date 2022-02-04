# Speadsheet gem
# sudo gem install spreadsheet
require 'spreadsheet'

Spreadsheet.client_encoding = 'UTF-8'

Incident.delete_all

book = Spreadsheet.open 'db/WFPS_Call_Logs.xls'

ws = book.worksheet 'Sheet1'

ws.each do |row|
  Incident.create(incident_number: row[0],
                  incident_type: row[1],
                  call_time: row[2],
                  closed_time: row[3],
                  vehicle: row[4],
                  unit: row[5],
                  neighbourhood: row[6],
                  ward: row[7]
  )

end
