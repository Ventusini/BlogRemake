require 'json'

class JsonController < ActionController::Base

  def to_json
   @json= get_articles_user
  end
  
  def to_json2
    @json=get_categories_articles
  end
  
  private
  def get_articles_user
    usr=User.all
    cat=Category.all
    @json=Jbuilder.new
    @json.array! usr do |u|
      @json.set! :username, u.username
      @json.set! :email, u.email
      @json.set! :cat do
        @json.array! cat do |ac|
          @json.set! :name, ac.name
          @json.set! :arts do
            @json.array! ac.articles do |a|
              if(u==a.user)
                @json.set! :title, a.title
                @json.set! :description, a.description
              end
            end
          end
        end
      end
    end
  end
  
  def get_categories_articles
    cats=Category.all
    arts=Article.all
    @json=Jbuilder.new
    @json.array! cats do |c|
      @json.set! :CategoryName, c.name
      @json.set! :articles do 
        @json.array! c.articles do |a|
          @json.set! :title, a.title
        end
      end
    end
  end
  
  
  
end