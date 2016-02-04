json.array!(@submissions) do |submission|
  json.extract! submission, :id, :p1_first_name, :p1_last_name, :p1_handicap, :team, :venue, :league, :p2_first_name, :p2_last_name, :p2_handicap, :p3_first_name, :p3_last_name, :p3_handicap, :p4_first_name, :p4_last_name, :p4_handicap, :p5_first_name, :p5_last_name, :p5_handicap, :p6_first_name, :p6_last_name, :p6_handicap, :p7_first_name, :p7_last_name, :p7_handicap, :p8_first_name, :p8_last_name, :p8_handicap, :g1_first_name, :g1_last_name, :g1_handicap, :g2_first_name, :g2_last_name, :g2_handicap
  json.url submission_url(submission, format: :json)
end
