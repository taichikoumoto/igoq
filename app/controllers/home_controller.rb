# frozen_string_literal: true

class HomeController < ApplicationController

  # GET /phones
  # GET /phones.json
  def index
    @phones = Phone.all
    @companies = Company.all
  end
end
