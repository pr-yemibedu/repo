require 'markaby'

module RubyiUI

  module BuilderInstanceMethods

        def view &b
          html {
            head {

            }
            body {
              capture &b
            }
          }
        end

        def nav_bar(o = {})
          div(:id => o[:id]) {
            h1 o[:title]
            a "back"
          }
        end

        def panel(o = {})
          div(:class => "panel", :id => o[:id], :title => o[:title])
        end

        def list(o = {}, &b)
          ul(:id => o[:id], :title => o[:title]) {
            capture &b
          }
        end

        def list_item(o = {})
          li {
            a o[:name], :href => o[:href]
          }
        end
        
        def table(o = {}, &b)
          fieldset(o) {
            capture &b
          }
        end
        
        def table_row
          "row"
        end

        def form
          "myform"
        end
        
        def button(name, o = {})
        end
      
        def input_helper(o = {})
        end
        
        def text_box
        end
        
        def text_area
        end
        
        def toggle
        end
        
    end

    class Builder < Markaby::Builder
      def initialize
        super
        self.extend(BuilderInstanceMethods)
      end
    end
end
