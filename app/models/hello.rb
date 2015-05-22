class Hello
  @mmm=nil
  def initialize(aiu)
    @mmm=aiu
  end
  
  def hoge()
    puts "HogeHoge!!"
    puts @mmm
  end
end

Hello.new("huhuhu").hoge()
