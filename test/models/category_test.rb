require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  
  def setup
    @category = Category.new(name: "sports")
  end
  
  test "Category should be valid" do
    assert @category.valid?
  end
  
  test "Name should be present" do
    assert @category.name=" "
    assert_not @category.valid?
  end
  
  test "Name should be unique" do
    @category.save
    category2=Category.new(name:"sports")
    assert_not category2.valid?
  end
  
  test "name not long" do
    @category.name="a" *26
    assert_not @category.valid?
  end
  
  test "name not to short" do
    @category.name="aa"
    assert_not @category.valid?
  end
end