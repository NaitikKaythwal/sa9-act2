# spec/prob2_spec.rb
require 'prob2'

RSpec.describe TodoList do
  let(:todolist) { TodoList.new() }
  describe "#add" do
    it "adds a todo to the list" do
      todolist.add("Go to the market")
      expect(todolist.todos).to include("Go to the market")
    end
  end

  describe "#remove" do
    it "removes a todo from the list" do
      todolist.add("Go to the market")
      todolist.remove("Go to the market")
      expect(todolist.todos).not_to include("Go to the market")
    end
  end

  describe "#todos" do
    it "returns all todos" do
      todolist.add("Go to the market")
      todolist.add("Finish homeWork")
      expect(todolist.todos).to eq(["Go to the market", "Finish homeWork"])
    end
  end
end
