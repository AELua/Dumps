-- Decompiled with the Synapse X Luau decompiler.

math.randomseed(tick());
while true do
	wait(0.1);
	if _G.Flying ~= nil and _G.NearPPTrainingPart1 ~= nil and _G.NearPPTrainingPart2 ~= nil and _G.NearPPTrainingPart3 ~= nil and _G.NearPPTrainingPart4 ~= nil then
		break;
	end;
end;
local l__ContentProvider__1 = game:GetService("ContentProvider");
local l__Parent__1 = script.Parent;
local l__HitSound__2 = l__Parent__1:WaitForChild("Handle"):WaitForChild("HitSound");
local l__Debris__3 = game:GetService("Debris");
AllAnimations = {};
local l__Debris__4 = game:GetService("Debris");
local u2 = { "K", "M", "B", "T", "Qa", "Qi", "Sx", "Sp", "Oc", "No", "Dc", "Ud", "Dd", "Td", "Qad" };
function AddComas(p1)
	local v5 = #u2 - -1;
	while true do
		local v6 = math.pow(10, v5 * 3);
		if v6 <= p1 then
			local v7 = ("%.3f"):format(p1 / v6) .. u2[v5];
			local v8 = string.find(v7, "%a+");
			local v9 = #tostring(string.match(v7, "%d+"));
			if v9 == 1 then
				return ("%.3f"):format(p1 / v6) .. u2[v5];
			end;
			if v9 == 2 then
				return ("%.2f"):format(p1 / v6) .. u2[v5];
			end;
			if v9 == 3 then
				return ("%.1f"):format(p1 / v6) .. u2[v5];
			end;
		end;
		if 0 <= -1 then
			if v5 < 1 then

			else
				break;
			end;
		elseif 1 < v5 then

		else
			break;
		end;
		v5 = v5 + -1;	
	end;
	return tostring(p1);
end;
local l__LocalPlayer__3 = game:GetService("Players").LocalPlayer;
local l__XpFrame__4 = l__Parent__1:WaitForChild("XpFrame");
function CreateXpGuiFunc(p2)
	if string.find(l__LocalPlayer__3:WaitForChild("PlayerGui"):WaitForChild("ScreenGui"):WaitForChild("MenuFrame"):WaitForChild("SettingFrame"):WaitForChild("SettingTxt5"):WaitForChild("ToggleBtn").Text, "On") then
		local l__ScreenGui__10 = l__LocalPlayer__3:WaitForChild("PlayerGui"):WaitForChild("ScreenGui");
		if l__ScreenGui__10:FindFirstChild("PPXpFrame") then
			return;
		end;
		local v11 = l__XpFrame__4:Clone();
		local l__PPImg__12 = v11:WaitForChild("PPImg");
		local l__Txt__13 = l__PPImg__12:WaitForChild("Txt");
		local v14 = game:GetService("HttpService"):JSONDecode(l__LocalPlayer__3:WaitForChild("PrivateStats"):WaitForChild("Inventory").Value);
		if v14 then
			if v14.PPMultiplier then
				l__Txt__13.Text = "+" .. AddComas(p2 * v14.PPMultiplier) .. " Psychic Power";
			end;
		end;
		v11.Name = "PPXpFrame";
		v11.Parent = l__ScreenGui__10;
		v11.Position = UDim2.new(math.random(1, 6.5) / 10, 0, math.random(2, 7) / 10, 0);
		pcall(function()
			v11:TweenSize(UDim2.new(0.06, 0, 0.102, 0), "Out", "Back", 0.5, true);
		end);
		wait(0.75);
		local v15 = 0 - 1;
		while true do
			l__PPImg__12.ImageTransparency = l__PPImg__12.ImageTransparency + 0.1;
			l__Txt__13.TextTransparency = l__Txt__13.TextTransparency + 0.1;
			l__Txt__13.TextStrokeTransparency = l__Txt__13.TextStrokeTransparency + 0.1;
			wait(0.05);
			if 0 <= 1 then
				if v15 < 10 then

				else
					break;
				end;
			elseif 10 < v15 then

			else
				break;
			end;
			v15 = v15 + 1;		
		end;
		v11:Destroy();
	end;
end;
local l__Anim1__5 = l__Parent__1:WaitForChild("Anim1");
local l__Anim2__6 = l__Parent__1:WaitForChild("Anim2");
local function u7(p3)
	if not AllAnimations[p3.Name] then
		AllAnimations[p3.Name] = Humanoid:LoadAnimation(p3);
	end;
	if p3.Name == "Anim1" then
		if AllAnimations.Anim2 then
			AllAnimations.Anim2:Stop();
		end;
		if l__Anim1__5.AnimationId ~= "rbxassetid://2207526581" then
			l__LocalPlayer__3:Kick("AnimationId Hack Detected! I apologize for any misunderstanding. Thank you very much for playing my game!");
			return;
		else
			AllAnimations.Anim1:Play(0.25, 1, 1);
			return;
		end;
	end;
	if p3.Name == "Anim2" then
		if AllAnimations.Anim1 then
			AllAnimations.Anim1:Stop();
		end;
		if l__Anim2__6.AnimationId == "rbxassetid://2207540334" then
			AllAnimations.Anim2:Play(0.25, 1, 1);
			return;
		end;
	else
		return;
	end;
	l__LocalPlayer__3:Kick("AnimationId Hack Detected! I apologize for any misunderstanding. Thank you very much for playing my game!");
end;
local l__RemoteEvent__8 = game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent");
function OnEquipped()
	Activated = false;
	local l__Parent__16 = l__Parent__1.Parent;
	if l__Parent__16 then
		if l__Parent__16:FindFirstChild("Humanoid") then
			if l__Parent__16.Humanoid.ClassName == "Humanoid" then
				Humanoid = l__Parent__16:FindFirstChild("Humanoid");
				NormalWalkSpeed = Humanoid.WalkSpeed;
				NormalJumpPower = Humanoid.JumpPower;
				Humanoid.WalkSpeed = 0;
				Humanoid.JumpPower = 0;
				if not _G.Flying then
					u7(l__Anim1__5);
					Activated = true;
					wait(1);
					while true do
						if Activated == true then

						else
							break;
						end;
						if l__LocalPlayer__3:WaitForChild("PlayerGui"):WaitForChild("ScreenGui"):WaitForChild("QuestMsgFrame").Visible == false then
							if l__LocalPlayer__3:WaitForChild("PlayerGui"):WaitForChild("ScreenGui"):WaitForChild("QuestTalkBtn").Visible == false then
								if _G.NearPPTrainingPart1 then
									l__RemoteEvent__8:FireServer({ "+PP3" });
									if 1000000 <= l__LocalPlayer__3:WaitForChild("PrivateStats"):WaitForChild("PsychicPower").Value then
										spawn(function()
											CreateXpGuiFunc(100);
										end);
									end;
								elseif _G.NearPPTrainingPart2 then
									l__RemoteEvent__8:FireServer({ "+PP4" });
									if 1000000000 <= l__LocalPlayer__3:WaitForChild("PrivateStats"):WaitForChild("PsychicPower").Value then
										spawn(function()
											CreateXpGuiFunc(10000);
										end);
									end;
								elseif _G.NearPPTrainingPart3 then
									l__RemoteEvent__8:FireServer({ "+PP5" });
									if 1000000000000 <= l__LocalPlayer__3:WaitForChild("PrivateStats"):WaitForChild("PsychicPower").Value then
										spawn(function()
											CreateXpGuiFunc(1000000);
										end);
									end;
								elseif _G.NearPPTrainingPart4 then
									l__RemoteEvent__8:FireServer({ "+PP6" });
									if 1000000000000000 <= l__LocalPlayer__3:WaitForChild("PrivateStats"):WaitForChild("PsychicPower").Value then
										spawn(function()
											CreateXpGuiFunc(100000000);
										end);
									end;
								else
									l__RemoteEvent__8:FireServer({ "+PP1" });
									spawn(function()
										CreateXpGuiFunc(1);
									end);
								end;
							end;
						end;
						wait(1.5);					
					end;
				else
					u7(l__Anim2__6);
					Activated = true;
					wait(1);
					while true do
						if Activated == true then

						else
							break;
						end;
						if _G.NearPPTrainingPart1 then
							l__RemoteEvent__8:FireServer({ "+PP3" });
							if 1000000 <= l__LocalPlayer__3:WaitForChild("PrivateStats"):WaitForChild("PsychicPower").Value then
								spawn(function()
									CreateXpGuiFunc(100);
								end);
							end;
						elseif _G.NearPPTrainingPart2 then
							l__RemoteEvent__8:FireServer({ "+PP4" });
							if 1000000000 <= l__LocalPlayer__3:WaitForChild("PrivateStats"):WaitForChild("PsychicPower").Value then
								spawn(function()
									CreateXpGuiFunc(10000);
								end);
							end;
						elseif _G.NearPPTrainingPart3 then
							l__RemoteEvent__8:FireServer({ "+PP5" });
							if 1000000000000 <= l__LocalPlayer__3:WaitForChild("PrivateStats"):WaitForChild("PsychicPower").Value then
								spawn(function()
									CreateXpGuiFunc(1000000);
								end);
							end;
						elseif _G.NearPPTrainingPart4 then
							l__RemoteEvent__8:FireServer({ "+PP6" });
							if 1000000000000000 <= l__LocalPlayer__3:WaitForChild("PrivateStats"):WaitForChild("PsychicPower").Value then
								spawn(function()
									CreateXpGuiFunc(100000000);
								end);
							end;
						else
							l__RemoteEvent__8:FireServer({ "+PP2" });
							spawn(function()
								CreateXpGuiFunc(10);
							end);
						end;
						wait(1.5);					
					end;
				end;
			end;
		end;
	end;
end;
local function u9(p4)
	for v17, v18 in pairs(AllAnimations) do
		v18:Stop();
	end;
end;
function OnUnequipped()
	Activated = false;
	u9();
	Humanoid.JumpPower = NormalJumpPower;
	Humanoid.WalkSpeed = NormalWalkSpeed;
	if l__LocalPlayer__3:WaitForChild("PlayerGui"):WaitForChild("ScreenGui"):FindFirstChild("PPXpFrame") then
		l__LocalPlayer__3:WaitForChild("PlayerGui"):WaitForChild("ScreenGui"):FindFirstChild("PPXpFrame"):Destroy();
	end;
	if l__LocalPlayer__3:WaitForChild("PlayerGui"):WaitForChild("ScreenGui"):FindFirstChild("PPXpFrame") then
		l__LocalPlayer__3:WaitForChild("PlayerGui"):WaitForChild("ScreenGui"):FindFirstChild("PPXpFrame"):Destroy();
	end;
	if l__LocalPlayer__3:WaitForChild("PlayerGui"):WaitForChild("ScreenGui"):FindFirstChild("PPXpFrame") then
		l__LocalPlayer__3:WaitForChild("PlayerGui"):WaitForChild("ScreenGui"):FindFirstChild("PPXpFrame"):Destroy();
	end;
end;
l__Parent__1.Equipped:connect(OnEquipped);
l__Parent__1.Unequipped:connect(OnUnequipped);
