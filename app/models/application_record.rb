class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  require 'will_paginate'

end
