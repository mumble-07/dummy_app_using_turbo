require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest

  test 'Testing for categories#index' do
    assert_routing categories_path, controller: 'categories', action: 'index'
  end

  test 'Testing for categories#create' do
    assert_routing({ method: 'post', path: categories_path }, { controller: 'categories', action: 'create' })
  end

  test 'Testing for categories#new' do
    assert_routing new_category_path, controller: 'categories', action: 'new'
  end

  test 'Testing for categories#edit' do
    assert_routing({ method: 'get', path: edit_category_path(1) },
                   { controller: 'categories', action: 'edit', id: '1' })
  end

  test 'Testing for categories#show' do
    assert_routing category_path(1), controller: 'categories', action: 'show', id: '1'
  end

  test 'Testing for categories#update' do
    assert_routing({ method: 'put', path: category_path(1) }, { controller: 'categories', action: 'update', id: '1' })
  end

  test 'Testing for categories#destroy' do
    assert_routing({ method: 'delete', path: category_path(1) },
                   { controller: 'categories', action: 'destroy', id: '1' })
  end

end
