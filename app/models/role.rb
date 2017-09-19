# == Schema Information
#
# Table name: roles
#
#  id       :integer          not null, primary key
#  name     :string           not null
#  billable :boolean          not null
#

class Role < ActiveRecord::Base
end
