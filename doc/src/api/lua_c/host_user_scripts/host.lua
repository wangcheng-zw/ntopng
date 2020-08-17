--! @brief Get the Host IP address and VLAN information.
--! @return table:<br>
--! ip: the host IP address<br>
--! vlan: the host VLAN ID (0 for no VLAN)
function host.getIp()

--! @brief Check if the host is local.
--! @return true if local, false otherwise
function host.isLocal()

--! @brief Get the nDPI application bytes.
--! @param app_id the nDPI application ID
--! @return the nDPI application bytes
function host.getApplicationBytes(int app_id)

--! @brief Get the bytes sent and received by the host.
--! @return table:<br>
--! bytes.sent: the bytes sent<br>
--! bytes.rcvd: the bytes received
function host.getBytes()

--! @brief Get the packets sent and received by the host.
--! @return table:<br>
--! packets.sent: the packets sent<br>
--! packets.rcvd: the packets received
function host.getPackets()

--! @brief Get the total flows of the host
--! @return table:<br>
--! total_flows.as_client: the number of flows generated by the host<br>
--! total_flows.as_server: the number of flows received by the host
function host.getNumFlows()

--! @brief Get time information about the host.
--! @return table:<br>
--! seen.first: the Unix timestamp when the host was first seen
--! seen.last: the Unix timestamp when the host was last seen
--! duration: the total seconds the host was seen
--! total_activity_time: the total seconds in which the host was active
function host.getTime()

--! @brief Get detailed DNS information on the host.
--! @return a lua table with the information. See DnsStats::lua for details
function host.getDNSInfo()

--! @brief Get detailed HTTP information on the host.
--! @return a lua table with the information. See HTTPstats::lua for details
function host.getHTTPInfo()

--! @brief Get the unique key to be used to store host timeseries data.
--! @return the host timeseries key
function host.getTsKey()
