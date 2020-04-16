# frozen_string_literal: true

def divider(type: nil)
  case type
  when 1
    puts '==============================================='
  when 2
    puts '***********************************************'
  when 3
    puts '///////////////////////////////////////////////'
  else
    puts '-----------------------------------------------'
  end
end

class Contact
  def initialize
    @contacts = []
  end

  def add(name, number)
    @contacts << {name: name, number: number}
  end

  def update(name, number)
    @contacts.map do |contact|
      contact[:number] = number if contact[:name] == name
    end
  end

  def display
    divider(type: 1)
    puts 'Contacts'
    @contacts.map do |item|
      divider(type: 2)
      puts "Name: #{item[:name]} - Number #{item[:number]}"
    end
    divider(type: 1)
  end

  def delete(name: nil, number: nil)
    message = 'You have to enter the name or number of the contact you wants to delete'
    unless name.nil? && number.nil?
      new_arr = @contacts
      new_arr = @contacts.reject { |item| item[:name] == name } if name
      new_arr = @contacts.reject { |item| item[:number] == number } if number
      different = @contacts.length != new_arr.length
      different ? @contacts = new_arr : message = "We couldn't find the contact."
      message = "The contact with name #{name} was delete" if new_arr && number.nil? && different
      message = "The contact with number #{number} was delete" if number && name.nil? && different
    end
    # p '==========='
    # p @contacts
    # p '==========='
    # p message
    # p '==========='
    divider(type: 1)
    puts message
    divider(type: 1)
  end
end

class ContactOptions
  def initialize
    @list_options = %w[add update display delete]
    @contact_instance = Contact.new
    list_options
  end

  def list_options
    divider(type: 3)
    @list_options.each_with_index { |opt, i| puts "Enter #{i + 1} for #{opt}" }
    divider(type: 3)
  end

  def ask_for_name_and_number
    puts 'Enter the name:'
    name = gets.chomp
    puts 'Enter the number:'
    number = gets.chomp
    [name, number]
  end

  def finish_action
    divider(type: 2)
    puts 'Press enter to see the menu again'
    gets.chomp.nil? ? list_options : list_options
  end

  def select_option(option)
    case option
    when 1
      inputs = ask_for_name_and_number
      @contact_instance.add(inputs[0], inputs[1])
    when 2
      inputs = ask_for_name_and_number
      @contact_instance.update(inputs[0], inputs[1])
    when 3
      @contact_instance.display
    when 4
      puts 'Do you want to delete by name or number?'
      puts 'Enter 1 if you want NUMBER else if you want delete by NAME leave it blank'
      delete_opt = gets.chomp
      name = nil
      number = nil
      if delete_opt.nil?
        puts 'Enter your the number:'
        number = gets.chomp
      else
        puts 'Enter your the name:'
        name = gets.chomp
      end
      @contact_instance.delete(name: name, number: number)
    else
      divider(type: 1)
      puts 'Not valid option'
      divider(type: 1)
      return list_options
    end
    finish_action
  end
end

options = ContactOptions.new
loop do
  options.select_option(gets.chomp.to_i)
end
# Test ====>
# options.list_options
# contact_book = Contact.new
# contact_book.add('Wilber', '8888888')
# contact_book.add('ABC', '99999999')
# contact_book.delete(name: 'ABC')
# contact_book.delete
# contact_book.display
# contact_book.update('ABC', '123')
# contact_book.display
# options = ContactOptions.new
# p contact_book.options
