defmodule CoverMyRelief do

  @api_site "https://api.covermymeds.com"
  @version "1"

  def drug_search api_client, query do
    HTTPoison.start
    response = HTTPoison.get! "#{@api_site}/drugs/?api_id=#{api_client.id}&q=#{query}&v=#{@version}"
    response.body |> Poison.Parser.parse!
  end
end
