require "test_helper"

class PeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get people_url, as: :json
    assert_response :success
  end

  test "should create person" do
    assert_difference("Person.count") do
      post people_url, params: { person: { address: @person.address, age: @person.age, firstname: @person.firstname, hobbies: @person.hobbies, lastname: @person.lastname, middlename: @person.middlename, photoImg: @person.photoImg, portfolio_projects: @person.portfolio_projects, prog_languages: @person.prog_languages, status: @person.status, surname: @person.surname } }, as: :json
    end

    assert_response :created
  end

  test "should show person" do
    get person_url(@person), as: :json
    assert_response :success
  end

  test "should update person" do
    patch person_url(@person), params: { person: { address: @person.address, age: @person.age, firstname: @person.firstname, hobbies: @person.hobbies, lastname: @person.lastname, middlename: @person.middlename, photoImg: @person.photoImg, portfolio_projects: @person.portfolio_projects, prog_languages: @person.prog_languages, status: @person.status, surname: @person.surname } }, as: :json
    assert_response :success
  end

  test "should destroy person" do
    assert_difference("Person.count", -1) do
      delete person_url(@person), as: :json
    end

    assert_response :no_content
  end
end
