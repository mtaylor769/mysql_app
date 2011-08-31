class PagesController < ApplicationController
  def about
    require 'mysql2'
    db = Mysql2::Client.new
    db.query("show databases").each do |row|
      row
    end
  end

end
