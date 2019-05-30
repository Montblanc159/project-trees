class Initializer

  def initialize
    check_if_user_gave_input
    create_project
  end

  def check_if_user_gave_input
    abort("initproj: missing input ('video', 'web' or 'graphics')".colorize(:red)) if ARGV.empty?
  end

  def create_project
    request = ARGV.join
    if request == "video"
      Video.new
    elsif request == "graphics"
      Graphics.new
    elsif request == "web"
      Web.new
    else
      puts "initproj: WTF is your input (Three simple choices : 'video', 'web' or 'graphics')".colorize(:red)
    end
  end

end
