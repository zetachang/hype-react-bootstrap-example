require "opal"
require "hyper-react"
require "react/react-source"
require "react/top_level_render"
require "reactstrap.min"

class Button < React::Component::Base
  imports "Reactstrap.Button"
end

class ButtonGroup < React::Component::Base
  imports "Reactstrap.ButtonGroup"
end


class Foo < React::Component::Base
  def render
    ButtonGroup() {
      Button { "Left" }
      Button { "Middle" }
      Button { "Right"}
    }
  end
end

React.render(React.create_element(Foo), `document.getElementById('container')`)
