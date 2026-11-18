cask "volant" do
  version "0.4.4"
  sha256 "9a772482b695fe0e737a9d68886b222b063e5080750dd246616ca68b7b5f7088"

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
