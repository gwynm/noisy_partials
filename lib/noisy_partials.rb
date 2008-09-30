module ActionView
  module Partials
    def render_partial_with_explanation(*args) 
      start_explanation = "\n<!-- START PARTIAL #{args[0]} -->\n"
      end_explanation = "\n<!-- END PARTIAL #{args[0]} -->\n"
      start_explanation + render_partial_without_explanation(*args) + end_explanation
    end

    alias_method_chain :render_partial,:explanation     
  end
end
 
