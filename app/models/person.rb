# == Schema Information
#
# Table name: people
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  role_id     :integer          not null
#  location_id :integer
#  manager_id  :integer
#  salary      :integer          not null
#

class Person < ActiveRecord::Base
end
