class Navbar
    include Capybara::DSL

    def sair
        find(".profil-link a[href*='dropdown']").click
        find(".profil-link a[href$='logout']").click
    end
end

class Sidebar
    include Capybara::DSL
    
    def acessa_perfil
        within('aside[class=navigation]') do
            click_link('Perfil')
        end
    end
end