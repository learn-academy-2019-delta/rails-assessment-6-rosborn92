# ASSESSMENT 5: INTRO TO RAILS
# Coding practical questions

# 1. Create a method called hello_world that takes a language code
  # (e.g. "es", "de", "ru", "ja") as an argument and returns the appropriate
  # version of "Hello, World" for the given language. The default should be English.
  # Test your code with THREE method calls. Expected output for hello_world 'es':
  # 'Hola Mundo', hello_world 'de': 'Hallo Welt'

  def translator(lc = "en")
      if lc == "en"
          puts "Hello World"
      elsif lc == "es"
          puts "Hola Mundo"
      elsif lc == "de"
          puts "Hallo Welt"
      elsif lc == "ru"
          puts "Privet, Mir"
      elsif lc == "ja"
          puts "Kon'nichiwa sekai"
      end
  end

  translator("ja")
  translator("en")
  translator("de")
  translator()

# 2a. Create a method called assign_grade that takes a number as an argument
# and returns the corresponding letter grade. Test your code with THREE method
 # calls. Expected output for assign_grade 96: 'A', assign_grade 75: 'C'

 def assign_grade(num)
     if num >= 90 && num < 100
         puts "A"
     elsif num >= 80 && num < 90
         puts "B"
     elsif num >= 70 && num < 80
         puts "C"
     elsif num >= 60 && num < 70
         puts "D"
     elsif num >= 0 && num < 60
         puts "F"
     else
         puts "not a real grade"
     end
 end

 assign_grade(64)
 assign_grade(96)
 assign_grade(75)
 assign_grade(8)
 assign_grade(102)
 assign_grade(90)

# 2b. STRETCH: Create exceptions to your method if the number passed is less than 0 or greater than 100. Copy and paste the original code below to add the exceptions.



# 3a. Create a method called pluralizer that takes 2 arguments - a singular noun and a number - and returns the number and the pluralized form of the noun, if necessary. Test your code with THREE method calls. Expected output of pluralizer(5, cat): '5 cats', expected output of pluralizer(1, dog): '1 dog'

def pluralizer(noun, num)
    if num > 1
        if noun[-1] == 's'
            puts "#{num} #{noun}"
        elsif noun[-2] == 'l' && noun[-1] == 'f'
            puts "#{num} #{noun[0...-1]}ves"
        else
            puts "#{num} #{noun}s"
        end
    else
        puts "#{num} #{noun} is not plural"
    end
end

pluralizer("crossroads", 5)
pluralizer("elf", 2)
pluralizer("chore", 1)
pluralizer("table", 3)

# 3b. STRETCH: Pick three nouns with irregular pluarlization like sheep, goose/geese, child/children, person/people, crossroads, pants and add the exceptions to your code. Copy and paste the original code below to add the exceptions.
