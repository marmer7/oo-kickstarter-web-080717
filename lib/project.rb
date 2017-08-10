=begin
When a Project instance is initialized, it should be initialized with a
@backers variable set to an empty array. Instances of the Project class
should have an attr_accessor for backers so that projects can add backers
to their list of backers and report on the backers who support them.
=end

class Project
  attr_accessor :backers
  attr_reader :title

  def initialize(project_title)
    @backers = Array.new
    @title = project_title
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end

end
