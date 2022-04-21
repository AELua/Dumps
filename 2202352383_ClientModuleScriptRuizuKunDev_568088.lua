-- Decompiled with the Synapse X Luau decompiler.

local l__Players__1 = game:GetService("Players");
local l__LocalPlayer__2 = l__Players__1.LocalPlayer;
local l__ReplicatedStorage__3 = game:GetService("ReplicatedStorage");
local v4 = {};
local l__RFs__5 = l__ReplicatedStorage__3:WaitForChild("RFs");
local l__ScreenGui__6 = l__LocalPlayer__2:WaitForChild("PlayerGui"):WaitForChild("ScreenGui");
local l__PlayerListF__7 = l__ScreenGui__6:WaitForChild("PlayerListF");
local l__CloseBtn__8 = l__PlayerListF__7:WaitForChild("CloseBtn");
local l__UIGridLayout__9 = l__PlayerListF__7:WaitForChild("Template"):WaitForChild("UIGridLayout");
local l__TokenF__10 = l__PlayerListF__7:WaitForChild("TokenF");
local l__407601751__11 = l__TokenF__10:WaitForChild("407601751");
local l__407707044__12 = l__TokenF__10:WaitForChild("407707044");
local l__407708588__13 = l__TokenF__10:WaitForChild("407708588");
local l__407709440__14 = l__TokenF__10:WaitForChild("407709440");
local l__407711794__15 = l__TokenF__10:WaitForChild("407711794");
local l__407712218__16 = l__TokenF__10:WaitForChild("407712218");
local v17 = {};
local u1 = nil;
local l__REs__2 = l__ReplicatedStorage__3:WaitForChild("REs");
v17[l__407601751__11] = function()
	if u1 then
		l__REs__2:FireServer("GiftTokens", u1, 407601751);
	end;
end;
v17[l__407707044__12] = function()
	if u1 then
		l__REs__2:FireServer("GiftTokens", u1, 407707044);
	end;
end;
v17[l__407708588__13] = function()
	if u1 then
		l__REs__2:FireServer("GiftTokens", u1, 407708588);
	end;
end;
v17[l__407709440__14] = function()
	if u1 then
		l__REs__2:FireServer("GiftTokens", u1, 407709440);
	end;
end;
v17[l__407711794__15] = function()
	if u1 then
		l__REs__2:FireServer("GiftTokens", u1, 407711794);
	end;
end;
v17[l__407712218__16] = function()
	if u1 then
		l__REs__2:FireServer("GiftTokens", u1, 407712218);
	end;
end;
v17[l__TokenF__10:WaitForChild("411028617")] = function()
	if u1 then
		l__REs__2:FireServer("GiftTokens", u1, 411028617);
	end;
end;
local l__HttpService__3 = game:GetService("HttpService");
local l__Inventory__4 = l__LocalPlayer__2:WaitForChild("PrivateStats"):WaitForChild("Inventory");
local u5 = {
	NonVIP = {
		[l__407601751__11] = "+200", 
		[l__407707044__12] = "+1100", 
		[l__407708588__13] = "+2600", 
		[l__407709440__14] = "+6000", 
		[l__407711794__15] = "+14000", 
		[l__407712218__16] = "+30000"
	}, 
	VIP = {
		[l__407601751__11] = "+400", 
		[l__407707044__12] = "+2200", 
		[l__407708588__13] = "+5200", 
		[l__407709440__14] = "+12000", 
		[l__407711794__15] = "+28000", 
		[l__407712218__16] = "+60000"
	}
};
local u6 = nil;
local l__PlayersListSF__7 = l__PlayerListF__7:WaitForChild("PlayersListSF");
local l__TemplateBtn__8 = l__UIGridLayout__9:WaitForChild("TemplateBtn");
local u9 = {};
local function u10()
	for v18, v19 in pairs(l__HttpService__3:JSONDecode(l__Inventory__4.Value).Vip.HaveVip and u5.VIP or u5.NonVIP) do
		v18.Text = v19;
	end;
end;
for v20, v21 in pairs(v17) do
	v20.MouseButton1Down:Connect(v21);
end;
l__ScreenGui__6:WaitForChild("MenuFrame"):WaitForChild("SpecialFrame"):WaitForChild("GiftBtn").MouseButton1Down:Connect(function()
	l__PlayerListF__7.Visible = true;
	l__TokenF__10.Visible = false;
	u6 = nil;
	l__PlayersListSF__7:ClearAllChildren();
	for v22, v23 in pairs(l__Players__1:GetPlayers()) do
		if v23 ~= l__LocalPlayer__2 then
			local v24 = l__TemplateBtn__8:Clone();
			v24.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. v23.UserId .. "&width=420&height=420&format=png";
			v24.Name = v23.Name;
			v24.TextLabel.Text = v23.Name;
			table.insert(u9, (v24.MouseButton1Down:Connect(function()
				u1 = v23;
				l__TokenF__10.Visible = true;
				if u6 and u6 ~= v24 then
					u6.BorderSizePixel = 0;
				end;
				v24.BorderSizePixel = 3;
				u6 = v24;
			end)));
			v24.Parent = l__PlayersListSF__7;
		end;
	end;
	l__UIGridLayout__9:Clone().Parent = l__PlayersListSF__7;
	u10();
end);
l__CloseBtn__8.MouseButton1Down:Connect(function()
	l__PlayerListF__7.Visible = false;
	for v25 = 1, #u9 do
		u9[v25]:Disconnect();
	end;
end);
local u11 = {
	UpdateData = function(p1)
		PlrData = p1;
	end
};
l__REs__2.OnClientEvent:Connect(function(p2, ...)
	if u11[p2] then
		u11[p2](...);
		return;
	end;
	warn(p2 .. " is an Invalid Keyword argument for RemoteEvent");
end);
local u12 = {};
function l__RFs__5.OnClientInvoke(p3, ...)
	if u12[p3] then
		return u12[p3](...);
	end;
	warn(p3 .. " is an Invalid Keyword argument for RemoteFunction");
end;
return {};
