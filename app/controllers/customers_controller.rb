class CustomersController < ApplicationController
  def new
    @customers = Customer.new
  end

  def index
    @customers = Customer.all
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to customers_path
    else
      render :new
    end
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
      if @customer.update(customer_params)
        flash[:success] = "Customer was successfully updated"
        redirect_to customers_path
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :email, :gender)
  end
end
