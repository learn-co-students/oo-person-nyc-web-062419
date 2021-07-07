 def hygienebbb=(hygienebbb)
    @hygienebbb = hygienebbb
  end

  def hygienebbb
    @hygienebbb
  end

  def hygiene=(hygiene)
    if hygiene > 10 
      @hygiene = 10
    elsif
       hygiene < 0
       @hygiene = 0
    else
      @hygiene = hygiene
     end

  end

  def hygiene
    @hygiene

    def happy?
      if happiness > 7 
        true
      else
        false
      end
    end