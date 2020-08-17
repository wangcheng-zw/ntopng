--! @brief Get ntopng directory information.
--! @return table (installdir, workingdir, scriptdir, httpdocsdir, callbacksdir).
function ntop.getDirs()

--! @brief Get ntopng status information.
--! @return ntopng information.
function ntop.getInfo()

--! @brief Get seconds from ntopng startup.
--! @return ntopng uptime in seconds.
function ntop.getUptime()

--! @brief Get the ntopng HTTP prefix.
--! @details The HTTP prefix is the initial part of the ntopng URL, which consists of HTTP host, port and optionally a user-defined prefix. Any URL within ntopng should include this prefix.
--! @return the HTTP prefix.
function ntop.getHttpPrefix()

--! @brief Generate a random value to prevent CSRF and XSRF attacks.
--! @return the token value.
--! @note Any HTTP POST request must contain a "csrf" field with a token value generated by a call to this function.
function ntop.getRandomCSRFValue()

--! @brief Check if ntopng is shuttind down.
--! @return true if is shuttting down, false otherwise.
function ntop.isShutdown()

--! @brief Get the ntopng local networks list.
--! @return table (network_address -> "").
function ntop.getLocalNetworks()

--! @brief Add a network to the ntopng local networks list.
--! @param network_cidr the network to add in CIDR format.
function ntop.addLocalNetwork(string network_cidr)

--! @brief Set L2 device type.
--! @param mac device MAC address
--! @param device_type the device type id to set.
--! @param overwrite if true, the existing device type, if any, will be overwritten.
function ntop.setMacDeviceType(string mac, int device_type, bool overwrite)

--! @brief Reload Host Pool membership information after changes from Lua.
function interface.reloadHostPools()

--! @brief Retrieves a ntopng local network by its id.
--! @param network_id the local network id.
--! @return the network address on success, an empty string otherwise.
function ntop.getNetworkNameById(int network_id)

--! @brief Retrieves a ntopng local network id by its name.
--! @param network_cidr the local network cidr.
--! @return the network id on success, -1 otherwise.
function ntop.getNetworkIdByName(string network_cidr)

--! @brief Get information about the currest host.
--! @return table (ip, instance_name).
function ntop.getHostInformation()

--! @brief Get ntopng host statistics.
--! @return table (cpu_load, cpu_idle, mem_total, mem_free, mem_buffers, mem_cached, mem_shmem. mem_used).
function ntop.systemHostStat()

--! @brief Send a message to syslog.
--! @param message the message to send.
--! @param syslog_severity an integer representing the standard syslog severity as per RFC 5424. LOG_INFO is used when severity is not specified.
function ntop.syslog(string message, int syslog_severity);

--! @brief Set ntopng logging level.
--! @param level one of "trace", "debug", "info", "normal", "warning", "error".
function ntop.setLoggingLevel(string level)

--! @brief Log a message.
--! @param msg the message to log.
--! @note Message will be logged with "normal" level.
function ntop.traceEvent(string msg)

--! @brief Check if verbose trace is enabled.
--! @return true if verborse trace is enabled, false otherwise.
function ntop.verboseTrace()

--! @brief Get the current time in milliseconds.
--! @return the current milliseconds time.
function ntop.gettimemsec()

--! @brief Get the current CPU ticks.
--! @return the current CPU ticks.
function ntop.getticks()

--! @brief Get the CPU ticks per second.
--! @return the CPU ticks per second.
--! @notes this can be used with ntop.getticks() deltas to calculate time spent.
function ntop.gettickspersec()

--! @brief Check if the ntopng GUI login is disable.
--! @return true if login is disabled, false otherwise.
function ntop.isLoginDisabled()

--! @brief Check if ntopng has seen any VLAN tagged traffic.
--! @return true if VLAN traffic has been seen, false otherwise.
function ntop.hasVLANs()

--! @brief Check if ntopng has Geo IP support available.
--! @return true if Geo IP is available, false otherwise.
function ntop.hasGeoIP()

--! @brief Check if the operating system is Windows.
--! @return true if Windows, false otherwise.
function ntop.isWindows()

--! @brief Sleep with milliseconds accuracy.
--! @param duration in milliseconds.
function ntop.msleep(int duration)

--! @brief Get the manufacturer name from mac address.
--! @param mac the MAC address.
--! @return table(short, extended) on success, nil otherwise.
function ntop.getMacManufacturer(string mac)

--! @brief Compute the MD5 of the provided string.
--! @param s the string to hash
--! @return the computed string MD5.
function ntop.md5(string s)

--! @brief Execute a MySQL query and get the result
--! @param query the query to execute
--! @return the query result
--! @note This only works when ntopng is configured with "-F=mysql"
function ntop.exec_sql_query(string query)

--! @brief Resets multiple stats in ntopng, which include the hosts and mac traffic counters.
--! @note This is the function called when "Midnight Stats Reset" is enabled from the GUI.
function ntop.resetStats()

--! @brief Check if ntopng has the pro features.
--! @return true if the pro features are available, false otherwise.
function ntop.isPro()

--! @brief Check if ntopng has the Enterprise M features.
--! @return true if the Enterprise M features are available, false otherwise.
function ntop.isEnterpriseM()

--! @brief Check if ntopng has the Enterprise L features.
--! @return true if the Enterprise L features are available, false otherwise.
function ntop.isEnterpriseL()

--! @brief Check if ntopng is running as a systemd service.
--! @return true if running as service, false otherwise.
function ntop.isPackage()

--! @brief Get the startup Unix epoch of ntopng
--! @return the startup epoch
function ntop.getStartupEpoch()

--! @brief Restart ntopng (when running as a service)
--! @note This only works when ntop.isPackage() returns true
function ntop.serviceRestart()

--! @brief Match the given host into an nDPI category.
--! @param host the host to match
--! @return value the nDPI category ID on success, nil otherwise.
function ntop.matchCustomCategory(string host)

--! @brief Converts a TLS version ID to the corresponding TLS version name.
--! @param tls_version the TLS version ID
--! @return the TLS version name
function ntop.getTLSVersionName(int tls_version)

--! @brief Check if the given bit is set into the bitmap
--! @param bitmap the numeric bitmap
--! @param bit the bit index to check
--! @return true if the bit is set, false otherwise
function ntop.bitmapIsSet(int bitmap, int bit)

--! @brief Set a bit into the bitmap
--! @param bitmap the numeric bitmap
--! @param bit the bit index to set
--! @return true if the bitmap has changed, false otherwise
function ntop.bitmapSet(int bitmap, int bit)

--! @brief Clear a bit into the bitmap
--! @param bitmap the numeric bitmap
--! @param bit the bit index to clear
--! @return true if the bitmap has changed, false otherwise
function ntop.bitmapClear(int bitmap, int bit)

--! @brief Associate the protocol to the specified nDPI category
--! @param proto the protocol id
--! @param category the category id
function ntop.setnDPIProtoCategory(int proto, int category)

--! @brief Get the nDPI category currently associated to the protocol
--! @param proto the protocol id to query the category for
--! @return a table (id->category_id, name->category_name) on success, nil otherwise.
--! @note the protocol to category mapping can be changed dynamically via *setnDPICategory*
function ntop.getnDPIProtoCategory(int proto)

--! @brief Initialize an empty patricia tree into this vm
function ntop.ptreeClear()

--! @brief Insert an address into the vm patricia tree
--! @param addr the address to insert
--! @param value a numeric value to associate to the node (except 65535)
--! @return true on success, false otherwise
function ntop.ptreeInsert(string addr, uint16_t value)

--! @brief Match a given address with the vm patricia tree
--! @param addr the address to match
--! @return the numeric value associated with the node on success, nil otherwise
function ntop.ptreeMatch(string addr)

--! @brief Check if the current periodic script deadline is near
--! @return true if the deadline is approaching, false otherwise
--! @note this can be used by a periodic script to detect if it should hurry up to finish its work
function ntop.isDeadlineApproaching()

--! @brief Get the current periodic script deadline.
--! @return the periodic script deadline on success, 0 otherwise
function ntop.getDeadline()

--! @brief Check Internet speed using speedtest.net services
--! @return JSON that includes the speedtest report, or NULL in case of error
function ntop.speedtest()
