class Greeting

  def greet(name = "my friend")
    if input_is_list?(name)
      greet_many(name)
    else
      shouting_at?(name) ? shout_one(name) : greet_one(name)
    end
  end

  private

  def input_is_list?(name)
    name.kind_of?(Array)
  end

  def shouting_at?(name)
    name == name.upcase
  end

  def shout_one(name)
    "HELLO #{name}!"
  end

  def greet_one(name)
    "Hello, #{name}."
  end

  def compose_names(name_list, greeting, oxford_comma)
    name, *rest = name_list
    if (name_list.size == 1)
      return "#{greeting}#{oxford_comma ? "," : ""} and #{name}."
    end

    greeting += ", #{name}"

    if oxford_comma && name_list.size==1
      greeting+=","
    end

    compose_names(rest, greeting, oxford_comma)
  end

  def greet_many(name_list)
    oxford_comma = name_list.size !=2
    compose_names(name_list, "Hello", oxford_comma)
  end
end
