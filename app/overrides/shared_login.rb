Deface::Override.new(:virtual_path => %q{spree/shared/_login},
                     :name => %q{remove br tags from login page},
                     :remove => %q{br},
                     :disabled => true)

Deface::Override.new(:virtual_path => %q{spree/shared/_login},
                     :name => %q{remove p tags from login page},
                     :remove => %q{p},
                     :disabled => true)