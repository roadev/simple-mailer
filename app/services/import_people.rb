require 'csv'

  CSV.foreach('./evento.csv', headers: true) do |row|
    Person.find_or_create_by name: row['Name'].to_s.split.map(&:capitalize).join(' '), email: row['Email'].to_s.downcase, gender: row['Gender'].to_s.downcase, event: row['Event'].to_i, company: row['Company'].to_s.split.map(&:capitalize).join(' ')
  end
