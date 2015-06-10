class Fixnum

  def to_pig_latin
    
    case self
    when (0..19)
      
      %w(erozay oneyay wotay eethray ourfay ivefay ixsay evensay eightyay inenay
        entay elevenyay elvetway irteenthay ourteenfay ifteenfay ixteensay eventeensay
        eighteenyay ineteennay)[self]
      
    when (20..99)
      tens = %w(erozay entay entytway irtythay ortyfay iftyfay ixtysay
        eventysay eightyay inetynay)
      if self % 10 == 0
        tens[self / 10]
      else
        tens[self / 10] + ' ' + (self % 10).to_pig_latin
      end 
    when (100..999)
      if self % 100 == 0
     
        (self / 100).to_pig_latin + ' undredhay'
      else
        
        (self / 100).to_pig_latin + ' undredhay ' + 
        (self % 100).to_pig_latin
      end
    else
      if self % 1000 == 0
        (self / 1000).to_pig_latin + ' ousandthay'
      else
        (self / 1000).to_pig_latin + ' ousandthay ' + 
        (self % 1000).to_pig_latin
      end
      
    end
    
  end
end