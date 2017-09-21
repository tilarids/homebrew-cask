cask 'golly' do
  if MacOS.version <= :mountain_lion
    version '2.6'
    sha256 '6fee35e8e4f63ee2c1b0913b7e8009b2548c4e4469050f9c31791900e1e97f16'

    url "https://downloads.sourceforge.net/golly/golly/golly-#{version}/golly-#{version}-mac106.zip"

    app "golly-#{version}-mac106/Golly.app"
    binary "golly-#{version}-mac106/bgolly"
  else
    version '3.0'
    sha256 '1540f8278d60e75aa13d908a9e8c2bb2f5c958720e03ebf2b33ed6469eb725a1'

    url "https://downloads.sourceforge.net/golly/golly/golly-#{version}/Golly-#{version}-Mac.dmg"
    appcast 'https://sourceforge.net/projects/golly/rss?path=/golly',
            checkpoint: '6550a211f72b108f5b7d1f5fc3cd02691d3da1ed755446fcf1e842cc3a0fc10d'

    app "golly-#{version}-mac/Golly.app"
    binary "golly-#{version}-mac/bgolly"
  end

  name 'Golly'
  homepage 'http://golly.sourceforge.net/'
end
