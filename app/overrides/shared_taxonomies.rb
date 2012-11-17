Deface::Override.new(:virtual_path => %q{spree/shared/_taxonomies},
                     :name => %q{remove shop by for taxomomies header},
                     :replace => %q{h6.taxonomy-root},
                     :text => %q{<h6 class='taxonomy-root'><%= taxonomy.name.singularize %></h6>},
                     :disabled => false)