require 'pry'
class Birthday

DATE_FORMAT = '%m-%d'

  def initialize
    @list = []
  end

  def store(name, birthday)
    @list << { name: name, birthday: birthday }
  end

  def print_all
      @list.each do |bday|
        puts "#{bday[:name]}: #{bday[:birthday]}"
      end
    end
# binding.pry

def check
end
end
