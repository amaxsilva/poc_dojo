module Helper
    def tirar_foto(nome_foto, resultado)
        time = Time.now.strftime('%Y-%m-%d %H%M%S')
        caminho = "reports/screenshots/test_#{resultado}"
        foto = "#{caminho}/#{nome_foto}_#{time}.png"
        page.save_screenshot(foto)
      end
end