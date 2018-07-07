require "pry"
class Transfer
  attr_reader :sender, :receiver, :amount
  attr_accessor :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
<<<<<<< HEAD
    if self.valid? && @sender.balance > @amount && @status== "pending"
      @sender.balance = @sender.balance - @amount
      #binding.pry
      @receiver.balance = @receiver.balance + @amount
      @status = "complete"
    else
=======
    if self.valid? & self.status == "pending"
      @sender -= @amount
      @receiver += @amount
      @status = "complete"
    else #self.valid? == false
>>>>>>> f7440fe74a0f0f6a1d52f79c9bde688ba58cf98d
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer
<<<<<<< HEAD
    if @status == "complete"
    @sender.balance += @amount
    @receiver.balance -= @amount
=======
    if @status = "complete"
    @sender += @amount
    @receiver -= @amount
>>>>>>> f7440fe74a0f0f6a1d52f79c9bde688ba58cf98d
    @status = "reversed"
  end

  end


end
