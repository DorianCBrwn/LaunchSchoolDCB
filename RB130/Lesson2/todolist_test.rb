require 'simplecov'
require 'minitest/autorun'
require "minitest/reporters"
SimpleCov.start
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
    assert_raises(IndexError) { @list.mark_done_at(100) }
    @list.mark_done_at(1)
    assert_equal(false, @todo1.done?)
    assert_equal(true, @todo2.done?)
    assert_equal(false, @todo3.done?)
  end

  def test_unmark_done_at
    assert_raises(IndexError) { @list.mark_undone_at(100)}

    @todo1.done!
    @todo2.done!
    @todo3.done!
    @list.mark_undone_at(2)

    assert_equal(true, @todo1.done?)
    assert_equal(true, @todo2.done?)
    assert_equal(false, @todo3.done?)
  end

  def test_done!
    @list.done!
  assert_equal(true, @todo1.done?)
  assert_equal(true, @todo2.done?)
  assert_equal(true, @todo3.done?)
  assert_equal(true, @list.done?)
  end

  def test_remove_at
    assert_equal(@todos.delete_at(0), @list.remove_at(0))
    assert_equal(@todos.delete_at(1), @list.remove_at(1))
    assert_raises(IndexError){ @list.remove_at(100) }
    assert_equal(@todos, @list.to_a)
  end

  def test_to_s
    output = <<-OUTPUT.chomp.gsub /^\s+/, ""
    ---- Today's Todos ----
    [ ] Buy milk
    [ ] Clean room
    [ ] Go to gym
    OUTPUT

    assert_equal(output, @list.to_s)
  end

  def test_to_s_one_done
    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [X] Buy milk
    [ ] Clean room
    [ ] Go to gym
    OUTPUT
    @list.mark_done_at(0)
    assert_equal(output,@list.to_s )
  end

  def test_to_s_one_done
    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [X] Buy milk
    [X] Clean room
    [X] Go to gym
    OUTPUT
    @list.done!
    assert_equal(output, @list.to_s )
  end

  def test_each_return_value
     assert_equal(@list, @list.each{ |_| })
  end


  def test_select
    @todo1.done!
    list = TodoList.new(@list.title)
    list.add(@todo1)

    assert_equal(list.title, @list.title)
    assert_equal(list.to_s, @list.select{ |todo| todo.done? }.to_s)
  end

  def test_find_by_title
    assert_equal(@list.find_by_title(@todo1.title), @todo1)
  end

end