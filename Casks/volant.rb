cask "volant" do
  version "0.3.30"
  sha256 "02e7e8f786048ea96d71019e09ce66c0d8fe5ba713b1a7e20c88cfc092030d78"

  url "https://usevolant.com/updates/Volant-#{version}.dmg"
  name "Volant"
  desc "Sandboxed launcher for apps, notes and agent workflows"
  homepage "https://usevolant.com/"

  livecheck do
    url "https://usevolant.com/updates/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Volant.app"

  zap trash: [
    "~/Library/Containers/com.mysticcoders.volant",
    "~/Library/Containers/com.mysticcoders.volant.AIHost",
    "~/Library/Containers/com.mysticcoders.volant.ExtensionHost",
    "~/Library/Containers/com.mysticcoders.volant.FetchHost",
    "~/Library/Containers/com.mysticcoders.volant.RatesHost",
  ]
end
