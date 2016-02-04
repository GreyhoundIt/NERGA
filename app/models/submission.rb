class Submission <  ActiveRecord::Base
  validates :p1_last_name,:p2_last_name,:p3_last_name,:p4_last_name,:p5_last_name,:p6_last_name,:p7_last_name,:p8_last_name, length: { within:1..40 }
  validates :p1_first_name,:p2_first_name,:p3_first_name,:p4_first_name,:p5_first_name,:p6_first_name,:p7_first_name,:p8_first_name, length: { within:1..40 }
  validates :p1_handicap,:p2_handicap,:p3_handicap,:p4_handicap,:p5_handicap,:p6_handicap,:p7_handicap,:p8_handicap, :format => {:with => /\A\d+(?:\.\d{0,1})?\z/ }, :numericality => {:greater_than => 0, :less_than => 37 }
  belongs_to :user

  def self.as_csv
  CSV.generate do |csv|
    csv << column_names
      all.each do |item|
      csv << item.attributes.values_at(*column_names)
      end
    end
  end

end
