require 'test_helper'

class CompaniesControllerTest < ActionController::TestCase
  setup do
    @company = companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company" do
    assert_difference('Company.count') do
      post :create, company: { address: @company.address, amount_employees: @company.amount_employees, area: @company.area, city: @company.city, country: @company.country, department: @company.department, description: @company.description, fax: @company.fax, logo: @company.logo, name: @company.name, nit: @company.nit, phone: @company.phone, user_id: @company.user_id, website: @company.website, zip_code: @company.zip_code }
    end

    assert_redirected_to company_path(assigns(:company))
  end

  test "should show company" do
    get :show, id: @company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company
    assert_response :success
  end

  test "should update company" do
    patch :update, id: @company, company: { address: @company.address, amount_employees: @company.amount_employees, area: @company.area, city: @company.city, country: @company.country, department: @company.department, description: @company.description, fax: @company.fax, logo: @company.logo, name: @company.name, nit: @company.nit, phone: @company.phone, user_id: @company.user_id, website: @company.website, zip_code: @company.zip_code }
    assert_redirected_to company_path(assigns(:company))
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete :destroy, id: @company
    end

    assert_redirected_to companies_path
  end
end
