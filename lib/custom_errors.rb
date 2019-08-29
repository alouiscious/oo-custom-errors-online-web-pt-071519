class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
    if person.class != Person
      begin
        raise PartnerError
      rescue PartnerError => error
          puts error.message
      end
    else
      person.partner = self
    end
  end
  
  class PartnerError < StandardError
<<<<<<< HEAD
    def message
      "you must give the get_married method an argument of an instance of the person class!"
    end
=======
    else 
      person.partner = self
    end 
>>>>>>> 8185d4d4d4299c3a1d91bbda18cd2a880e0420a7
  end
  
  class PartnerError < StandardError
  end 
end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name




