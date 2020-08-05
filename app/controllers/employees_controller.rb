class EmployeesController < ApplicationController

    def index
        @employees = Employee.all
        render :index
    end

    def show
        id = params[:id]
        @employee = Employee.find(id)
    end

    def new
        @employee = Employee.new
        render :new
    end

    def create
        first_name = params[:employee][:first_name]
        last_name = params[:employee][:last_name]
        the_alias = params[:employee][:alias]
        title = params[:employee][:title]
        office = params[:employee][:office]
        dog_id = params[:employee][:dog_id]
        img_url = params[:employee][:img_url]
    

        employee = Employee.create(first_name: first_name, last_name: last_name, title: title, alias: the_alias, office: office, dog_id: dog_id, img_url: img_url, created_at: Time.now, updated_at: Time.now) 
      
        
        redirect_to employee_path(employee)


    end

    def edit
        id = params[:id]
        @employee = Employee.find(id)
        # render :edit
        # redirect_to employee_path(@employee)
    end

    def update
        id = params[:id]
        @employee = Employee.find(id)

        first_name = params[:employee][:first_name]
        last_name = params[:employee][:last_name]
        the_alias = params[:employee][:alias]
        title = params[:employee][:title]
        office = params[:employee][:office]
        dog_id = params[:employee][:dog_id]
        img_url = params[:employee][:img_url]

        @employee.update(first_name: first_name, last_name: last_name, title: title, alias: the_alias, office: office, dog_id: dog_id, img_url: img_url, created_at: Time.now, updated_at: Time.now) 
      
        redirect_to employee_path(@employee)
    end

end
