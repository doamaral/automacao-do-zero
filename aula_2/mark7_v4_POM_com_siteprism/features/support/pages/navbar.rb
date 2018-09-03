class Navbar < SitePrism::Page
    element :menu_usuario, ".profil-link a[href*='dropdown']"
    element :logout_opt,  ".profil-link a[href$='logout']"

    def deslogar
        menu_usuario.click
        logout_opt.click
    end
end