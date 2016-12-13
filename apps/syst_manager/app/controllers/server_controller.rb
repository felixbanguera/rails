class ServerController < ApplicationController
  def index
    @servers = get_servers
  end

  def get_servers
    aux = []
    server =
    {:uw_diskused=>132.56,
    :uw_diskused_perc=>39.95,
    :uw_memused=>0.0,
    :uw_cpuused=>12.67,
    :uw_cputop=>[["Sublime", "7.2"], ["opendirectoryd", "5.1"], ["Google", "2.8"], ["Sublime", "2.6"], ["iTerm2", "1.9"], ["coreaudiod", "1.7"], ["ruby", "1.5"], ["Skype", "1.1"], ["sh", "1.0"], ["Google", "0.8"]],
    :uw_memtop=>[["Google", "4.3"], ["Google", "3.6"], ["Google", "3.5"], ["Google", "3.5"], ["Google", "3.4"], ["Google", "3.3"], ["Google", "3.1"], ["Google", "3.0"], ["Google", "2.8"], ["Google", "2.6"]]}

    5.times{|i|
      aux_s = server.clone
      aux_s[:name] = "server_#{i}"
      aux_s[:id] = "sreverid#{i}"
      aux.push aux_s
    }

    aux
  end

end
