require 'rails_helper'

RSpec.describe Learnbook, type: :model do

  it 'is valid with valid attributes' do
    learnbook_test = Learnbook.create username: 'Chris', email: 'chris@learnbook.com', profile: 'Chris doing awesome stuff.'
    expect(learnbook_test).to be_valid
  end

  it 'is not valid without a username' do
    learnbook_test = Learnbook.create email: 'chris@learnbook.com', profile: 'Chris doing awesome stuff.'
    expect(learnbook_test.errors[:username]).to_not be_empty
  end

  it 'is not valid without an email' do
    learnbook_test = Learnbook.create username: 'Chris', profile: 'Chris doing awesome stuff.'
    expect(learnbook_test.errors[:email]).to_not be_empty
  end

  it 'is not valid with username less than 3 characters' do
    learnbook_test = Learnbook.create username: 'C', email: 'chris@learnbook.com', profile: 'Chris doing awesome stuff.'
    expect(learnbook_test.errors[:username]).to_not be_empty
  end

  it 'is not valid with email less than 10 characters' do
    learnbook_test = Learnbook.create username: 'Chris', email: 'c@l.com', profile: 'Chris doing awesome stuff.'
    expect(learnbook_test.errors[:email]).to_not be_empty
  end

  it 'is not valid if the email is not unique' do
    learnbook_test_one = Learnbook.create username: 'Chris', email: 'chris@learnbook.com', profile: 'Chris doing awesome stuff.'
    learnbook_test_two = Learnbook.create username: 'Chris', email: 'chris@learnbook.com', profile: 'Chris doing awesome stuff.'
    expect(learnbook_test_two.errors[:email]).to_not be_empty
  end

  it 'is not valid without an @ in the email' do
    learnbook_test = Learnbook.create username: 'Chris', email: 'chrislearnbook.com', profile: 'Chris doing awesome stuff.'
    expect(learnbook_test.errors[:email]).to_not be_empty
  end

end
