# == Schema Information
#
# Table name: locations
#
#  id        :integer          not null, primary key
#  name      :string           not null
#  region_id :integer          not null
#

class Location < ActiveRecord::Base
end
