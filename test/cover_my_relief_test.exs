defmodule CoverMyReliefTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  doctest CoverMyRelief

  test "drug search" do
    use_cassette "drugs_search" do
      api_client = %CoverMyRelief.Api{id: ""}
      drugs = CoverMyRelief.drug_search api_client, "boniva"
      
      assert is_list drugs

    end
  end
  
  test "get drug" do
    use_cassette "get_drug" do
      api_client = %CoverMyRelief.Api{id: ""}
      drug = CoverMyRelief.get_drug api_client, 169220
      
      assert is_map drug

    end
  end
end