Deface::Override.new(:virtual_path => %q{spree/taxons/show},
                     :name => %q{change_taxon_title},
                     :replace => %q{h3.taxon-title},
                     :text => %q{<h1 class="taxon-title"><%= accurate_title %></h1>},
                     :disabled => false)