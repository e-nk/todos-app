class TodoController < Sinatra::Base


    get '/hello' do
        "Welcome to my first controller"
    end

    post '/todos/create' do
        data = JSON.parse (request.body.read)
        #approach 1 (individual columns)
        today = Time.now
        title = data ["title"]
        description =data["description"]
        todo = Todo.create(title: title, description: description, createdAt: today)



        todo.to_json
    end


end