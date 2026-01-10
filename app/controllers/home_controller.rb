class HomeController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index, :about, :services]
    def index

    end

    def about   

    end

    def services
    end
end
