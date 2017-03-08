REPOSITORY_URL='https://github.com/hayashier/homebrew-git-pulls'
HOMEBREW_GITPULLS_VERSION='0.0.1'

class GitPulls < Formula
  desc "git-pulls command pulls all git repository under specified paths."
  homepage "#{REPOSITORY_URL}/README.md"
  url "#{REPOSITORY_URL}/bin/git-pulls"
  sha256 "8c73c2e5325ec7d6568dc4129770e59f2e9d46898f86c9f147420ec4d2760c39"
  head "#{REPOSITORY_URL}.git", :tag => "#{HOMEBREW_GITPULLS_VERSION}"
  version "#{HOMEBREW_GITPULLS_VERSION}"

  def install
    bin.install "bin/git-pulls"
  end

  test do
    system "false"
  end
end
