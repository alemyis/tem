class Tem < ActiveRecord::Base
  def voteye
    if(self.ye.nil?)
      self.ye = 1
    else
      self.ye += 1
    end
  end
  def votene
    if(self.ne.nil?)
      self.ne = 1
    else
      self.ne += 1
    end
  end
end
