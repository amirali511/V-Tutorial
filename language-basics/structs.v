struct OS {
	name string
	pkg string
mut:
	kernel f32
}

fn (distro OS) write() string {
	return "$distro.name has package manager $distro.pkg and it's kernel is $distro.kernel"
}

fn (mut distro OS) change(version f32) {
	distro.kernel = version
}

fn main() {
	mut debian_sid := OS {
		name: "Debian-sid"
		pkg: "apt/apt-get"
		kernel: 6.11
	}
	println("${debian_sid.write()}")
	debian_sid.change(6.13)
	println("${debian_sid.write()}")
}