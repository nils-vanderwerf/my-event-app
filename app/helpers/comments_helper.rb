module CommentsHelper
    def render_stars(value)
        output = ''
        if (0..5).include?(value.to_i)
            value.to_i.times { output += content_tag(:i, "", :class => 'fa fa-star') 
        } 
        end
        output
    end
end
