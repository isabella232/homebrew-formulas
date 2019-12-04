class Devclient < Formula
	desc "Conclusive Development Cable Client"
	homepage "https://github.com/conclusiveeng/devclient"
	url "https://github.com/conclusiveeng/devclient.git", :branch => "dev"

	depends_on "cmake"
	depends_on "libtool"
	depends_on "automake"
	depends_on "libusb"
	depends_on "libusb-compat"
	depends_on "hidapi"
	depends_on "libftdi"
	depends_on "gtkmm3"
	depends_on "telnet"
	depends_on "pkg-config"

	def install
		system "mkdir -pv build"
		system "cd build && cmake .."
		system "cd build && make"
		system "cd build && make install"
	end
end