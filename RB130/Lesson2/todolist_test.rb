require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'TodoList_complete2'

class TodoListTest < MiniTest::Test

  def setup
    @todo1 = Todo.new("Buy milk")
    @todo2 = Todo.new("Clean room")
    @todo3 = Todo.new("Go to gym")
    @todos = [@todo1, @todo2, @todo3]

    @list = TodoList.new("Today's Todos")
    @list.add(@todo1)
    @list.add(@todo2)
    @list.add(@todo3)
  end

  # Your tests go here. Remember they must start with "test_"
  def test_to_a
    assert_equal(@todos, @list.to_a)
  end

  def test_size
    assert_equal(3, @list.size)
  end

  def test_first
    assert_equal(@todo1, @list.first)
  end

  def test_last
    assert_equal(@todo3, @list.last)
  end

  def test_shift
    todo = @list.shift
    assert_equal(@todo1, todo)
    assert_equal([@todo2, @todo3], @list.to_a)
  end

  def test_pop
    todo = @list.pop
    assert_equal(@todo3, todo)
    assert_equal([@todo1, @todo2], @list.to_a)
  end

  def test_done?
    assert_equal(false, @list.done?)
  end

  def test_add_type_error
    assert_raises(TypeError) { @list.add(1)  }
    assert_raises(TypeError) { @list.add({hello: 3})  }
  end

  def test_shovel_method
    todo4 = Todo.new("added Todo")
    list = @list << todo4
    assert_equal(4, list.size)
    assert_includes(list, todo4 )
  end

  def test_add_alias
    new_todo = Todo.new('new todo')
    @todos << new_todo
    @list.add(new_todo)
    assert_equal(@list.to_a, @todos)
  end

  def test_item_at
    assert_equal(@list.item_at(0), @list.first)
    assert_raises(IndexError) { @list.item_at(10) }
  end

  def test_mark_done_at
    assert_raises(IndexError) { @list.mark_done_at(100)}
    assert_equal(@todo1.done, @list.mark_done_at(0))
  end

end