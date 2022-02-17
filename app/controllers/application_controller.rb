class ApplicationController < ActionController::Base
    def hello
        render html: "hello 😃, world!"
    end

    def tshirt
        render html: "Tshirt"
    end
end
