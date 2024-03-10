class CustomersController < ApplicationController
  def new
    @customers = Customer.new
  end
  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to customers_path
    else
      render :new
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :email)
  end

end
