https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
#---------------------------------------------------------------------
# Assignment 1, Task 3, Part 1
# Testing script
#
# Instructions: this testing script is provided to help ensure
# your program meets the expectations of the assignment.
#
# It will be run with the command
#   irb a1t3p1-testing.rb
# Notice that this file imports IExpr.rb;
# your code for this part must be in that file.
#
# Complete the interface below as instructed,
# and then run and ensure your program passes the provided tests.
#---------------------------------------------------------------------

$LOAD_PATH << '.' # look in the current directory for the require

#---------------------------------------------------------------------
# BEGIN Interface
#
# Instructions: replace instances of nil with appropriate instances
# of your IExpr type (i.e., objects of your class).
# DO NOT modify any other aspects of this method.
#---------------------------------------------------------------------
module Interface
  require 'IExpr.rb'

  # A method to wrap construction of expressions.
  # Fill in your methods to construct expressions.
  def c(op,subexpr1=nil,subexpr2=nil)
    case op
    when :const; return nil
    when :neg;   return nil
    when :abs;   return nil
    when :plus;  return nil
    when :times; return nil
    when :minus; return nil
    when :exp;   return nil
    else;        raise 'Invalid op argument'
    end
  end
end
#---------------------------------------------------------------------
# END Interface
#---------------------------------------------------------------------

#---------------------------------------------------------------------
# BEGIN Testing
#
# Instructions: you should use these tests to make certain your
# interpretation method(s) is (are) working as expected.
# You MAY also add additional tests if you wish,
# but note that this section will be replaced with
# a more robust test suite during marking, so your modifications
# will not be used.
#---------------------------------------------------------------------

include Interface # bring the construct method c into scope

# Construct some expressions for testing
begin
  two = c(:const, 2)
  five = c(:const, 5)
  neg_five = c(:neg, c(:const, 5))
  plus_neg_five_two = c(:plus,neg_five,two)
  puts "All expressions constructed without exception."
rescue => e
  puts "Exception “#{e.message}” during expression construction."
end

# Test interpretation on the constructed expressions
begin
  failed = 0

  unless two.interpret  == 2 then
    puts "two was not 2!"; failed += 1 end
  unless five.interpret == 5 then
    puts "five was not 5!"; failed += 1 end
  unless neg_five.interpret == -5 then
    puts "neg 5 was not -5!"; failed += 1 end
  unless plus_neg_five_two.interpret == -5 + 2 then
    puts "plus neg 5 2 was not -3!"; failed += 1 end

  if failed > 0 then
    puts "#{failed} interpretation tests failed."
  else
    puts "All interpretation tests passed."
  end
rescue => e
  puts "Exception “#{e.message}” during interpretation."
end
#---------------------------------------------------------------------
# END Testing
#---------------------------------------------------------------------
