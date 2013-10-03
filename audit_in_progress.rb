require 'httparty'
require 'nokogiri'

module StJoeCountyData
  def self.get_data_for_parcel(parcel_id)
      get_result = HTTParty.get("http://www.macoggis.com/SJCSearchForm/report.asp?RECID=#{parcel_id}")
      parsed_doc = Nokogiri::HTML(get_result)
      link_to_detailed_report = parsed_doc.css("table")[1].css("a")[0].attributes["href"].value
      table = parsed_doc.css("table")[2]
      data_array = parsed_doc.search("//text()").select { |node| node.text.gsub("\r", "").gsub("\n","").gsub(" ", "") != "" }.map { |node| node.text.gsub("\r", "").gsub("\n", "").strip }
      index_of_second_PRINT = data_array.length - data_array.reverse.index("[Print]") - 2
      data_of_interest_array = data_array[data_array.index("PARCELID")..index_of_second_PRINT]
      data_hash = Hash[*data_of_interest_array]
      data_hash["Detailed Report URL"] = link_to_detailed_report
      return data_hash
  end
end

