class HomeController < ApplicationController
def top
    @players=Player.select("name","id")
end
end
