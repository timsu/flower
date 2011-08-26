class Ping < Flower::Command
  respond_to "time", "what time is it?", "what time is it"
  
  def self.respond(command, message, sender, flower)
    flower.say("@#{sender[:nick].downcase} It's ice cream time! (#{Time.now})", :mention => sender[:id])
  end

  def self.description
    "What time is it?"
  end
end
