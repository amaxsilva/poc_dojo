# FrameWork-Ruby-UI

## Projeto basico Ruby + Cucumber + allure-plugin

### Instalando NODE
- Baixar diretamente do site: https://nodejs.org/en/

### Instalando o Ruby

- Homebrew (macOS)
```
command:
brew install ruby
```

- Windowns
```
RubyInstaller
Se você está no Windows, existe um ótimo projeto para ajudá-lo a instalar o Ruby: RubyInstaller. Ele te dá tudo o que você precisa para configurar um ambiente de desenvolvimento em Ruby completo no Windows.

Apenas baixe, rode e está pronto!
```
### Instalando as gems

```ruby
bundle install
```

https://rubyinstaller.org

### Executando teste com Allure Repost

- Execute o teste com o comando: 

```
cucumber
```

- Gerar o relatório:

```
allure generate allure-results —clean
```

- Abrir o relatorio gerado em html

```
allure open allure-report
```
