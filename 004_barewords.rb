$progname = 'Dis-organizer'

module DisOrganizer
  VERSION = 'Mark 7'
end

class CoffeEnabled
  def service_inquiry
    'order you a coffe'
  end
end

class BareWords
  SALUTATION = 'Most agreeable to see you'

  attr_accessor :special_feature

  def initialize(designation)
    @degination = designation
  end

  def print(title, first_name, last_name)
    puts "#{SALUTATION}, #{title}, #{first_name} #{last_name}. ",
         "Welcome to #{$progname} version #{DisOrganizer::VERSION}. ",
         "My name is #{@designation}. ",
         "May I #{special_feature.service_inquiry}?"
  end
end

obj = BareWords.new('Seere')
obj.special_feature = CoffeEnabled.new
obj.print 'Commander', 'Sam', 'Vimes'