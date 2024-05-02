# mermaid_spec.rb
# Write a code in a file named mermaid 
# ensures the respec testing framework is available for use in this file 
require 'rspec'
# allows the spec file to read the contents of the student file 
require './lib/mermaid'

# start of describe block; one per class/test file 
describe Mermaid do
# start of it block for an individual test 
# the string should briefly describe in plain English what is being tested 
  it 'is an instance of mermaid' do
  # create a instance variable mermaid object 
  # since a mermaid object is being created from a Mermaid class, write a class named Mermaid
  # ALSO - since an argument is being passed to Mermaid, the initialized method needs to accept one
    mermaid = Mermaid.new('Sereia')
  # assert that the mermaid object (from line 16) is from the Mermaid class 
    expect(mermaid).to be_a Mermaid
  end

  # start of it block for an individual test 
  # the string should briefly describe in plain English what is being tested 
  it 'has a name' do
    mermaid = Mermaid.new('Sereia')
    # assert that the mermaid has a name property which matches what was passed in
    # checking to see if the instance variable mermaid object has a name attribute that matches the 
    # value that was passed in upon creating the object instance 
    # since we need to call the name attribute and get back the string that was passed in, 
    # we need an attr_reader for the name attribute
    expect(mermaid.name).to eq 'Sereia'
  end
  
  # start of it block for an individual test 
  # the string should briefly describe in plain English what is being tested
  it 'has an age' do
    mermaid = Mermaid.new('Sereia')
    # asserts that the mermaid has a variable instance age object which has an assigned value of 22
    # since we need to call the age attribute and get back the integer we need an attr_reader to see the age attribute 
    expect(mermaid.age).to eq 22
  end

  # start of it block for an individual test 
  # the string should briefly describe in plain English what is being tested 
  it 'has can get older' do
    mermaid = Mermaid.new('Sereia')
    # calling class method .get_older on an instance variable mermaid object
    mermaid.get_older
    # assert that the mermaid age increase by 1 after calling class method get_older 
    expect(mermaid.age).to eq 23
  end