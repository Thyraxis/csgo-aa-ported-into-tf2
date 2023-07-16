local timer = 0;
 
local function csgo()
 
if (timer <= os.clock() and gui.GetValue("anti aim") == 1) then timer = os.clock() + 0.05
 
 

if (gui.GetValue("anti aim - custom yaw (real)") == 120) then 
	gui.SetValue("anti aim - custom yaw (real)", -140)
	gui.SetValue("anti aim - custom yaw (fake)", 120) 
else
	gui.SetValue("anti aim - custom yaw (real)", 120)
	gui.SetValue("anti aim - custom yaw (fake)", -135) 
end

end
end
 
callbacks.Unregister("Draw", "csgoaa")
callbacks.Register("Draw", "csgoaa", csgo)