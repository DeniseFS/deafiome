# Before do
#     log "Tudo aqui ocorre antes do cenário"
#     end

    After do
        shot = page.save_screenshot("logs/shot.png")
        log shot
    end
