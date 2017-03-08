class GitPulls < Formula
  desc "git-pulls command pulls all git repository under specified paths."
  homepage "https://github.com/hayashier/homebrew-git-pulls/README.md"
  head "https://github.com/hayashier/homebrew-git-pulls.git"
  version "0.0.1"

  def install
    bin.install "bin/git-pulls"
  end

  test do
    system "false"
  end
end
