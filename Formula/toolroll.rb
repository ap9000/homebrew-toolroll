class Toolroll < Formula
  desc "Control plane for unattended coding agents"
  homepage "https://github.com/ap9000/toolroll"
  url "https://registry.npmjs.org/toolroll/-/toolroll-0.9.92.tgz"
  sha256 "2e97507e2ba233849a73cb7987c763164f5a1c31c8cae58f1deb354f81fb862c"
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
