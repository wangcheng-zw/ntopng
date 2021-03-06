--
-- (C) 2020 - ntop.org
--

local dirs = ntop.getDirs()
package.path = dirs.installdir .. "/scripts/lua/modules/?.lua;" .. package.path

require "lua_utils"
local json = require("dkjson")
local widgets_utils = require("widgets_utils")
local http_lint = require("http_lint")

local function reportError(msg)
    print(json.encode({ message = msg, success = false }))
end

local function format_params(data)
    return {
        ifid = data.interface,
        key = data.key,
        begin_time = data.begin_time,
        end_time = data.end_time,
        schema = data.schema,
        metric = data.metric
    }
end

local action = _POST["action"]

sendHTTPContentTypeHeader('application/json')

if (action == nil) then
  traceError(TRACE_ERROR, TRACE_CONSOLE, "Missing 'action' parameter. Bad CSRF?")
  reportError("Missing 'action' parameter. Bad CSRF?")
  return
end

local json_data = _POST["JSON"]
local data = json.decode(json_data)
local params = format_params(data)

tprint(data)

local response = {}

if (action == "add") then
    response.success, response.message = widgets_utils.add_widget(data.name, data.ds_hash, data.type, params)
elseif (action == "edit") then
    response.success, response.message = widgets_utils.edit_widget(data.widget_key, data.name, data.ds_hash, data.type, params)
elseif (action == "remove") then
    response.success, response.message = widgets_utils.delete_widget(data.widget_key)
else
    traceError(TRACE_ERROR, TRACE_CONSOLE, "Invalid 'action' parameter.")
    reportError("Invalid 'action' parameter.")
    return
end


print(json.encode(response))
