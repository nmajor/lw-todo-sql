class Task
  attr_accessor :title, :description, :done
  attr_reader :id

  def initialize(attr = {})
    @id = attr[:id]
    @title = attr[:title]
    @description = attr[:description]
    @done = attr[:done] || 0
  end

  def self.all
    # returns an array of arrays
    results = DB.execute("SELECT * FROM tasks")
    # .map
    results.map do |row|
      Task.new(id: row[0], title: row[1], description: row[2], done: row[3])
    end
  end

  # update
  # destroy
  # create
  # all
  # save
  # find
end
