class AccountsController < ApplicationController
  #index action makes a requests to Account Model, and syncs data from the database (syncs all accounts)
  def index
    @accounts = Account.all
  end

  def show
    @account = Account.find(params[:id])
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)

    if @account.save
      UserMailer.with(account: @account).welcome_email.deliver_now
      redirect_to @account, notice: " account successfully created. please check for confirmation email."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @account = Account.find(params[:id])
  end

  def update
    @account = Account.find(params[:id])

    if @account.update(account_params)
      redirect_to @account, notice: "account successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @account = Account.find(params[:id])
    @account.destroy

    redirect_to root_path, status: :see_other, notice: "account successfully deleted."

  end

  private
    def account_params
      params.require(:account).permit(:firstname, :lastname, :username, :email)
    end

end
