class Video

  def initialize
    ARGV.clear
    @date = tidy_date
    @project_name = ask_name
    create_directories
    create_files
    puts "Finished ♥".colorize(:magenta)
  end

  def tidy_date
    a = Time.now
    "#{a.year}-#{a.month}-#{a.day}"
  end

  def ask_name
    print "Video project name: ".colorize(:blue)
    name = gets.chomp
  end

  def create_directories
    @project = "#{@date}_#{@project_name}"
    Dir.mkdir("./#{@project}")
    Dir.chdir(@project)
    Dir.mkdir("./.admin")
    Dir.mkdir("./0_refs")
    Dir.mkdir("./1_docs")
    Dir.mkdir("./2_drafts")
    Dir.mkdir("./3_production")
    Dir.mkdir("./3_production/0_scenario")
    Dir.mkdir("./3_production/1_scouting")
    Dir.mkdir("./3_production/2_storyboard")
    Dir.mkdir("./3_production/3_rushs")
    Dir.mkdir("./3_production/4_assets")
    Dir.mkdir("./4_exports")
    Dir.mkdir("./4_exports/0_off-line")
    Dir.mkdir("./4_exports/1_on-line")
    puts "Directories created".colorize(:green)
  end

  def create_files
    system("touch ./1_docs/note-intention.md")
    file = File.open("./1_docs/note-intention.md", "w")
    file.puts("# #{@project_name} - Note d'intention")
    file.puts("")
    file.puts("")
    file.puts("Made with ♥ by Guillaume")
    file.close


    system("touch ./3_production/0_scenario/scenario.md")
    file = File.open("./3_production/0_scenario/scenario.md", "w")
    file.puts("# #{@project_name} - Note d'intention")
    file.puts("")
    file.puts("")
    file.puts("Made with ♥ by Guillaume")


    system("touch ./1_docs/tournage.md")
    file = File.open("./1_docs/tournage.md", "w")
    file.puts("# #{@project_name} - Déroulé du tournage")
    file.puts("")
    file.puts("")
    file.puts("Made with ♥ by Guillaume")
    file.close
    puts "Files created".colorize(:green)
  end

end
