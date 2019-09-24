require 'pry'

class Transfer
  
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender, receiver, status = "pending", amount)
    @sender = sender
    @receiver = receiver
    @status = status
    @amount = amount
  end
  
  def valid?
    @sender.valid? && @receiver.valid? ? true : false
  end
  
  def execute_transaction
<<<<<<< HEAD
    if @status != "complete" && @sender.valid? && @sender.balance > @amount
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    elsif @status != "complete" && (@sender.balance < @amount || @sender.valid? == false)
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
=======
    if @sender.balance > @amount && @status == "pending"
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    else
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
>>>>>>> cd44883faa6dcde9950f6c61537387b2ad2683d3
    end
  end
  
end
