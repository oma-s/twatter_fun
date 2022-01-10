class ApplicationController < ActionController::Base

    def hello
        include SessionsHelper
        render html: 'Hallo Mutti'
    end
end
