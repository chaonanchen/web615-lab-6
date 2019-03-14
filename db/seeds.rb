for i in 1..6
  @user = User.new
  @user.email = Faker::Internet.email
  @user.password = "asdfghjkl"
  if @user.save
    p "#{@user.email} has been saved"

    for j in 1..6
      @article = Article.new
      @article.title = "Will #{Faker::Company.name} really #{Faker::Company.bs}?"
      paragraph_1 = Faker::Lorem.paragraphs.join(' ')
      paragraph_2 = Faker::Lovecraft.paragraphs.join(' ')
      paragraph_3 = Faker::Hipster.paragraphs.join(' ')
      @article.content = "#{paragraph_1} <br /> #{paragraph_2} <br /> #{paragraph_3}"
      if @article.save
        p "#{@article.title} has been saved"

        for ii in 1..6
          @comment = Comment.new
          @comment.article = @article
          @comment.message = Faker::Hacker.say_something_smart
          if @comment.save
            p "Comment #{ii} has been saved for article #{@article.title}"
          else
            p @comment.errors
          end
        end
      else
        p @article.errors
      end
    end

  else
    raise "#{@user.errors.full_messages}"
  end

end
