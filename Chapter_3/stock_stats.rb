require_relative 'csv_reader'

reader = CSVReader.new

ARGV.each do |csv_file_name|
	STDERR.puts "\nProcessing #{csv_file_name}"
	reader.read_in_csv_data(csv_file_name)
end

puts "Total value = #{reader.total_value_in_stock}"