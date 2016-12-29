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
end