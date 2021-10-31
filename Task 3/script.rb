class MDHtml

    def initialize(&block)
        @html = ''
        instance_eval &block
    end
    
    def div(&block)
        @html << "\n\t<div>"
        @html << block.call()
        @html << "</div>"
    end

    def html(&block)
        @html << "<!doctype html>\n\n"
        @html << "<html>\n"
        instance_eval &block
        @html << "\n</html>"
    end

    def head(&block)
        @html << "<head>\n"
        instance_eval &block
        @html << "\n</head>\n\n"
    end

    def meta(**name)
        @html << %{\t<meta name="#{name.keys.join}" content="#{name.values.join}">\n}
    end

    def title(name)
        @html << "\t<title>#{name}</title>\n"
    end

    def link(**name)
        @html << %{\n\t<link rel="#{name.keys.join}" href="#{name.values.join}">}
    end

    def body(&block)
        @html << "<body>"
        instance_eval &block
        @html << "</body>"
    end

    def script(**name)
        @html << %{\n\t<script src="#{name.values.join}"> </ script>\n}
    end

    def to_s
        print @html
    end
end

MDHtml.new do
    html do
        head do
        meta charset: "utf-8"
        title "The HTML5 Template"
        meta description: "The HTML5 Template"
    
        meta author: "MobiDev"
        link stylesheet: "css/styles.css?v=1.0"
        end
    
        body do
            div do
            "Hello World"
            end
        script src:"js/scripts.js"
        end
    end
end.to_s
