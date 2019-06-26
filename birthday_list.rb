require 'pry'
class Birthday

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
end
