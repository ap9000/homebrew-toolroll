class Toolroll < Formula
  desc "Control plane for unattended coding agents"
  homepage "https://github.com/ap9000/toolroll"
  url "https://registry.npmjs.org/toolroll/-/toolroll-0.9.54.tgz"
  sha256 "8ba4a55cc0529ea52af1da137aaf867461b8e35fcdac453cb6b85d1002cba5a3"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/toolroll --version")
  end
end
