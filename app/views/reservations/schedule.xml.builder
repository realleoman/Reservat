xml.instruct! :xml, :version=>"1.0" 

xml.tag!("data") do #actual count of records need to be used here
	@reservation.each do |record|
		xml.tag!("event",{ "id" => record.id }) do
			xml.tag!("text", record.comment)
			xml.tag!("start_date", record.start_at)
			xml.tag!("end_date", record.stop_at)
		end
	end
end