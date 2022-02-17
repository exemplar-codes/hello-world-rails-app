class ApplicationController < ActionController::Base
    def hello
        render html: "hello 😃, world!"
    end

    def tshirt
        render html: "<h1>Tshirt</h1>"
    end
end
