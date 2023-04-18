print("Hello world")
local suc, err = pcall(function() game:Shutdown() error("An error occured! Sorry!")end end)
print(err)