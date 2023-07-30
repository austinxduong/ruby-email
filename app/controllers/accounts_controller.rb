class AccountsController < ApplicationController
  #index action makes a requests to Account Model, and syncs data from the database (syncs all accounts)
  def index
    @accounts = Account.all
  end

  def show
    @account = Account.find(params[:id])
  end

end
