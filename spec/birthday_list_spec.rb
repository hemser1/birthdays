require 'birthday_list'

describe Birthday do

it 'should store to name & birthday' do
  expect(Birthday.new.store('Bob', '01/01/91')).to eq [{ name: 'Bob', birthday: '01/01/91' }]
end

it 'should print all names and birthdays' do
  birthdays = Birthday.new
  birthdays.store('Bob', '01/01/91')
  birthdays.store('Karen', '02/02/92')
  expect { birthdays.print_all }.to output("Bob: 01/01/91\nKaren: 02/02/92\n").to_stdout
end

it 'should print whoevers birthday is today' do
  birthdays = Birthday.new
  birthdays.store('Bob', '01/01/91')
  birthdays.store('Karen', '26/06/90')
  expect { birthdays.check }.to output("It's Karen's birthday today! They are 29 years old!" ).to_stdout
end
end
