activate :i18n

module MyModule
  module SassFunctions
    include ::Sass::Script::Value

    def langs
      sass_strs = options[:context].app.extensions[:i18n].langs.map { |lang| String.new(lang.to_s) }
      List.new(sass_strs, :space)
    end
  end
end

::Sass::Script::Functions.send :include, MyModule::SassFunctions
