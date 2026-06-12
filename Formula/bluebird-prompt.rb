class BluebirdPrompt < Formula
  desc "Lightweight ZSH prompt with Powerline-style design and Git branch integration"
  homepage "https://github.com/bedirisinghe/bluebird-prompt"
  license "MIT"

  head "https://github.com/bedirisinghe/bluebird-prompt.git", branch: "main"

  # Update url and sha256 after creating a tagged release:
  # url "https://github.com/bedirisinghe/bluebird-prompt/archive/refs/tags/v1.0.0.tar.gz"
  # sha256 "REPLACE_WITH_SHA256"
  # version "1.0.0"

  def install
    share.install "prompt.zsh" => "bluebird-prompt/prompt.zsh"
    (share/"bluebird-prompt/fonts").install "fonts/MesloLGLNerdFont-Regular.ttf"
  end

  def caveats
    <<~EOS
      Add the following line to your ~/.zshrc:

        source "#{share}/bluebird-prompt/prompt.zsh"

      Then reload your shell:

        source ~/.zshrc

      To install the bundled Nerd Font, copy it to your fonts directory:

        cp "#{share}/bluebird-prompt/fonts/MesloLGLNerdFont-Regular.ttf" ~/Library/Fonts/

      Then set your terminal font to: MesloLGL Nerd Font
    EOS
  end

  test do
    assert_predicate share/"bluebird-prompt/prompt.zsh", :exist?
    assert_predicate share/"bluebird-prompt/fonts/MesloLGLNerdFont-Regular.ttf", :exist?
  end
end
