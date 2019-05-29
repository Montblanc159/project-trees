require_relative "video"
require_relative "web"
require_relative "graphics"


class Initializer

  def initialize
    check_if_user_gave_input
    create_project
  end

  def check_if_user_gave_input
    abort("mkrubydir: missing input") if ARGV.empty?
  end

  def create_project
    if ARGV == "video"
      Video.new
    elsif ARGV == "graphics"
      Graphics.new
    elsif ARGV == "web"
      Web.new
    else
      puts "WTF ?"
    end
  end

end
