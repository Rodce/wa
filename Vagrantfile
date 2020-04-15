nodes = [
  { :hostname => 'debian-e',   :ip => '192.168.31.176', :image => "debian/buster64", :ssh_port => '2245'},
  
]

Vagrant.configure("2") do |config|

  nodes.each do |node|
    config.vm.define node[:hostname] do |nodeconfig|
      nodeconfig.vm.hostname = node[:hostname]
      nodeconfig.vm.network :public_network, auto_config: false
      nodeconfig.vm.provision "shell",
          run: "always",
          inline: "ip addr add 192.168.31.130/24 dev eth0"
      nodeconfig.vm.box = node[:image]
      nodeconfig.vm.network :forwarded_port, guest: '22', host: node[:ssh_port], id: "ssh"


    end

  end

end

