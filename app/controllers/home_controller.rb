class HomeController < ApplicationController
def top
    @players=Player.select("name","id")
    @teams=Team.select("name","id")
end
end
