class Flower::Schedulable
  def initialize(&block)
    @block = block
  end
  def schedule(flower, scheduler)
    @block.call flower, scheduler
  end
end

class Flower::Job

  def self.every(time, &block)
    Flower::JOBS << Flower::Schedulable.new do |flower, scheduler|
      scheduler.every time do
        block.call flower
      end
    end
  end

  def self.cron(cron, &block)
    Flower::JOBS << Flower::Schedulable.new do |flower, scheduler|
      scheduler.cron cron do
        block.call flower
      end
    end
  end

end
