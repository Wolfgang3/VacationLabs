class Job < ActiveRecord::Base
	validates :company_name,   presence: true
	validates :url,  presence: true
	validates :job,  presence: true
	validates :age,  presence: true
	validates :qualification,  presence: true
end
