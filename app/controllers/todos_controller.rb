class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :update, :destroy]
  # GET /todos
  def index
    @todos = Todo.all
    json_response(@todos)
  end

  # POST /todos
  def
    @todo = Todo.create!(todo_params)
    json_response(@todo, :created)
  end

end
