# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

class StackTest < Minitest::Test
  # BEGIN
  def test_initialize
    assert { Stack.new.to_a == [] }
  end

  def test_empty_stack
    stack = Stack.new

    assert { stack.pop!.nil? }
    assert { stack.empty? }
    assert { stack.size.zero? }
    assert { stack.to_a == [] }
  end

  def test_push
    stack = Stack.new
  
    stack.push!(1)
    assert { stack.size == 1 }

    stack.push!(2)
    assert { stack.size == 2 }
    assert { stack.to_a == [1, 2] }
  end

  def test_pop
    stack = Stack.new [1, 2, 3, 4, 5]
    stack.pop!
    stack.pop!

    assert { stack.size == 3 }
    assert { stack.pop! == 3 }
    assert { stack.to_a == [1, 2] }
  end

  def test_clear
    stack = Stack.new %w[lala lola]
    assert { !stack.empty? }

    stack.clear!
    assert { stack.empty? }
  end
  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?
