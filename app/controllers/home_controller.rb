class HomeController < ApplicationController
  def index
  end

  def write
    
    @num1 = params["num1"]
    @num2 = params["num2"]
    @num3 = params["num3"]
    @num4 = params["num4"]
    @num5 = params["num5"]
    @num6 = params["num6"]
    
    # if @num1.to_i >45 || @num2.to_i >45 || @num3.to_i >45 || @num4.to_i >45 || @num5.to_i >45 || @num6.to_i >45
    #     redirect_to user_path(''), :flash => { :success => "Message" }
    #     return 0;
    # end
     @sample = (1..45).to_a.sample(6).sort
    
    new_post = Post.new
    new_post.num1 = @sample[0]
    new_post.num2 = @sample[1]
    new_post.num3 = @sample[2]
    new_post.num4 = @sample[3]
    new_post.num5 = @sample[4]
    new_post.num6 = @sample[5]
    new_post.save #-저장 하는거임
    
    
    #이거도 마찬가지
    
    @every_post = Post.all.order("id desc")
    @count = 0
    @rNum = ""
    #모르면 몸으로 떼워야지.....극혐...
    if @num1.to_i==@every_post.first.num1.to_i || @num1.to_i == @every_post.first.num2|| @num1.to_i == @every_post.first.num3|| @num1.to_i == @every_post.first.num4|| @num1.to_i == @every_post.first.num5|| @num1.to_i == @every_post.first.num6
        @count = 1+ @count 
        @rNum = @rNum+@num1.to_s+" "
    end
    
    if @num2.to_i == @every_post.first.num1 ||@num2.to_i == @every_post.first.num2.to_i||@num2.to_i == @every_post.first.num3||@num2.to_i == @every_post.first.num4||@num2.to_i == @every_post.first.num5||@num2.to_i == @every_post.first.num6
        @count =1+ @count 
        @rNum = @rNum+@num2+" "
    end
    if @num3.to_i == @every_post.first.num1 ||@num3.to_i == @every_post.first.num2||@num3.to_i == @every_post.first.num3||@num3.to_i == @every_post.first.num4||@num3.to_i == @every_post.first.num5||@num3.to_i == @every_post.first.num6
        @count = 1 + @count
        @rNum = @rNum+@num3+" "
    end
    if @num4.to_i == @every_post.first.num1 ||@num4.to_i == @every_post.first.num2||@num4.to_i == @every_post.first.num3||@num4.to_i == @every_post.first.num4||@num4.to_i == @every_post.first.num5||@num4.to_i == @every_post.first.num6
        @count = 1 + @count
        @rNum = @rNum+@num4+" "
    end
    if @num5.to_i == @every_post.first.num1 ||@num5.to_i == @every_post.first.num2||@num5.to_i == @every_post.first.num3||@num5.to_i == @every_post.first.num4||@num5.to_i == @every_post.first.num5||@num5.to_i == @every_post.first.num6
        @count =1+ @count 
        @rNum = @rNum+@num5+" "
    end
    if @num6.to_i == @every_post.first.num1 ||@num6.to_i == @every_post.first.num2||@num6.to_i == @every_post.first.num3||@num6.to_i == @every_post.first.num4||@num6.to_i == @every_post.first.num5||@num6.to_i == @every_post.first.num6
        @count = 1+@count 
        @rNum = @rNum+@num6+" "
    end
    # compare(@num1,@num2,@num3,@num4,@num5,@num6)
    #redirect_to "/home/list"
    #//이작업이 끝나고 여기러 가라
  end
  
  
  def list
      #@every_post = Post.all.order("id desc")
      
      #@num1 = params[:num1]
  end

end
