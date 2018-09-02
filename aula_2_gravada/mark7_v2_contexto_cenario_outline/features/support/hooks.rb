After('@logout') do
    find(".profil-link a[href*='dropdown']").click
    find(".profil-link a[href$='logout']").click
end