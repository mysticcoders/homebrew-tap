cask "volant" do
  version "0.4.5"
  sha256 "7614c81a2d9a9a89b53b2dabbfb2daffb11f13ccd63669d4a018185b8b08c0aa"

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
