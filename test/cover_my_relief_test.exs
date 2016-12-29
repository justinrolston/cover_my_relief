defmodule CoverMyReliefTest do
  use ExUnit.Case
  doctest CoverMyRelief

  test "drug search" do
    api_client = %CoverMyRelief.Api{id: ""}
    drugs = CoverMyRelief.drug_search api_client, "boniva"
    assert is_map drugs
  end

end
