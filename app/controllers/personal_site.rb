class PersonalSite
  def self.call(env)
    case env["PATH_INFO"]
    when "/" then index
    when "/about" then about
    when "/cute_puppies" then puppies
    when "/main.css" then main_css
    when "/about.css" then about_css
    when "/cute_puppies.css" then puppies_css
    else
      error
    end
  end

  def self.index
    render_view("index.html")
  end

  def self.about
    render_view("about.html")
  end

  def self.puppies
    render_view("cute_puppies.html")
  end

  def self.main_css
    render_static("/main.css")
  end

  def self.about_css
    render_static("/about.css")
  end

  def self.puppies_css
    render_static("/cute_puppies.css")
  end

  def self.render_view(page,code = "200")
    [code,{"Content-Type" => "text/html"},[File.read("./app/views/#{page}")]]
  end

  def self.render_static(asset)
    [200,{"Content-Type" => "text/html"},[File.read("./public/#{asset}")]]
  end
end
