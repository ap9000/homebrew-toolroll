class Toolroll < Formula
  desc "Control plane for unattended coding agents"
  homepage "https://github.com/ap9000/toolroll"
  url "https://registry.npmjs.org/toolroll/-/toolroll-0.9.30.tgz"
  sha256 "05da995377d4e532d0fb3a6b9dedf1a2961f982ba351dd36c12368c21b484790"
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
