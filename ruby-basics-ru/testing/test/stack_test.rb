# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

class StackTest < Minitest::Test
  # BEGIN
  def test_initialize
    assert { Stack.new.to_a == [] }
  end

  def test_nil_when_pop_from_empty_stack
    assert { Stack.new.pop!.nil? }
  end

  def test_push
    stack = Stack.new
    stack.push!(1)
    assert { stack.size == 1 }
    stack.push!(2)
    assert { stack.to_a == [1, 2] }
  end

  def test_clear
    assert { Stack.new.push!(1).clear.to_a == [] }
  end
  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?
