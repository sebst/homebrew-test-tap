class Gothanks3 < Formula
  desc "Automatically star your go.mod GitHub dependencies"
  homepage "https://github.com/psampaz/gothanks"
  url "https://github.com/psampaz/gothanks/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "932915b470a3c55edf6b6524d0062a762ae79c2c9b39685aa1a53aae53449265"
  license "MIT"
  head "https://github.com/psampaz/gothanks.git", branch: "master"

  bottle do
    root_url "https://github.com/sebst/homebrew-test-tap/releases/download/gothanks-0.5.0"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "be275c1099966e859e51054ed3b1c6961047d4dd59dc37c1a82c265fc189460f"
    sha256 cellar: :any_skip_relocation, ventura:      "9f943e9f8be846844d5aa834460da7fa69e71e172298757ac49c13ff8e3e7928"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a061a1a88028088898afe287161610f4a1ab1351c313fe112617fce7668325a1"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    ENV.delete "GITHUB_TOKEN"
    assert_match "no Github token found", shell_output(bin/"gothanks", 255)
  end
end
