# spec/prob4_spec.rb
require 'prob4'
RSpec.describe BankAccount do
  let(:bankaccount) { BankAccount.new(20) }
  describe "#deposit" do
    it "increases the balance by the deposit amount" do
      bankaccount.deposit(20)
      expect(bankaccount.balance).to eq(40)
    end
  end

  describe "#withdraw" do
    it "decreases the balance by the withdrawal amount if funds are available" do
      bankaccount.withdraw(10)
      expect(bankaccount.balance).to eq(10)
    end

    it "does not change the balance if insufficient funds" do
      bankaccount.withdraw(40)
      expect(bankaccount.balance).to eq(20)
    end
  end

  describe "#balance" do
    it "returns the current balance" do
      bankaccount.deposit(40)
      bankaccount.deposit(30)
      bankaccount.withdraw(20)
      expect(bankaccount.balance).to eq(70)
    end
  end
end
