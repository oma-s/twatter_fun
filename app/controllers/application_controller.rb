class ApplicationController < ActionController::Base

    def hello
        render html: 'Hallo Mutti'
    end
end
