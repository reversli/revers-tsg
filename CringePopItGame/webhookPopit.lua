-- this only sends the error of the script to me, if you dont trust me dont execute it


local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "Protosmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Unknown"

local url =
   "https://discord.com/api/webhooks/892459309840076861/8_6ObmiWauaQL4TtNLgmHJJ92B0LsvVI8QqhtaK6xWnb8e9vTwzYvX-ED8rSNackiqIa"
local data = {
   ["content"] = "<@735432575140757605>",
   ["embeds"] = {
       {
           ["title"] = "**An error occurred, user: **"..game.Players.LocalPlayer.Name..", Exploit: "..webhookcheck,
           ["description"] = "The error was: \n"..shared.errorMessage,
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           }
       }
   }
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
