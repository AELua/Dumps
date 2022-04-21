-- Decompiled with the Synapse X Luau decompiler.

math.random(tick());
_G.Flying = false;
_G.NearTrainingRock = false;
_G.NearTrainingCrystal = false;
_G.NearStarFSTraining1 = false;
_G.NearStarFSTraining2 = false;
_G.NearStarFSTraining3 = false;
_G.NearPPTrainingPart1 = false;
_G.NearPPTrainingPart2 = false;
_G.NearPPTrainingPart3 = false;
_G.NearPPTrainingPart4 = false;
CurrentCamera = workspace.CurrentCamera;
Lighting = game:GetService("Lighting");
MarketplaceService = game:GetService("MarketplaceService");
HttpService = game:GetService("HttpService");
UserInputService = game:GetService("UserInputService");
RunService = game:GetService("RunService");
TweenService = game:GetService("TweenService");
Debris = game:GetService("Debris");
ReplicatedStorage = game:GetService("ReplicatedStorage");
RemoteEvent = ReplicatedStorage:WaitForChild("RemoteEvent");
RemoteFunction = ReplicatedStorage:WaitForChild("RemoteFunction");
ModuleStorage = ReplicatedStorage:WaitForChild("ModuleStorage");
TrainingArea = workspace:WaitForChild("Main"):WaitForChild("TrainingArea");
Players = game:GetService("Players");
player = Players.LocalPlayer;
PlayerGui = player:WaitForChild("PlayerGui");
IntroGui = PlayerGui:WaitForChild("IntroGui");
ScreenGui = PlayerGui:WaitForChild("ScreenGui");
MenuFrame = ScreenGui:WaitForChild("MenuFrame");
MainQuestFrame = ScreenGui:WaitForChild("MainQuestFrame");
DailyQuestFrame = ScreenGui:WaitForChild("DailyQuestFrame");
WeeklyQuestFrame = ScreenGui:WaitForChild("WeeklyQuestFrame");
RankEmblemFrame = ScreenGui:WaitForChild("RankEmblemFrame");
TokenImgBtn = ScreenGui:WaitForChild("CurrentGemImgBtn");
QuestMsgFrame = ScreenGui:WaitForChild("QuestMsgFrame");
QuestTalkBtn = ScreenGui:WaitForChild("QuestTalkBtn");
RankImgBtn = ScreenGui:WaitForChild("RankImgBtn");
MenuBtn = ScreenGui:WaitForChild("MenuBtn");
SafeZoneTxt = ScreenGui:WaitForChild("SafeZoneTxt");
WeightFrame = ScreenGui:WaitForChild("WeightFrame");
WarnTxt = ScreenGui:WaitForChild("WarnTxt");
SpecialQuestFrame = ScreenGui:WaitForChild("SpecialQuestFrame");
leaderstats = player:WaitForChild("leaderstats");
Status = leaderstats:WaitForChild("Status");
PrivateStats = player:WaitForChild("PrivateStats");
Token = PrivateStats:WaitForChild("Token");
Rank = PrivateStats:WaitForChild("Rank");
Reputation = PrivateStats:WaitForChild("Reputation");
SelectedRank = PrivateStats:WaitForChild("SelectedRank");
FistStrength = PrivateStats:WaitForChild("FistStrength");
BodyToughness = PrivateStats:WaitForChild("BodyToughness");
MovementSpeed = PrivateStats:WaitForChild("MovementSpeed");
JumpForce = PrivateStats:WaitForChild("JumpForce");
PsychicPower = PrivateStats:WaitForChild("PsychicPower");
InnocentKilled = PrivateStats:WaitForChild("InnocentKilled");
VillainKilled = PrivateStats:WaitForChild("VillainKilled");
HeroKilled = PrivateStats:WaitForChild("HeroKilled");
LastVisitTime = PrivateStats:WaitForChild("LastVisitTime");
AliveTime = PrivateStats:WaitForChild("AliveTime");
QuestData = PrivateStats:WaitForChild("QuestData");
Inventory = PrivateStats:WaitForChild("Inventory");
Setting = PrivateStats:WaitForChild("Setting");
DevProductPurschased = PrivateStats:WaitForChild("DevProductPurschased");
QuestDataModule = require(script:WaitForChild("QuestDataModule"));
IntroPlayBtnGuiCount = 0;
while true do
	wait(1);
	if IntroPlayBtnGuiCount == 0 then
		IntroGui:WaitForChild("PlayBtn").Text = " Loading ";
		IntroPlayBtnGuiCount = IntroPlayBtnGuiCount + 1;
	elseif IntroPlayBtnGuiCount == 1 then
		IntroGui:WaitForChild("PlayBtn").Text = " Loading. ";
		IntroPlayBtnGuiCount = IntroPlayBtnGuiCount + 1;
	elseif IntroPlayBtnGuiCount == 2 then
		IntroGui:WaitForChild("PlayBtn").Text = " Loading.. ";
		IntroPlayBtnGuiCount = IntroPlayBtnGuiCount + 1;
	else
		IntroGui:WaitForChild("PlayBtn").Text = " Loading... ";
		IntroPlayBtnGuiCount = 0;
	end;
	if QuestData.Value ~= "" and Inventory.Value ~= "" and Setting.Value ~= "" then
		break;
	end;
end;
IntroGui:WaitForChild("PlayBtn").Text = "PLAY";
LocalSoundFolder = player:WaitForChild("LocalSoundFolder");
BackgroundSound = LocalSoundFolder:WaitForChild("BackgroundSound");
BadgeGivenSound = LocalSoundFolder:WaitForChild("BadgeGivenSound");
LevelUpSound = LocalSoundFolder:WaitForChild("LevelUpSound");
QuestDoneSound = LocalSoundFolder:WaitForChild("QuestDoneSound");
ClickSound = LocalSoundFolder:WaitForChild("ClickSound");
Click2Sound = LocalSoundFolder:WaitForChild("Click2Sound");
ConfirmSound = LocalSoundFolder:WaitForChild("ConfirmSound");
Confirm2Sound = LocalSoundFolder:WaitForChild("Confirm2Sound");
ErrorSound = LocalSoundFolder:WaitForChild("ErrorSound");
CollectSound = LocalSoundFolder:WaitForChild("CollectSound");
DeathSound = LocalSoundFolder:WaitForChild("DeathSound");
KillSound = LocalSoundFolder:WaitForChild("KillSound");
EquipSound = LocalSoundFolder:WaitForChild("EquipSound");
BackgroundSound:Play();
CanFly = false;
Flying = false;
Swimming = false;
TalkingOnQuest = false;
TouchingQuestPart = false;
CustomMS = 0;
CustomJP = 0;
CustomFS = 0;
mouse = player:GetMouse();
mouse.TargetFilter = workspace:WaitForChild("Main"):WaitForChild("MouseIgnoreGroup");
MenuCamCFrame = CFrame.new(705.671021, 941.897827, 864.893188, 0.459262937, -0.712803423, 0.530083895, -0, 0.596739471, 0.8024351, -0.888300419, -0.368528694, 0.274060309);
MenuCamFocus = CFrame.new(695.069336, 925.849121, 859.411987, 1, 0, 0, 0, 1, 0, 0, 0, 1);
local v1 = require((script:WaitForChild("ClientModuleScript-RuizuKun_Dev")));
local u1 = { "K", "M", "B", "T", "Qa", "Qi", "Sx", "Sp", "Oc", "No", "Dc", "Ud", "Dd", "Td", "Qad" };
function AddComas(p1)
	local v2 = #u1 - -1;
	while true do
		local v3 = math.pow(10, v2 * 3);
		if v3 <= p1 then
			local v4 = ("%.3f"):format(p1 / v3) .. u1[v2];
			local v5 = string.find(v4, "%a+");
			local v6 = #tostring(string.match(v4, "%d+"));
			if v6 == 1 then
				return ("%.3f"):format(p1 / v3) .. u1[v2];
			end;
			if v6 == 2 then
				return ("%.2f"):format(p1 / v3) .. u1[v2];
			end;
			if v6 == 3 then
				return ("%.1f"):format(p1 / v3) .. u1[v2];
			end;
		end;
		if 0 <= -1 then
			if v2 < 1 then

			else
				break;
			end;
		elseif 1 < v2 then

		else
			break;
		end;
		v2 = v2 + -1;	
	end;
	return tostring(p1);
end;
local u2 = {};
function PlayAnim(p2)
	if not u2[p2.Name] then
		u2[p2.Name] = Humanoid:LoadAnimation(p2);
	end;
	if p2.Name == "KillingIntentAttackerAnim" then
		if script:WaitForChild("KillingIntentAttackerAnim").AnimationId ~= "rbxassetid://2497380116" then
			player:Kick("AnimationId Hack Detected! I apologize for any misunderstanding. Thank you very much for playing my game!");
			return;
		else
			u2.KillingIntentAttackerAnim:Play(0.1, 1, 1.5);
			return;
		end;
	end;
	if p2.Name == "FlyIdleAnim" then
		if script:WaitForChild("FlyIdleAnim").AnimationId ~= "rbxassetid://2497371477" then
			player:Kick("AnimationId Hack Detected! I apologize for any misunderstanding. Thank you very much for playing my game!");
			return;
		else
			u2.FlyIdleAnim:Play(0.2, 1, 1);
			return;
		end;
	end;
	if p2.Name == "FlyForwardAnim" then
		local u3 = nil;
		u3 = u2[p2.Name].KeyframeReached:Connect(function(p3)
			if p3 == "Pause" then
				u2[p2.Name]:AdjustSpeed(0);
				u3:Disconnect();
			end;
		end);
		u2.FlyForwardAnim:Play(0.1, 1, 2);
		return;
	end;
	if p2.Name == "FlyBackAnim" then
		local u4 = nil;
		u4 = u2[p2.Name].KeyframeReached:Connect(function(p4)
			if p4 == "Pause" then
				u2[p2.Name]:AdjustSpeed(0);
				u4:Disconnect();
			end;
		end);
		u2.FlyBackAnim:Play(0.1, 1, 2);
		return;
	end;
	if p2.Name == "FlyLeftAnim" then
		local u5 = nil;
		u5 = u2[p2.Name].KeyframeReached:Connect(function(p5)
			if p5 == "Pause" then
				u2[p2.Name]:AdjustSpeed(0);
				u5:Disconnect();
			end;
		end);
		u2.FlyLeftAnim:Play(0.1, 1, 2.5);
		return;
	end;
	if p2.Name == "FlyRightAnim" then
		local u6 = nil;
		u6 = u2[p2.Name].KeyframeReached:Connect(function(p6)
			if p6 == "Pause" then
				u2[p2.Name]:AdjustSpeed(0);
				u6:Disconnect();
			end;
		end);
		u2.FlyRightAnim:Play(0.1, 1, 2.5);
		return;
	end;
	if p2.Name == "FlyUpAnim" then
		local u7 = nil;
		u7 = u2[p2.Name].KeyframeReached:Connect(function(p7)
			if p7 == "Pause" then
				u2[p2.Name]:AdjustSpeed(0);
				u7:Disconnect();
			end;
		end);
		u2.FlyUpAnim:Play(0.1, 1, 2);
		return;
	end;
	if p2.Name == "FlyDownAnim" then
		local u8 = nil;
		u8 = u2[p2.Name].KeyframeReached:Connect(function(p8)
			if p8 == "Pause" then
				u2[p2.Name]:AdjustSpeed(0);
				u8:Disconnect();
			end;
		end);
		u2.FlyDownAnim:Play(0.1, 1, 2);
		return;
	end;
	if p2.Name == "BulletPunch1Anim" then
		if script:WaitForChild("BulletPunch1Anim").AnimationId ~= "rbxassetid://2207522324" then
			player:Kick("AnimationId Hack Detected! I apologize for any misunderstanding. Thank you very much for playing my game!");
			return;
		else
			u2.BulletPunch1Anim:Play(0.1, 1, 2);
			return;
		end;
	end;
	if p2.Name == "BulletPunch2Anim" then
		if script:WaitForChild("BulletPunch2Anim").AnimationId ~= "rbxassetid://2207523071" then
			player:Kick("AnimationId Hack Detected! I apologize for any misunderstanding. Thank you very much for playing my game!");
			return;
		else
			u2.BulletPunch2Anim:Play(0.1, 1, 2);
			return;
		end;
	end;
	if p2.Name == "BulletPunch1_AirAnim" then
		if script:WaitForChild("BulletPunch1_AirAnim").AnimationId ~= "rbxassetid://2432720267" then
			player:Kick("AnimationId Hack Detected! I apologize for any misunderstanding. Thank you very much for playing my game!");
			return;
		else
			u2.BulletPunch1_AirAnim:Play(0.1, 1, 2);
			return;
		end;
	end;
	if p2.Name == "BulletPunch2_AirAnim" then
		if script:WaitForChild("BulletPunch2_AirAnim").AnimationId ~= "rbxassetid://2432724217" then
			player:Kick("AnimationId Hack Detected! I apologize for any misunderstanding. Thank you very much for playing my game!");
			return;
		else
			u2.BulletPunch2_AirAnim:Play(0.1, 1, 2);
			return;
		end;
	end;
	if p2.Name == "Punch1Anim" then
		if script:WaitForChild("Punch1Anim").AnimationId ~= "rbxassetid://2207522324" then
			player:Kick("AnimationId Hack Detected! I apologize for any misunderstanding. Thank you very much for playing my game!");
			return;
		else
			u2.Punch1Anim:Play(0.1, 1, 1);
			return;
		end;
	end;
	if p2.Name == "Punch2Anim" then
		if script:WaitForChild("Punch2Anim").AnimationId ~= "rbxassetid://2207523071" then
			player:Kick("AnimationId Hack Detected! I apologize for any misunderstanding. Thank you very much for playing my game!");
			return;
		else
			u2.Punch2Anim:Play(0.1, 1, 1);
			return;
		end;
	end;
	if p2.Name == "Punch1_AirAnim" then
		if script:WaitForChild("Punch1_AirAnim").AnimationId ~= "rbxassetid://2432720267" then
			player:Kick("AnimationId Hack Detected! I apologize for any misunderstanding. Thank you very much for playing my game!");
			return;
		else
			u2.Punch1_AirAnim:Play(0.1, 1, 1);
			return;
		end;
	end;
	if p2.Name == "Punch2_AirAnim" then
		if script:WaitForChild("Punch2_AirAnim").AnimationId ~= "rbxassetid://2432724217" then
			player:Kick("AnimationId Hack Detected! I apologize for any misunderstanding. Thank you very much for playing my game!");
			return;
		else
			u2.Punch2_AirAnim:Play(0.1, 1, 1);
			return;
		end;
	end;
	if p2.Name == "SpherePunchAnim" then
		if script:WaitForChild("SpherePunchAnim").AnimationId ~= "rbxassetid://2207525503" then
			player:Kick("AnimationId Hack Detected! I apologize for any misunderstanding. Thank you very much for playing my game!");
			return;
		else
			u2.SpherePunchAnim:Play(0.1, 1, 1);
			return;
		end;
	end;
	if p2.Name == "SpherePunch__AirAnim" then
		if script:WaitForChild("SpherePunch__AirAnim").AnimationId ~= "rbxassetid://2432731414" then
			player:Kick("AnimationId Hack Detected! I apologize for any misunderstanding. Thank you very much for playing my game!");
			return;
		else
			u2.SpherePunch__AirAnim:Play(0.1, 1, 1);
			return;
		end;
	end;
	if p2.Name == "FallAnim" then

	else
		u2[p2.Name]:Play(0.1, 1, 1);
		return;
	end;
	if script:WaitForChild("FallAnim").AnimationId ~= "rbxassetid://656115606" then
		player:Kick("AnimationId Hack Detected! I apologize for any misunderstanding. Thank you very much for playing my game!");
		return;
	end;
	u2.FallAnim:Play();
end;
function StopAnim(p9)
	if u2[p9.Name] then
		u2[p9.Name]:Stop();
	end;
end;
function StopAllAnim(p10)
	local v7, v8, v9 = pairs(u2);
	while true do
		local v10, v11 = v7(v8, v9);
		if v10 then

		else
			break;
		end;
		v9 = v10;
		v11:Stop();	
	end;
end;
function OpenOrCloseGuiFunc(p11)
	if p11.Visible == false then
		p11.Visible = true;
		return;
	end;
	p11.Visible = false;
end;
function MenuOpenFrameFunc(p12)
	local v12, v13, v14 = pairs(MenuFrame:GetChildren());
	while true do
		local v15, v16 = v12(v13, v14);
		if v15 then

		else
			break;
		end;
		v14 = v15;
		if not v16:IsA("Frame") then
			if v16:IsA("ScrollingFrame") then
				if v16.Name ~= "BorderFrame" then
					if v16 ~= p12 then
						v16.Visible = false;
					end;
				end;
			end;
		elseif v16.Name ~= "BorderFrame" then
			if v16 ~= p12 then
				v16.Visible = false;
			end;
		end;	
	end;
	p12.Visible = true;
end;
function CreateXpGuiFunc(p13, p14, p15)
	if Character then
		if Humanoid then
			if 0 < Humanoid.Health then
				if p14.Name == "MSImg" then
					if ScreenGui:FindFirstChild("MSXpFrame") then
						return;
					end;
				end;
				if p14.Name == "JFImg" then
					if ScreenGui:FindFirstChild("JFXpFrame") then
						return;
					end;
				end;
				if p14.Name == "BTImg" then
					if ScreenGui:FindFirstChild("BTXpFrame") then
						return;
					end;
				end;
				local v17 = p13:Clone();
				local v18 = p14:Clone();
				v18.Parent = v17;
				local l__Txt__19 = v18:WaitForChild("Txt");
				local v20 = HttpService:JSONDecode(Inventory.Value);
				local v21 = 1;
				local v22 = 0.05;
				if p14.Name == "MSImg" then
					if v20 then
						if v20.MSMultiplier then
							l__Txt__19.Text = "+" .. AddComas(p15 * v20.MSMultiplier) .. " Movement Speed";
							v17.Name = "MSXpFrame";
							wait(0.25);
						elseif p14.Name == "JFImg" then
							if v20 then
								if v20.JFMultiplier then
									l__Txt__19.Text = "+" .. AddComas(p15 * v20.JFMultiplier) .. " Jump Force";
									v17.Name = "JFXpFrame";
									wait(0.25);
								elseif p14.Name == "BTImg" then
									l__Txt__19.Text = "+" .. AddComas(p15) .. " Body Toughness";
									v17.Name = "BTXpFrame";
									v21 = 0.5;
									v22 = 0.005;
								end;
							elseif p14.Name == "BTImg" then
								l__Txt__19.Text = "+" .. AddComas(p15) .. " Body Toughness";
								v17.Name = "BTXpFrame";
								v21 = 0.5;
								v22 = 0.005;
							end;
						elseif p14.Name == "BTImg" then
							l__Txt__19.Text = "+" .. AddComas(p15) .. " Body Toughness";
							v17.Name = "BTXpFrame";
							v21 = 0.5;
							v22 = 0.005;
						end;
					elseif p14.Name == "JFImg" then
						if v20 then
							if v20.JFMultiplier then
								l__Txt__19.Text = "+" .. AddComas(p15 * v20.JFMultiplier) .. " Jump Force";
								v17.Name = "JFXpFrame";
								wait(0.25);
							elseif p14.Name == "BTImg" then
								l__Txt__19.Text = "+" .. AddComas(p15) .. " Body Toughness";
								v17.Name = "BTXpFrame";
								v21 = 0.5;
								v22 = 0.005;
							end;
						elseif p14.Name == "BTImg" then
							l__Txt__19.Text = "+" .. AddComas(p15) .. " Body Toughness";
							v17.Name = "BTXpFrame";
							v21 = 0.5;
							v22 = 0.005;
						end;
					elseif p14.Name == "BTImg" then
						l__Txt__19.Text = "+" .. AddComas(p15) .. " Body Toughness";
						v17.Name = "BTXpFrame";
						v21 = 0.5;
						v22 = 0.005;
					end;
				elseif p14.Name == "JFImg" then
					if v20 then
						if v20.JFMultiplier then
							l__Txt__19.Text = "+" .. AddComas(p15 * v20.JFMultiplier) .. " Jump Force";
							v17.Name = "JFXpFrame";
							wait(0.25);
						elseif p14.Name == "BTImg" then
							l__Txt__19.Text = "+" .. AddComas(p15) .. " Body Toughness";
							v17.Name = "BTXpFrame";
							v21 = 0.5;
							v22 = 0.005;
						end;
					elseif p14.Name == "BTImg" then
						l__Txt__19.Text = "+" .. AddComas(p15) .. " Body Toughness";
						v17.Name = "BTXpFrame";
						v21 = 0.5;
						v22 = 0.005;
					end;
				elseif p14.Name == "BTImg" then
					l__Txt__19.Text = "+" .. AddComas(p15) .. " Body Toughness";
					v17.Name = "BTXpFrame";
					v21 = 0.5;
					v22 = 0.005;
				end;
				v17.Parent = ScreenGui;
				local v23 = math.random(2, 7) / 10;
				local v24 = math.random(1, 5) / 10;
				if p14.Name == "MSImg" then
					v17.Position = UDim2.new(0.25, 0, 0.8, 0);
				elseif p14.Name == "JFImg" then
					v17.Position = UDim2.new(0.6, 0, 0.8, 0);
				else
					v17.Position = UDim2.new(v24, 0, v23, 0);
				end;
				pcall(function()
					v17:TweenSize(UDim2.new(0.06, 0, 0.102, 0), "Out", "Back", 0.5, true);
				end);
				wait(v21);
				local v25 = 0 - 1;
				while true do
					v18.ImageTransparency = v18.ImageTransparency + 0.1;
					l__Txt__19.TextTransparency = l__Txt__19.TextTransparency + 0.1;
					l__Txt__19.TextStrokeTransparency = l__Txt__19.TextStrokeTransparency + 0.1;
					wait(v22);
					if 0 <= 1 then
						if v25 < 10 then

						else
							break;
						end;
					elseif 10 < v25 then

					else
						break;
					end;
					v25 = v25 + 1;				
				end;
				v17:Destroy();
			end;
		end;
	end;
end;
function QuestTalkFunc()
	local v26 = nil;
	QuestTalkBtn:TweenPosition(UDim2.new(0.387, 0, -0.1, 0), "Out", "Back", 0.5, true);
	QuestTalkBtn.Visible = false;
	v26 = HttpService:JSONDecode(QuestData.Value);
	local v27 = 0;
	local v28 = script:WaitForChild("SathDialogModule");
	if QuestTalkBtn:WaitForChild("Npc").Value == "Sath" then
		if v26 then
			if v26.MainQuest then
				if v26.MainQuest.No then
					v27 = v26.MainQuest.No;
					v28 = script:WaitForChild("SathDialogModule");
				end;
			end;
		end;
	elseif QuestTalkBtn:WaitForChild("Npc").Value == "Grim" then
		if v26 then
			if v26.GrimQuest then
				if v26.GrimQuest.No then
					v27 = v26.GrimQuest.No;
					v28 = script:WaitForChild("GrimDialogModule");
				end;
			end;
		end;
	elseif QuestTalkBtn:WaitForChild("Npc").Value == "GhostRider" then
		local v29 = HttpService:JSONDecode(Inventory.Value);
		if v29 then
			if not v29.GhostRiderPass then
				v27 = 0;
				v28 = script:WaitForChild("GhostRiderDialogModule");
			else
				v27 = 1;
				v28 = script:WaitForChild("GhostRiderDialogModule");
			end;
		else
			v27 = 1;
			v28 = script:WaitForChild("GhostRiderDialogModule");
		end;
	end;
	local l__Page__30 = QuestMsgFrame:WaitForChild("Page");
	require(v28).CreateDialog(player, v27, l__Page__30, (QuestMsgFrame:WaitForChild("MsgTxt")));
	if 0 < l__Page__30.Value then
		l__Page__30.Value = l__Page__30.Value + 1;
		return;
	end;
	l__Page__30.Value = 1;
	QuestMsgFrame.Visible = false;
	if Character then
		if Character:FindFirstChild("Head") then
			if workspace.CurrentCamera.CameraType == Enum.CameraType.Scriptable then
				workspace.CurrentCamera:Interpolate(CFrame.new(BeforeTalkToQuestNPCCameraCFrame.p), CFrame.new(Character.Head.Position), 1);
				wait(1);
			end;
		end;
	end;
	if QuestTalkBtn:WaitForChild("Npc").Value ~= "GhostRider" then
		QuestDoneSound:Play();
	end;
	workspace.CurrentCamera.CameraType = Enum.CameraType.Custom;
	workspace.CurrentCamera.CameraSubject = player.Character.Humanoid;
	Humanoid.WalkSpeed = 11;
	Humanoid.JumpPower = 51;
	RemoteEvent:FireServer({ "QuestTalkEnd", QuestTalkBtn:WaitForChild("Npc").Value });
	local v31 = HttpService:JSONDecode(Inventory.Value);
	if QuestTalkBtn:WaitForChild("Npc").Value == "GhostRider" then
		if v27 == 0 then
			if v31 then
				if not v31.GhostRiderPass then
					MarketplaceService:PromptProductPurchase(player, 413724545);
				end;
			end;
		end;
	end;
	TalkingOnQuest = false;
	if QuestTalkBtn:WaitForChild("Npc").Value ~= "GhostRider" then
		spawn(function()
			local v32 = ReplicatedStorage:WaitForChild("MissionCompleteTxt"):Clone();
			v32.Parent = ScreenGui;
			v32:TweenSizeAndPosition(UDim2.new(0.5, 0, 0.2, 0), UDim2.new(0.25, 0, 0.4, 0), "In", "Bounce", 2, true);
			wait(4);
			local v33 = 0 - 1;
			while true do
				v32.TextTransparency = v32.TextTransparency + 0.05;
				v32.TextStrokeTransparency = v32.TextStrokeTransparency + 0.05;
				wait(0.05);
				if 0 <= 1 then
					if v33 < 20 then

					else
						break;
					end;
				elseif 20 < v33 then

				else
					break;
				end;
				v33 = v33 + 1;			
			end;
			v32:Destroy();
		end);
	end;
end;
RemoteEvent.OnClientEvent:Connect(function(p16)
	if p16[1] == "CalculateWSAndJP" then
		if MovementSpeed.Value <= 400 then
			local v34 = 10 + MovementSpeed.Value / 10;
		elseif MovementSpeed.Value <= 5400 then
			v34 = 46 + MovementSpeed.Value / 100;
		elseif MovementSpeed.Value <= 65400 then
			v34 = 91 + MovementSpeed.Value / 600;
		elseif MovementSpeed.Value <= 665400 then
			v34 = 170 + (MovementSpeed.Value - 5400) / 2000;
		else
			v34 = 440 + (MovementSpeed.Value - 65400) / 10000;
		end;
		if Humanoid.WalkSpeed ~= 0 and Humanoid.WalkSpeed ~= 10 then
			if Character and Character:FindFirstChild("LeftWeight1") then
				v34 = v34 / 2;
				if v34 < 4 then
					v34 = 1;
				end;
			elseif Character and Character:FindFirstChild("LeftWeight2") then
				v34 = v34 / 10;
				if v34 < 4 then
					v34 = 1;
				end;
			elseif Character and Character:FindFirstChild("LeftWeight3") then
				v34 = v34 / 50;
				if v34 < 4 then
					v34 = 1;
				end;
			elseif Character and Character:FindFirstChild("LeftWeight4") then
				v34 = v34 / 100;
				if v34 < 4 then
					v34 = 1;
				end;
			end;
		end;
		if CustomMS > 10 and CustomMS < v34 then
			v34 = CustomMS;
		end;
		if v34 > 1000 then
			v34 = 1000;
		end;
		Humanoid.WalkSpeed = v34;
		if JumpForce.Value <= 2500 then
			local v35 = 50 + JumpForce.Value / 50;
		elseif JumpForce.Value <= 8750 then
			v35 = 65 + JumpForce.Value / 250;
		elseif JumpForce.Value <= 33750 then
			v35 = 84 + (JumpForce.Value - 750) / 500;
		elseif JumpForce.Value <= 83750 then
			v35 = 120 + (JumpForce.Value - 3750) / 1000;
		elseif JumpForce.Value <= 665000 then
			v35 = 193 + (JumpForce.Value - 65000) / 2500;
		else
			v35 = 400 + JumpForce.Value / 20000;
		end;
		if Humanoid.JumpPower ~= 0 and Humanoid.JumpPower ~= 50 then
			if Character and Character:FindFirstChild("LeftWeight1") then
				v35 = v35 / 2;
				if v35 < 50 then
					v35 = 1;
				end;
			elseif Character and Character:FindFirstChild("LeftWeight2") then
				v35 = v35 / 5;
				if v35 < 50 then
					v35 = 1;
				end;
			elseif Character and Character:FindFirstChild("LeftWeight3") then
				v35 = v35 / 10;
				if v35 < 50 then
					v35 = 1;
				end;
			elseif Character and Character:FindFirstChild("LeftWeight4") then
				v35 = v35 / 20;
				if v35 < 50 then
					v35 = 1;
				end;
			end;
		end;
		if CustomJP > 50 and CustomJP < v35 then
			v35 = CustomJP;
		end;
		if v35 > 500 then
			v35 = 500;
		end;
		Humanoid.JumpPower = v35;
		return;
	end;
	if p16[1] == "EnterSafeZone" then
		SafeZoneTxt.Text = "Entered Safe Zone";
		SafeZoneTxt.Visible = true;
		delay(2, function()
			if SafeZoneTxt.Text == "Entered Safe Zone" then
				SafeZoneTxt.Visible = false;
			end;
		end);
		return;
	end;
	if p16[1] == "LeaveSafeZone" then
		SafeZoneTxt.Text = "Left Safe Zone";
		SafeZoneTxt.Visible = true;
		delay(2, function()
			if SafeZoneTxt.Text == "Left Safe Zone" then
				SafeZoneTxt.Visible = false;
			end;
		end);
		return;
	end;
	if p16[1] == "AttackerInSaveZone" then
		if SafeZoneTxt.Text == "Can't Attack in Safe Zone!" and SafeZoneTxt.Visible == true then
			return;
		else
			SafeZoneTxt.Text = "Can't Attack in Safe Zone!";
			SafeZoneTxt.Visible = true;
			delay(2, function()
				if SafeZoneTxt.Text == "Can't Attack in Safe Zone!" then
					SafeZoneTxt.Visible = false;
				end;
			end);
			return;
		end;
	end;
	if p16[1] == "AttackerNotInSaveZone" then
		if SafeZoneTxt.Text == "Can't Attack People in Safe Zone!" and SafeZoneTxt.Visible == true then
			return;
		else
			SafeZoneTxt.Text = "Can't Attack People in Safe Zone!";
			SafeZoneTxt.Visible = true;
			delay(2, function()
				if SafeZoneTxt.Text == "Can't Attack People in Safe Zone!" then
					SafeZoneTxt.Visible = false;
				end;
			end);
			return;
		end;
	end;
	if p16[1] == "GiveAliveTimeFail" then
		WarnTxt.Text = "You will not gain Alive Time or +5 Tokens in Safe Zone!";
		WarnTxt.Visible = true;
		delay(5, function()
			WarnTxt.Visible = false;
		end);
		return;
	end;
	if p16[1] == "GiveTokenNoti" then
		local v36 = ReplicatedStorage:WaitForChild("IncreaseTokenAmountTxt"):Clone();
		v36.Parent = ScreenGui:WaitForChild("CurrentGemImgBtn");
		wait(1);
		v36:TweenSizeAndPosition(UDim2.new(0.75, 0, 0.75, 0), UDim2.new(0, 0, 0, 0), "In", "Quad", 1.5, true);
		wait(1.5);
		v36:Destroy();
		return;
	end;
	if p16[1] == "CreateXpGui" then
		if p16[2] == "BT" and string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt2"):WaitForChild("ToggleBtn").Text, "On") then
			CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("BTImg"), p16[3]);
			return;
		end;
	else
		if p16[1] == "CreateDamageBbGui" and p16[2] and p16[3] and p16[4] then
			if Character and Character:FindFirstChild("Head") and p16[3] == Character.Head and string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt8"):WaitForChild("ToggleBtn").Text, "Off") then
				return;
			elseif Character and Character:FindFirstChild("Head") and p16[3] ~= Character.Head and string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt7"):WaitForChild("ToggleBtn").Text, "Off") then
				return;
			else
				local v37 = ReplicatedStorage:WaitForChild("DamageBbGui"):Clone();
				v37:WaitForChild("Img").Image = "http://www.roblox.com/asset/?id=" .. p16[4];
				local l__DmgTxt__38 = v37:WaitForChild("DmgTxt");
				l__DmgTxt__38.Text = AddComas(p16[2]);
				if p16[4] == 2429890961 then
					l__DmgTxt__38.TextColor3 = Color3.fromRGB(255, 191, 0);
					l__DmgTxt__38.Text = "-" .. l__DmgTxt__38.Text;
				elseif p16[4] == 2429890610 then
					l__DmgTxt__38.TextColor3 = Color3.fromRGB(255, 137, 0);
				elseif p16[4] == 2429890438 then
					l__DmgTxt__38.TextColor3 = Color3.fromRGB(255, 214, 107);
					l__DmgTxt__38.Text = "-" .. l__DmgTxt__38.Text;
				end;
				spawn(function()
					v37.StudsOffsetWorldSpace = Vector3.new(math.random(-1, 1), math.random(45, 70) / 10, math.random(-1, 1));
					v37.Parent = p16[3];
					delay(0.5, function()
						v37:Destroy();
					end);
				end);
				return;
			end;
		end;
		if p16[1] == "UnequipWeight" then
			if Humanoid.WalkSpeed == 0 then
				return;
			end;
			if MovementSpeed.Value <= 400 then
				local v39 = 10 + MovementSpeed.Value / 10;
			elseif MovementSpeed.Value <= 5400 then
				v39 = 46 + MovementSpeed.Value / 100;
			elseif MovementSpeed.Value <= 65400 then
				v39 = 91 + MovementSpeed.Value / 600;
			elseif MovementSpeed.Value <= 665400 then
				v39 = 170 + (MovementSpeed.Value - 5400) / 2000;
			else
				v39 = 440 + (MovementSpeed.Value - 65400) / 10000;
			end;
			if CustomMS > 10 and CustomMS < v39 then
				v39 = CustomMS;
			end;
			if v39 > 1000 then
				v39 = 1000;
			end;
			Humanoid.WalkSpeed = v39;
			if Humanoid.JumpPower == 0 then
				return;
			end;
			if JumpForce.Value <= 2500 then
				local v40 = 50 + JumpForce.Value / 50;
			elseif JumpForce.Value <= 8750 then
				v40 = 65 + JumpForce.Value / 250;
			elseif JumpForce.Value <= 33750 then
				v40 = 84 + (JumpForce.Value - 750) / 500;
			elseif JumpForce.Value <= 83750 then
				v40 = 120 + (JumpForce.Value - 3750) / 1000;
			elseif JumpForce.Value <= 665000 then
				v40 = 193 + (JumpForce.Value - 65000) / 2500;
			else
				v40 = 400 + JumpForce.Value / 20000;
			end;
			if CustomJP > 50 and CustomJP < v40 then
				v40 = CustomJP;
			end;
			if v40 > 500 then
				v40 = 500;
			end;
			Humanoid.JumpPower = v40;
			if HumanoidRootPart and HumanoidRootPart:FindFirstChild("FlyBodyVel") then
				if JumpForce.Value < 100000 then
					FlySpeed = JumpForce.Value / 200;
				elseif JumpForce.Value < 1000000 then
					FlySpeed = 400 + JumpForce.Value / 1000;
				elseif JumpForce.Value < 10000000 then
					FlySpeed = 1300 + JumpForce.Value / 10000;
				else
					FlySpeed = 2200 + JumpForce.Value / 100000;
				end;
				if CustomFS > 0 and CustomFS < FlySpeed then
					FlySpeed = CustomFS;
				end;
				if FlySpeed > 1000 then
					FlySpeed = 1000;
					return;
				end;
			end;
		elseif p16[1] == "EquipWeight" and p16[2] then
			if Humanoid.WalkSpeed == 0 then
				return;
			end;
			if MovementSpeed.Value <= 400 then
				local v41 = 10 + MovementSpeed.Value / 10;
			elseif MovementSpeed.Value <= 5400 then
				v41 = 46 + MovementSpeed.Value / 100;
			elseif MovementSpeed.Value <= 65400 then
				v41 = 91 + MovementSpeed.Value / 600;
			elseif MovementSpeed.Value <= 665400 then
				v41 = 170 + (MovementSpeed.Value - 5400) / 2000;
			else
				v41 = 440 + (MovementSpeed.Value - 65400) / 10000;
			end;
			if p16[2] == 1 then
				v41 = v41 / 2;
				if v41 < 4 then
					v41 = 1;
				end;
			elseif p16[2] == 2 then
				v41 = v41 / 10;
				if v41 < 4 then
					v41 = 1;
				end;
			elseif p16[2] == 3 then
				v41 = v41 / 50;
				if v41 < 4 then
					v41 = 1;
				end;
			elseif p16[2] == 4 then
				v41 = v41 / 100;
				if v41 < 4 then
					v41 = 1;
				end;
			end;
			if CustomMS > 10 and CustomMS < v41 then
				v41 = CustomMS;
			end;
			if v41 > 1000 then
				v41 = 1000;
			end;
			Humanoid.WalkSpeed = v41;
			if Humanoid.JumpPower == 0 then
				return;
			end;
			if JumpForce.Value <= 2500 then
				local v42 = 50 + JumpForce.Value / 50;
			elseif JumpForce.Value <= 8750 then
				v42 = 65 + JumpForce.Value / 250;
			elseif JumpForce.Value <= 33750 then
				v42 = 84 + (JumpForce.Value - 750) / 500;
			elseif JumpForce.Value <= 83750 then
				v42 = 120 + (JumpForce.Value - 3750) / 1000;
			elseif JumpForce.Value <= 665000 then
				v42 = 193 + (JumpForce.Value - 65000) / 2500;
			else
				v42 = 400 + JumpForce.Value / 20000;
			end;
			if p16[2] == 1 then
				v42 = v42 / 2;
				if v42 < 50 then
					v42 = 1;
				end;
			elseif p16[2] == 2 then
				v42 = v42 / 5;
				if v42 < 50 then
					v42 = 1;
				end;
			elseif p16[2] == 3 then
				v42 = v42 / 10;
				if v42 < 50 then
					v42 = 1;
				end;
			elseif p16[2] == 4 then
				v42 = v42 / 20;
				if v42 < 50 then
					v42 = 1;
				end;
			end;
			if CustomJP > 50 and CustomJP < v42 then
				v42 = CustomJP;
			end;
			if v42 > 500 then
				v42 = 500;
			end;
			Humanoid.JumpPower = v42;
			if JumpForce.Value < 100000 then
				FlySpeed = JumpForce.Value / 200;
			elseif JumpForce.Value < 1000000 then
				FlySpeed = 400 + JumpForce.Value / 1000;
			elseif JumpForce.Value < 10000000 then
				FlySpeed = 1300 + JumpForce.Value / 10000;
			else
				FlySpeed = 2200 + JumpForce.Value / 100000;
			end;
			if Humanoid.JumpPower ~= 0 then
				if p16[2] == 1 then
					FlySpeed = FlySpeed / 2;
				elseif p16[2] == 2 then
					FlySpeed = FlySpeed / 5;
				elseif p16[2] == 3 then
					FlySpeed = FlySpeed / 10;
				elseif p16[2] == 4 then
					FlySpeed = FlySpeed / 20;
				end;
			end;
			if CustomFS > 0 and CustomFS < FlySpeed then
				FlySpeed = CustomFS;
			end;
			if FlySpeed > 1000 then
				FlySpeed = 1000;
				return;
			end;
		else
			if p16[1] == "EnableWaterWalk" then
				workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part1").CanCollide = true;
				workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part2").CanCollide = true;
				workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part3").CanCollide = true;
				workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part4").CanCollide = true;
				workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part5").CanCollide = true;
				workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part6").CanCollide = true;
				workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part7").CanCollide = true;
				workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part8").CanCollide = true;
				workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part9").CanCollide = true;
				return;
			end;
			if p16[1] == "BGSoundEvent" and p16[2] then
				if IntroGui.Enabled == false then
					BackgroundSound.SoundId = "http://www.roblox.com/asset/?id=" .. p16[2];
					BackgroundSound:Play();
					return;
				end;
			else
				if p16[1] == "PlaySound" and LocalSoundFolder:FindFirstChild(p16[2]) then
					LocalSoundFolder:FindFirstChild(p16[2]).Volume = p16[3];
					LocalSoundFolder:FindFirstChild(p16[2]):Play();
					return;
				end;
				if p16[1] == "RankUp" then
					LevelUpSound:Play();
					spawn(function()
						local v43 = ReplicatedStorage:WaitForChild("RankUpTxt"):Clone();
						v43.Parent = ScreenGui;
						v43:TweenSizeAndPosition(UDim2.new(0.5, 0, 0.2, 0), UDim2.new(0.25, 0, 0.4, 0), "In", "Bounce", 2, true);
						wait(4);
						for v44 = 0, 20 do
							v43.TextTransparency = v43.TextTransparency + 0.05;
							v43.TextStrokeTransparency = v43.TextStrokeTransparency + 0.05;
							wait(0.05);
						end;
						v43:Destroy();
					end);
					return;
				end;
				if p16[1] == "CheckInvisible" and p16[2] and p16[2].Character and p16[3] and p16[4] then
					if p16[4] < p16[3] then
						local v45 = 0.995;
					else
						v45 = 0.555;
					end;
					for v46, v47 in pairs(p16[2].Character:GetChildren()) do
						if not v47:IsA("Tool") then
							if v47:IsA("BasePart") and v47.Name ~= "HumanoidRootPart" then
								v47.Transparency = v45;
								if v47:FindFirstChild("face") then
									v47.face.Transparency = v45;
								end;
								if v47:FindFirstChild("NameBbGui") then
									v47.NameBbGui:WaitForChild("NameTxt").TextTransparency = v45;
									v47.NameBbGui:WaitForChild("NameTxt").TextStrokeTransparency = v45;
								end;
								if v47:FindFirstChild("RankBbGui") then
									v47.RankBbGui:WaitForChild("RankImg").ImageTransparency = v45;
								end;
							elseif v47:FindFirstChild("Handle") then
								v47.Handle.Transparency = v45;
								if v47.Handle:FindFirstChild("Handle") then
									v47.Handle.Handle.Transparency = v45;
								end;
								if v47.Handle:FindFirstChild("GhostRiderEye1") then
									v47.Handle.GhostRiderEye1.Transparency = v45;
								end;
								if v47.Handle:FindFirstChild("GhostRiderEye2") then
									v47.Handle.GhostRiderEye2.Transparency = v45;
								end;
							end;
							if v47:FindFirstChild("Aura1") then
								v47:FindFirstChild("Aura1").Enabled = false;
							end;
							if v47:FindFirstChild("Aura2") then
								v47:FindFirstChild("Aura2").Enabled = false;
							end;
							if v47:FindFirstChild("Aura3") then
								v47:FindFirstChild("Aura3").Enabled = false;
							end;
							if v47:FindFirstChild("GhostRiderFire") then
								v47:FindFirstChild("GhostRiderFire").Enabled = false;
							end;
							if v47:FindFirstChild("WaistRigAttachment") and v47.WaistRigAttachment:FindFirstChild("SafeZoneEffect") then
								v47.WaistRigAttachment:FindFirstChild("SafeZoneEffect").Enabled = false;
							end;
						end;
					end;
					return;
				end;
				if p16[1] == "Invisible" then
					if p16[2] and p16[3] and p16[3].Character and p16[4] then
						if p16[2] == "Start" then
							if p16[4] < PsychicPower.Value then
								local v48 = 0.555;
							else
								v48 = 0.995;
							end;
							if p16[3] == player then
								v48 = 0.75;
							end;
							for v49, v50 in pairs(p16[3].Character:GetChildren()) do
								if not v50:IsA("Tool") then
									if v50:IsA("BasePart") and v50.Name ~= "HumanoidRootPart" then
										v50.Transparency = v48;
										if v50:FindFirstChild("face") then
											v50.face.Transparency = v48;
										end;
										if v50:FindFirstChild("NameBbGui") then
											v50.NameBbGui:WaitForChild("NameTxt").TextTransparency = v48;
											v50.NameBbGui:WaitForChild("NameTxt").TextStrokeTransparency = v48;
										end;
										if v50:FindFirstChild("RankBbGui") then
											v50.RankBbGui:WaitForChild("RankImg").ImageTransparency = v48;
										end;
									elseif v50:FindFirstChild("Handle") then
										v50.Handle.Transparency = v48;
										if v50.Handle:FindFirstChild("Handle") then
											v50.Handle.Handle.Transparency = v48;
										end;
										if v50.Handle:FindFirstChild("GhostRiderEye1") then
											v50.Handle.GhostRiderEye1.Transparency = v48;
										end;
										if v50.Handle:FindFirstChild("GhostRiderEye2") then
											v50.Handle.GhostRiderEye2.Transparency = v48;
										end;
									end;
									if v50:FindFirstChild("Aura1") then
										v50:FindFirstChild("Aura1").Enabled = false;
									end;
									if v50:FindFirstChild("Aura2") then
										v50:FindFirstChild("Aura2").Enabled = false;
									end;
									if v50:FindFirstChild("Aura3") then
										v50:FindFirstChild("Aura3").Enabled = false;
									end;
									if v50:FindFirstChild("GhostRiderFire") then
										v50:FindFirstChild("GhostRiderFire").Enabled = false;
									end;
									if v50:FindFirstChild("WaistRigAttachment") and v50.WaistRigAttachment:FindFirstChild("SafeZoneEffect") then
										v50.WaistRigAttachment:FindFirstChild("SafeZoneEffect").Enabled = false;
									end;
								end;
							end;
							return;
						elseif p16[2] == "Stop" then
							for v51, v52 in pairs(p16[3].Character:GetChildren()) do
								if v52.Name ~= "HumanoidRootPart" and not v52:IsA("Tool") then
									if v52:IsA("BasePart") then
										v52.Transparency = 0;
										if v52:FindFirstChild("face") then
											v52.face.Transparency = 0;
										end;
										if v52:FindFirstChild("NameBbGui") then
											v52.NameBbGui:WaitForChild("NameTxt").TextTransparency = 0;
											v52.NameBbGui:WaitForChild("NameTxt").TextStrokeTransparency = 0;
										end;
										if v52:FindFirstChild("RankBbGui") then
											v52.RankBbGui:WaitForChild("RankImg").ImageTransparency = 0;
										end;
									elseif v52:FindFirstChild("Handle") then
										v52.Handle.Transparency = 0;
										if v52.Handle:FindFirstChild("Handle") then
											v52.Handle.Handle.Transparency = 0;
										end;
										if v52.Handle:FindFirstChild("GhostRiderEye1") then
											v52.Handle.GhostRiderEye1.Transparency = 0;
										end;
										if v52.Handle:FindFirstChild("GhostRiderEye2") then
											v52.Handle.GhostRiderEye2.Transparency = 0;
										end;
									end;
									if v52:FindFirstChild("Aura1") then
										v52:FindFirstChild("Aura1").Enabled = true;
									end;
									if v52:FindFirstChild("Aura2") then
										v52:FindFirstChild("Aura2").Enabled = true;
									end;
									if v52:FindFirstChild("Aura3") then
										v52:FindFirstChild("Aura3").Enabled = true;
									end;
									if v52:FindFirstChild("GhostRiderFire") then
										v52:FindFirstChild("GhostRiderFire").Enabled = true;
									end;
									if v52:FindFirstChild("WaistRigAttachment") and v52.WaistRigAttachment:FindFirstChild("SafeZoneEffect") then
										v52.WaistRigAttachment:FindFirstChild("SafeZoneEffect").Enabled = true;
									end;
								end;
							end;
							return;
						end;
					end;
				elseif p16[1] == "UpdateBasicStats" then
					MenuFrame:WaitForChild("InfoFrame"):WaitForChild("NameTxt").Text = "Name : " .. player.Name;
					MenuFrame:WaitForChild("InfoFrame"):WaitForChild("RankTxt").Text = "Rank : " .. require(ModuleStorage:WaitForChild("RankNameVariable"))[Rank.Value];
					MenuFrame:WaitForChild("InfoFrame"):WaitForChild("RankImgBtn").Image = require(ModuleStorage:WaitForChild("RankImgVariable"))[SelectedRank.Value];
					MenuFrame:WaitForChild("InfoFrame"):WaitForChild("StatusTxt").Text = "Status : " .. Status.Value;
					MenuFrame:WaitForChild("InfoFrame"):WaitForChild("KilledTxt").Text = "Innocence Killed : " .. tostring(InnocentKilled.Value) .. " , Villain Killed : " .. tostring(VillainKilled.Value) .. " , Hero Killed : " .. tostring(HeroKilled.Value);
					MenuFrame:WaitForChild("InfoFrame"):WaitForChild("FSTxt").Text = "Fist Strength : " .. AddComas(FistStrength.Value);
					MenuFrame:WaitForChild("InfoFrame"):WaitForChild("BTTxt").Text = "Body Toughness : " .. AddComas(BodyToughness.Value);
					MenuFrame:WaitForChild("InfoFrame"):WaitForChild("MSTxt").Text = "Movement Speed : " .. AddComas(MovementSpeed.Value);
					MenuFrame:WaitForChild("InfoFrame"):WaitForChild("JFTxt").Text = "Jump Force : " .. AddComas(JumpForce.Value);
					MenuFrame:WaitForChild("InfoFrame"):WaitForChild("PPTxt").Text = "Psychic Power : " .. AddComas(PsychicPower.Value);
					MenuFrame:WaitForChild("InfoFrame"):WaitForChild("RepTxt").Text = "Reputation : " .. tostring(Reputation.Value);
					TokenImgBtn:WaitForChild("AmountTxtBtn").Text = Token.Value;
					local v53 = HttpService:JSONDecode(Inventory.Value);
					if v53 and v53.FSMultiplier and v53.BTMultiplier and v53.MSMultiplier and v53.JFMultiplier and v53.PPMultiplier then
						MenuFrame:WaitForChild("InfoFrame"):WaitForChild("FSMultiplierTxt").Text = "x" .. tostring(v53.FSMultiplier);
						MenuFrame:WaitForChild("InfoFrame"):WaitForChild("BTMultiplierTxt").Text = "x" .. tostring(v53.BTMultiplier);
						MenuFrame:WaitForChild("InfoFrame"):WaitForChild("MSMultiplierTxt").Text = "x" .. tostring(v53.MSMultiplier);
						MenuFrame:WaitForChild("InfoFrame"):WaitForChild("JFMultiplierTxt").Text = "x" .. tostring(v53.JFMultiplier);
						MenuFrame:WaitForChild("InfoFrame"):WaitForChild("PPMultiplierTxt").Text = "x" .. tostring(v53.PPMultiplier);
					end;
					if v53 and v53.Vip and v53.Vip.HaveVip and v53.Vip.TimeLeft and v53.Vip.TimeLeft > 0 then
						DailyQuestFrame:WaitForChild("MaxFrame1"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "40";
						DailyQuestFrame:WaitForChild("MaxFrame2"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "40";
						DailyQuestFrame:WaitForChild("MaxFrame3"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "40";
						DailyQuestFrame:WaitForChild("MaxFrame4"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "40";
						DailyQuestFrame:WaitForChild("MaxFrame5"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "40";
						WeeklyQuestFrame:WaitForChild("MaxFrame1"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "200";
						WeeklyQuestFrame:WaitForChild("MaxFrame2"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "200";
						WeeklyQuestFrame:WaitForChild("MaxFrame3"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "200";
						WeeklyQuestFrame:WaitForChild("MaxFrame4"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "1000";
						WeeklyQuestFrame:WaitForChild("MaxFrame5"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "1000";
						WeeklyQuestFrame:WaitForChild("MaxFrame6"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "1000";
						WeeklyQuestFrame:WaitForChild("MaxFrame7"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "5000";
						WeeklyQuestFrame:WaitForChild("MaxFrame8"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "5000";
						WeeklyQuestFrame:WaitForChild("MaxFrame9"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "5000";
						MenuFrame:WaitForChild("InfoFrame"):WaitForChild("VipImgBtn").Visible = true;
						MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt1").Text = "+ 400";
						MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt2").Text = "+ 2200";
						MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt3").Text = "+ 5200";
						MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt4").Text = "+ 12000";
						MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt5").Text = "+ 28000";
						MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt6").Text = "+ 60000";
						MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt1"):WaitForChild("VipAdTxt").Visible = false;
						MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt2"):WaitForChild("VipAdTxt").Visible = false;
						MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt3"):WaitForChild("VipAdTxt").Visible = false;
						MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt4"):WaitForChild("VipAdTxt").Visible = false;
						MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt5"):WaitForChild("VipAdTxt").Visible = false;
						MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt6"):WaitForChild("VipAdTxt").Visible = false;
						if v53.Vip.TimeLeft >= 86400 then
							local v54 = tostring(math.floor(v53.Vip.TimeLeft / 86400));
							local v55 = tostring(math.floor((v53.Vip.TimeLeft - 86400 * v54) / 3600));
							local v56 = "Time Left : " .. v54 .. "d " .. v55 .. "h " .. tostring(math.floor((v53.Vip.TimeLeft - 86400 * v54 - 3600 * v55) / 60)) .. "m";
						elseif v53.Vip.TimeLeft >= 3600 then
							local v57 = tostring(math.floor(v53.Vip.TimeLeft / 3600));
							v56 = "Time Left : " .. v57 .. "h " .. tostring(math.floor((v53.Vip.TimeLeft - 3600 * v57) / 60)) .. "m";
						elseif v53.Vip.TimeLeft >= 60 then
							v56 = "Time Left : " .. tostring(math.floor(v53.Vip.TimeLeft / 60)) .. "m";
						else
							v56 = "Time Left : " .. tostring(v53.Vip.TimeLeft) .. "s";
						end;
						MenuFrame:WaitForChild("InfoFrame"):WaitForChild("VipImgBtn"):WaitForChild("TimeTxt").Text = v56;
						MenuFrame:WaitForChild("InfoFrame"):WaitForChild("VipImgBtn").Visible = true;
						MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt12").Visible = true;
						MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt13").Visible = true;
					end;
					if v53 and v53.GhostRiderPass then
						MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt18").Visible = true;
						MenuFrame:WaitForChild("SkillFrame"):WaitForChild("SkillTxt14").Text = "Hellfire : \"N\"";
					end;
					if Rank.Value < 11 then
						RankImgBtn.Image = require(ModuleStorage:WaitForChild("RankImgVariable"))[Rank.Value + 1];
						RankImgBtn.Visible = true;
					else
						RankImgBtn.Visible = false;
					end;
					if Rank.Value > 1 then
						RankEmblemFrame:WaitForChild("Rank2ImgBtn").ImageTransparency = 0;
						RankEmblemFrame:WaitForChild("Rank2ImgBtn").ImageColor3 = Color3.fromRGB(255, 255, 255);
						RankEmblemFrame:WaitForChild("Rank2ImgBtn"):WaitForChild("LockTxt").Visible = false;
					end;
					if Rank.Value > 2 then
						RankEmblemFrame:WaitForChild("Rank3ImgBtn").ImageTransparency = 0;
						RankEmblemFrame:WaitForChild("Rank3ImgBtn").ImageColor3 = Color3.fromRGB(255, 255, 255);
						RankEmblemFrame:WaitForChild("Rank3ImgBtn"):WaitForChild("LockTxt").Visible = false;
					end;
					if Rank.Value > 3 then
						RankEmblemFrame:WaitForChild("Rank4ImgBtn").ImageTransparency = 0;
						RankEmblemFrame:WaitForChild("Rank4ImgBtn").ImageColor3 = Color3.fromRGB(255, 255, 255);
						RankEmblemFrame:WaitForChild("Rank4ImgBtn"):WaitForChild("LockTxt").Visible = false;
					end;
					if Rank.Value > 4 then
						RankEmblemFrame:WaitForChild("Rank5ImgBtn").ImageTransparency = 0;
						RankEmblemFrame:WaitForChild("Rank5ImgBtn").ImageColor3 = Color3.fromRGB(255, 255, 255);
						RankEmblemFrame:WaitForChild("Rank5ImgBtn"):WaitForChild("LockTxt").Visible = false;
					end;
					if Rank.Value > 5 then
						RankEmblemFrame:WaitForChild("Rank6ImgBtn").ImageTransparency = 0;
						RankEmblemFrame:WaitForChild("Rank6ImgBtn").ImageColor3 = Color3.fromRGB(255, 255, 255);
						RankEmblemFrame:WaitForChild("Rank6ImgBtn"):WaitForChild("LockTxt").Visible = false;
					end;
					if Rank.Value > 6 then
						RankEmblemFrame:WaitForChild("Rank7ImgBtn").ImageTransparency = 0;
						RankEmblemFrame:WaitForChild("Rank7ImgBtn").ImageColor3 = Color3.fromRGB(255, 255, 255);
						RankEmblemFrame:WaitForChild("Rank7ImgBtn"):WaitForChild("LockTxt").Visible = false;
					end;
					if Rank.Value > 7 then
						RankEmblemFrame:WaitForChild("Rank8ImgBtn").ImageTransparency = 0;
						RankEmblemFrame:WaitForChild("Rank8ImgBtn").ImageColor3 = Color3.fromRGB(255, 255, 255);
						RankEmblemFrame:WaitForChild("Rank8ImgBtn"):WaitForChild("LockTxt").Visible = false;
					end;
					if Rank.Value > 8 then
						RankEmblemFrame:WaitForChild("Rank9ImgBtn").ImageTransparency = 0;
						RankEmblemFrame:WaitForChild("Rank9ImgBtn").ImageColor3 = Color3.fromRGB(255, 255, 255);
						RankEmblemFrame:WaitForChild("Rank9ImgBtn"):WaitForChild("LockTxt").Visible = false;
					end;
					if Rank.Value > 9 then
						RankEmblemFrame:WaitForChild("Rank10ImgBtn").ImageTransparency = 0;
						RankEmblemFrame:WaitForChild("Rank10ImgBtn").ImageColor3 = Color3.fromRGB(255, 255, 255);
						RankEmblemFrame:WaitForChild("Rank10ImgBtn"):WaitForChild("LockTxt").Visible = false;
					end;
					if Rank.Value > 10 then
						RankEmblemFrame:WaitForChild("Rank11ImgBtn").ImageTransparency = 0;
						RankEmblemFrame:WaitForChild("Rank11ImgBtn").ImageColor3 = Color3.fromRGB(255, 255, 255);
						RankEmblemFrame:WaitForChild("Rank11ImgBtn"):WaitForChild("LockTxt").Visible = false;
					end;
					local v58 = HttpService:JSONDecode(Setting.Value);
					if v58 then
						for v59, v60 in pairs(MenuFrame:WaitForChild("SettingFrame"):GetChildren()) do
							if v60.Name == "SettingTxt0" then
								if v58.OnlyDmgVillain ~= nil then
									if v58.OnlyDmgVillain == true then
										v60:WaitForChild("ToggleBtn").Text = "On";
										v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
										v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
									else
										v60:WaitForChild("ToggleBtn").Text = "Off";
										v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
										v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
									end;
								end;
							elseif v60.Name == "SettingTxt1" then
								if v58.FSXpTxt ~= nil then
									if v58.FSXpTxt == true then
										v60:WaitForChild("ToggleBtn").Text = "On";
										v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
										v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
									else
										v60:WaitForChild("ToggleBtn").Text = "Off";
										v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
										v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
									end;
								end;
							elseif v60.Name == "SettingTxt2" then
								if v58.BTXpTxt ~= nil then
									if v58.BTXpTxt == true then
										v60:WaitForChild("ToggleBtn").Text = "On";
										v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
										v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
									else
										v60:WaitForChild("ToggleBtn").Text = "Off";
										v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
										v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
									end;
								end;
							elseif v60.Name == "SettingTxt3" then
								if v58.MSXpTxt ~= nil then
									if v58.BTXpTxt == true then
										v60:WaitForChild("ToggleBtn").Text = "On";
										v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
										v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
									else
										v60:WaitForChild("ToggleBtn").Text = "Off";
										v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
										v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
									end;
								end;
							elseif v60.Name == "SettingTxt4" then
								if v58.JFXpTxt ~= nil then
									if v58.BTXpTxt == true then
										v60:WaitForChild("ToggleBtn").Text = "On";
										v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
										v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
									else
										v60:WaitForChild("ToggleBtn").Text = "Off";
										v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
										v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
									end;
								end;
							elseif v60.Name == "SettingTxt5" then
								if v58.PPXpTxt ~= nil then
									if v58.BTXpTxt == true then
										v60:WaitForChild("ToggleBtn").Text = "On";
										v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
										v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
									else
										v60:WaitForChild("ToggleBtn").Text = "Off";
										v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
										v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
									end;
								end;
							elseif v60.Name == "SettingTxt6" then
								if v58.BGMusic ~= nil then
									if v58.BGMusic == true then
										v60:WaitForChild("ToggleBtn").Text = "On";
										v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
										v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
									else
										BackgroundSound.Volume = 0;
										v60:WaitForChild("ToggleBtn").Text = "Off";
										v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
										v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
									end;
								end;
							elseif v60.Name == "SettingTxt7" then
								if v58.DmgToOpp ~= nil then
									if v58.DmgToOpp == true then
										v60:WaitForChild("ToggleBtn").Text = "On";
										v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
										v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
									else
										v60:WaitForChild("ToggleBtn").Text = "Off";
										v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
										v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
									end;
								end;
							elseif v60.Name == "SettingTxt8" then
								if v58.DmgToSelf ~= nil then
									if v58.DmgToSelf == true then
										v60:WaitForChild("ToggleBtn").Text = "On";
										v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
										v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
									else
										v60:WaitForChild("ToggleBtn").Text = "Off";
										v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
										v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
									end;
								end;
							elseif v60.Name == "SettingTxt9" then
								if v58.ShowNameTag ~= nil then
									if v58.ShowNameTag == true then
										v60:WaitForChild("ToggleBtn").Text = "On";
										v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
										v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
									else
										v60:WaitForChild("ToggleBtn").Text = "Off";
										v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
										v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
									end;
								end;
							elseif v60.Name == "SettingTxt10" then
								if v58.AutoTrainingBot ~= nil then
									if v58.AutoTrainingBot == true then
										v60:WaitForChild("ToggleBtn").Text = "On";
										v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
										v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
									else
										v60:WaitForChild("ToggleBtn").Text = "Off";
										v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
										v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
									end;
								end;
							elseif v60.Name == "SettingTxt11" then
								if v58.ToggleWaterRun ~= nil then
									if v58.ToggleWaterRun == true then
										v60:WaitForChild("ToggleBtn").Text = "On";
										v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
										v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
									else
										v60:WaitForChild("ToggleBtn").Text = "Off";
										v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
										v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
									end;
								end;
							elseif v60.Name == "SettingTxt12" then
								if v58.ToggleVipCape ~= nil then
									if v58.ToggleVipCape == true then
										v60:WaitForChild("ToggleBtn").Text = "On";
										v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
										v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
									else
										v60:WaitForChild("ToggleBtn").Text = "Off";
										v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
										v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
									end;
								end;
							elseif v60.Name == "SettingTxt13" then
								if v58.ToggleVipTag ~= nil then
									if v58.ToggleVipTag == true then
										v60:WaitForChild("ToggleBtn").Text = "On";
										v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
										v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
									else
										v60:WaitForChild("ToggleBtn").Text = "Off";
										v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
										v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
									end;
								end;
							elseif v60.Name == "SettingTxt14" then
								if v58.ToggleFlight ~= nil then
									if v58.ToggleFlight == true then
										v60:WaitForChild("ToggleBtn").Text = "On";
										v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
										v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
									else
										v60:WaitForChild("ToggleBtn").Text = "Off";
										v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
										v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
									end;
								end;
							elseif v60.Name == "SettingTxt15" then
								if v58.SelectedMS ~= nil then
									v60:WaitForChild("TextBox").Text = tostring(v58.SelectedMS);
									CustomMS = v58.SelectedMS;
								end;
							elseif v60.Name == "SettingTxt16" then
								if v58.SelectedJP ~= nil then
									v60:WaitForChild("TextBox").Text = tostring(v58.SelectedJP);
									CustomJP = v58.SelectedJP;
								end;
							elseif v60.Name == "SettingTxt17" then
								if v58.SelectedFS ~= nil then
									v60:WaitForChild("TextBox").Text = tostring(v58.SelectedFS);
									CustomFS = v58.SelectedFS;
								end;
							elseif v60.Name == "SettingTxt18" and v58.GhostRiderHead ~= nil then
								if v58.GhostRiderHead == true then
									v60:WaitForChild("ToggleBtn").Text = "On";
									v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
									v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
								else
									v60:WaitForChild("ToggleBtn").Text = "Off";
									v60:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
									v60:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
								end;
							end;
						end;
					end;
					local v61 = HttpService:JSONDecode(QuestData.Value);
					if v61 and v61.MainQuest and v61.MainQuest.No >= 7 and MovementSpeed.Value >= 1000 and PsychicPower.Value >= 1000 and v58 and v58.ToggleWaterRun then
						workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part1").CanCollide = true;
						workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part2").CanCollide = true;
						workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part3").CanCollide = true;
						workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part4").CanCollide = true;
						workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part5").CanCollide = true;
						workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part6").CanCollide = true;
						workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part7").CanCollide = true;
						workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part8").CanCollide = true;
						workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part9").CanCollide = true;
					end;
					local v62 = HttpService:JSONDecode(QuestData.Value);
					local v63 = HttpService:JSONDecode(Inventory.Value);
					if v62 and v63 then
						QuestDataModule.UpdateQuestDataFunc(v62, v63, AddComas, MenuFrame, Character, MainQuestFrame, FistStrength, BodyToughness, MovementSpeed, JumpForce, PsychicPower, VillainKilled, HeroKilled, SpecialQuestFrame, DailyQuestFrame, WeeklyQuestFrame);
						return;
					end;
				elseif p16[1] == "RewriteStats" then
					FistStrength.Value = p16[2];
					BodyToughness.Value = p16[3];
					MovementSpeed.Value = p16[4];
					JumpForce.Value = p16[5];
					PsychicPower.Value = p16[6];
				end;
			end;
		end;
	end;
end);
function CharacterAddedFunc(p17)
	Character = player.Character or player.CharacterAdded:wait();
	Humanoid = Character:WaitForChild("Humanoid");
	workspace.CurrentCamera.CameraType = Enum.CameraType.Custom;
	workspace.CurrentCamera.CameraSubject = Humanoid;
	HumanoidRootPart = Character:WaitForChild("HumanoidRootPart");
	CanFly = false;
	Flying = false;
	Swimming = false;
	_G.Flying = false;
	Landed = true;
	TalkingOnQuest = false;
	TouchingQuestPart = false;
	Combat_FirstPunch = false;
	CanPunch = true;
	CanBeInvisible = true;
	Invisible = false;
	CanSpherePunch = true;
	CanSoulReap = true;
	CanUseDevilFlame = true;
	CanTeleport = true;
	CanBulletPunch = true;
	_G.NearTrainingRock = false;
	_G.NearTrainingCrystal = false;
	_G.NearStarFSTraining1 = false;
	_G.NearStarFSTraining2 = false;
	_G.NearStarFSTraining3 = false;
	_G.NearPPTrainingPart1 = false;
	_G.NearPPTrainingPart2 = false;
	_G.NearPPTrainingPart3 = false;
	_G.NearPPTrainingPart4 = false;
	CanConcealAura = true;
	CanSoulAttack = true;
	CanKillingIntent = true;
	SoulAttacking = false;
	u2 = {};
	if MovementSpeed.Value <= 400 then
		local v64 = 10 + MovementSpeed.Value / 10;
	elseif MovementSpeed.Value <= 5400 then
		v64 = 46 + MovementSpeed.Value / 100;
	elseif MovementSpeed.Value <= 65400 then
		v64 = 91 + MovementSpeed.Value / 600;
	elseif MovementSpeed.Value <= 665400 then
		v64 = 170 + (MovementSpeed.Value - 5400) / 2000;
	else
		v64 = 440 + (MovementSpeed.Value - 65400) / 10000;
	end;
	if 10 < CustomMS then
		if CustomMS < v64 then
			v64 = CustomMS;
		end;
	end;
	if 1000 < v64 then
		v64 = 1000;
	end;
	Humanoid.WalkSpeed = v64;
	if JumpForce.Value <= 2500 then
		local v65 = 50 + JumpForce.Value / 50;
	elseif JumpForce.Value <= 8750 then
		v65 = 65 + JumpForce.Value / 250;
	elseif JumpForce.Value <= 33750 then
		v65 = 84 + (JumpForce.Value - 750) / 500;
	elseif JumpForce.Value <= 83750 then
		v65 = 120 + (JumpForce.Value - 3750) / 1000;
	elseif JumpForce.Value <= 665000 then
		v65 = 193 + (JumpForce.Value - 65000) / 2500;
	else
		v65 = 400 + JumpForce.Value / 20000;
	end;
	if 50 < CustomJP then
		if CustomJP < v65 then
			v65 = CustomJP;
		end;
	end;
	if 500 < v65 then
		v65 = 500;
	end;
	Humanoid.JumpPower = v65;
	Humanoid:SetStateEnabled(0, false);
	Humanoid:SetStateEnabled(1, false);
	Humanoid.StateChanged:connect(function(p18, p19)
		if p19 == Enum.HumanoidStateType.Landed then
			CanFly = false;
			Flying = false;
			Swimming = false;
			Landed = true;
			return;
		end;
		if p19 == Enum.HumanoidStateType.Freefall then
			CanFly = true;
			Flying = false;
			Swimming = false;
			Landed = false;
			return;
		end;
		if p19 == Enum.HumanoidStateType.Swimming then
			Swimming = true;
			Landed = true;
		end;
	end);
	MenuFrame:WaitForChild("InfoFrame"):WaitForChild("RepTxt").Text = "Reputation : " .. tostring(Reputation.Value);
	MenuFrame:WaitForChild("InfoFrame"):WaitForChild("StatusTxt").Text = "Status : " .. Status.Value;
	RunningEventDebounce = false;
	WalkSpeedOldPosition = Vector3.new(0, 0, 0);
	CurrentSpeed = 0;
	Humanoid.Running:Connect(function(p20)
		CurrentSpeed = p20;
		if not (p20 < 0.1) then
			if Humanoid.WalkSpeed <= 9 then
				CurrentSpeed = 0;
				if 0.1 < p20 then
					if Humanoid.WalkSpeed <= 9 then
						if HumanoidRootPart then
							if HumanoidRootPart.Anchored == false then
								WarnTxt.Text = "too heavy to train Movement Speed!";
								WarnTxt.Visible = true;
								delay(1, function()
									WarnTxt.Visible = false;
								end);
							end;
						end;
					end;
				end;
				return;
			end;
		else
			CurrentSpeed = 0;
			if 0.1 < p20 then
				if Humanoid.WalkSpeed <= 9 then
					if HumanoidRootPart then
						if HumanoidRootPart.Anchored == false then
							WarnTxt.Text = "too heavy to train Movement Speed!";
							WarnTxt.Visible = true;
							delay(1, function()
								WarnTxt.Visible = false;
							end);
						end;
					end;
				end;
			end;
			return;
		end;
		if 0 < p20 then
			if RunningEventDebounce == false then
				RunningEventDebounce = true;
				while true do
					if 0 < CurrentSpeed then

					else
						break;
					end;
					if HumanoidRootPart then
						if WalkSpeedOldPosition ~= HumanoidRootPart.Position then
							WalkSpeedOldPosition = HumanoidRootPart.Position;
						else
							CurrentSpeed = 0;
							WalkSpeedOldPosition = Vector3.new(0, 0, 0);
						end;
					end;
					if Humanoid then
						if Humanoid:GetState() ~= Enum.HumanoidStateType.Swimming then
							pcall(function()
								if HttpService:JSONDecode(QuestData.Value) ~= nil then
									if QuestMsgFrame.Visible == false then
										if 2 <= HttpService:JSONDecode(QuestData.Value).MainQuest.No then
											if not _G.Flying then
												spawn(function()
													if Character then
														if Character:FindFirstChild("LeftWeight1") then
															RemoteEvent:FireServer({ "+MS2" });
															if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
																CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("MSImg"), 2);
																return;
															end;
														elseif Character then
															if Character:FindFirstChild("LeftWeight2") then
																RemoteEvent:FireServer({ "+MS3" });
																if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
																	CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("MSImg"), 5);
																	return;
																end;
															elseif Character then
																if Character:FindFirstChild("LeftWeight3") then
																	RemoteEvent:FireServer({ "+MS4" });
																	if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
																		CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("MSImg"), 10);
																		return;
																	end;
																elseif Character then
																	if Character:FindFirstChild("LeftWeight4") then
																		RemoteEvent:FireServer({ "+MS5" });
																		if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
																			CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("MSImg"), 20);
																			return;
																		end;
																	else
																		RemoteEvent:FireServer({ "+MS1" });
																		if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
																			CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("MSImg"), 1);
																		end;
																	end;
																else
																	RemoteEvent:FireServer({ "+MS1" });
																	if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
																		CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("MSImg"), 1);
																	end;
																end;
															elseif Character then
																if Character:FindFirstChild("LeftWeight4") then
																	RemoteEvent:FireServer({ "+MS5" });
																	if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
																		CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("MSImg"), 20);
																		return;
																	end;
																else
																	RemoteEvent:FireServer({ "+MS1" });
																	if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
																		CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("MSImg"), 1);
																	end;
																end;
															else
																RemoteEvent:FireServer({ "+MS1" });
																if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
																	CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("MSImg"), 1);
																end;
															end;
														elseif Character then
															if Character:FindFirstChild("LeftWeight3") then
																RemoteEvent:FireServer({ "+MS4" });
																if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
																	CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("MSImg"), 10);
																	return;
																end;
															elseif Character then
																if Character:FindFirstChild("LeftWeight4") then
																	RemoteEvent:FireServer({ "+MS5" });
																	if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
																		CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("MSImg"), 20);
																		return;
																	end;
																else
																	RemoteEvent:FireServer({ "+MS1" });
																	if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
																		CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("MSImg"), 1);
																	end;
																end;
															else
																RemoteEvent:FireServer({ "+MS1" });
																if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
																	CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("MSImg"), 1);
																end;
															end;
														elseif Character then
															if Character:FindFirstChild("LeftWeight4") then
																RemoteEvent:FireServer({ "+MS5" });
																if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
																	CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("MSImg"), 20);
																	return;
																end;
															else
																RemoteEvent:FireServer({ "+MS1" });
																if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
																	CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("MSImg"), 1);
																end;
															end;
														else
															RemoteEvent:FireServer({ "+MS1" });
															if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
																CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("MSImg"), 1);
															end;
														end;
													elseif Character then
														if Character:FindFirstChild("LeftWeight2") then
															RemoteEvent:FireServer({ "+MS3" });
															if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
																CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("MSImg"), 5);
																return;
															end;
														elseif Character then
															if Character:FindFirstChild("LeftWeight3") then
																RemoteEvent:FireServer({ "+MS4" });
																if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
																	CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("MSImg"), 10);
																	return;
																end;
															elseif Character then
																if Character:FindFirstChild("LeftWeight4") then
																	RemoteEvent:FireServer({ "+MS5" });
																	if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
																		CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("MSImg"), 20);
																		return;
																	end;
																else
																	RemoteEvent:FireServer({ "+MS1" });
																	if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
																		CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("MSImg"), 1);
																	end;
																end;
															else
																RemoteEvent:FireServer({ "+MS1" });
																if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
																	CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("MSImg"), 1);
																end;
															end;
														elseif Character then
															if Character:FindFirstChild("LeftWeight4") then
																RemoteEvent:FireServer({ "+MS5" });
																if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
																	CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("MSImg"), 20);
																	return;
																end;
															else
																RemoteEvent:FireServer({ "+MS1" });
																if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
																	CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("MSImg"), 1);
																end;
															end;
														else
															RemoteEvent:FireServer({ "+MS1" });
															if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
																CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("MSImg"), 1);
															end;
														end;
													elseif Character then
														if Character:FindFirstChild("LeftWeight3") then
															RemoteEvent:FireServer({ "+MS4" });
															if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
																CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("MSImg"), 10);
																return;
															end;
														elseif Character then
															if Character:FindFirstChild("LeftWeight4") then
																RemoteEvent:FireServer({ "+MS5" });
																if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
																	CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("MSImg"), 20);
																	return;
																end;
															else
																RemoteEvent:FireServer({ "+MS1" });
																if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
																	CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("MSImg"), 1);
																end;
															end;
														else
															RemoteEvent:FireServer({ "+MS1" });
															if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
																CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("MSImg"), 1);
															end;
														end;
													elseif Character then
														if Character:FindFirstChild("LeftWeight4") then
															RemoteEvent:FireServer({ "+MS5" });
															if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
																CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("MSImg"), 20);
																return;
															end;
														else
															RemoteEvent:FireServer({ "+MS1" });
															if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
																CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("MSImg"), 1);
															end;
														end;
													else
														RemoteEvent:FireServer({ "+MS1" });
														if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
															CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("MSImg"), 1);
														end;
													end;
												end);
											end;
										end;
									end;
								end;
							end);
						end;
					end;
					wait(math.random(15, 25) / 10);				
				end;
				wait(0.5);
				RunningEventDebounce = false;
			end;
		end;
	end);
	JumpCount = 0;
	Humanoid.Jumping:Connect(function(p21)
		if p21 then
			if not _G.Flying then
				if Humanoid.JumpPower <= 9 then

				else
					JumpCount = JumpCount + 1;
					if math.random(2, 3) <= JumpCount then
						JumpCount = 0;
						pcall(function()
							if HttpService:JSONDecode(QuestData.Value) ~= nil then
								if QuestMsgFrame.Visible == false then
									if 2 <= HttpService:JSONDecode(QuestData.Value).MainQuest.No then
										if Character then
											if Character:FindFirstChild("LeftWeight1") then
												RemoteEvent:FireServer({ "+JF2" });
												if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
													CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("JFImg"), 2);
													return;
												end;
											elseif Character then
												if Character:FindFirstChild("LeftWeight2") then
													RemoteEvent:FireServer({ "+JF3" });
													if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
														CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("JFImg"), 5);
														return;
													end;
												elseif Character then
													if Character:FindFirstChild("LeftWeight3") then
														RemoteEvent:FireServer({ "+JF4" });
														if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
															CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("JFImg"), 10);
															return;
														end;
													elseif Character then
														if Character:FindFirstChild("LeftWeight4") then
															RemoteEvent:FireServer({ "+JF5" });
															if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
																CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("JFImg"), 20);
																return;
															end;
														else
															RemoteEvent:FireServer({ "+JF1" });
															if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt4"):WaitForChild("ToggleBtn").Text, "On") then
																CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("JFImg"), 1);
															end;
														end;
													else
														RemoteEvent:FireServer({ "+JF1" });
														if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt4"):WaitForChild("ToggleBtn").Text, "On") then
															CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("JFImg"), 1);
														end;
													end;
												elseif Character then
													if Character:FindFirstChild("LeftWeight4") then
														RemoteEvent:FireServer({ "+JF5" });
														if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
															CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("JFImg"), 20);
															return;
														end;
													else
														RemoteEvent:FireServer({ "+JF1" });
														if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt4"):WaitForChild("ToggleBtn").Text, "On") then
															CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("JFImg"), 1);
														end;
													end;
												else
													RemoteEvent:FireServer({ "+JF1" });
													if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt4"):WaitForChild("ToggleBtn").Text, "On") then
														CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("JFImg"), 1);
													end;
												end;
											elseif Character then
												if Character:FindFirstChild("LeftWeight3") then
													RemoteEvent:FireServer({ "+JF4" });
													if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
														CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("JFImg"), 10);
														return;
													end;
												elseif Character then
													if Character:FindFirstChild("LeftWeight4") then
														RemoteEvent:FireServer({ "+JF5" });
														if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
															CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("JFImg"), 20);
															return;
														end;
													else
														RemoteEvent:FireServer({ "+JF1" });
														if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt4"):WaitForChild("ToggleBtn").Text, "On") then
															CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("JFImg"), 1);
														end;
													end;
												else
													RemoteEvent:FireServer({ "+JF1" });
													if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt4"):WaitForChild("ToggleBtn").Text, "On") then
														CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("JFImg"), 1);
													end;
												end;
											elseif Character then
												if Character:FindFirstChild("LeftWeight4") then
													RemoteEvent:FireServer({ "+JF5" });
													if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
														CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("JFImg"), 20);
														return;
													end;
												else
													RemoteEvent:FireServer({ "+JF1" });
													if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt4"):WaitForChild("ToggleBtn").Text, "On") then
														CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("JFImg"), 1);
													end;
												end;
											else
												RemoteEvent:FireServer({ "+JF1" });
												if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt4"):WaitForChild("ToggleBtn").Text, "On") then
													CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("JFImg"), 1);
												end;
											end;
										elseif Character then
											if Character:FindFirstChild("LeftWeight2") then
												RemoteEvent:FireServer({ "+JF3" });
												if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
													CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("JFImg"), 5);
													return;
												end;
											elseif Character then
												if Character:FindFirstChild("LeftWeight3") then
													RemoteEvent:FireServer({ "+JF4" });
													if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
														CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("JFImg"), 10);
														return;
													end;
												elseif Character then
													if Character:FindFirstChild("LeftWeight4") then
														RemoteEvent:FireServer({ "+JF5" });
														if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
															CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("JFImg"), 20);
															return;
														end;
													else
														RemoteEvent:FireServer({ "+JF1" });
														if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt4"):WaitForChild("ToggleBtn").Text, "On") then
															CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("JFImg"), 1);
														end;
													end;
												else
													RemoteEvent:FireServer({ "+JF1" });
													if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt4"):WaitForChild("ToggleBtn").Text, "On") then
														CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("JFImg"), 1);
													end;
												end;
											elseif Character then
												if Character:FindFirstChild("LeftWeight4") then
													RemoteEvent:FireServer({ "+JF5" });
													if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
														CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("JFImg"), 20);
														return;
													end;
												else
													RemoteEvent:FireServer({ "+JF1" });
													if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt4"):WaitForChild("ToggleBtn").Text, "On") then
														CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("JFImg"), 1);
													end;
												end;
											else
												RemoteEvent:FireServer({ "+JF1" });
												if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt4"):WaitForChild("ToggleBtn").Text, "On") then
													CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("JFImg"), 1);
												end;
											end;
										elseif Character then
											if Character:FindFirstChild("LeftWeight3") then
												RemoteEvent:FireServer({ "+JF4" });
												if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
													CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("JFImg"), 10);
													return;
												end;
											elseif Character then
												if Character:FindFirstChild("LeftWeight4") then
													RemoteEvent:FireServer({ "+JF5" });
													if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
														CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("JFImg"), 20);
														return;
													end;
												else
													RemoteEvent:FireServer({ "+JF1" });
													if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt4"):WaitForChild("ToggleBtn").Text, "On") then
														CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("JFImg"), 1);
													end;
												end;
											else
												RemoteEvent:FireServer({ "+JF1" });
												if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt4"):WaitForChild("ToggleBtn").Text, "On") then
													CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("JFImg"), 1);
												end;
											end;
										elseif Character then
											if Character:FindFirstChild("LeftWeight4") then
												RemoteEvent:FireServer({ "+JF5" });
												if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt3"):WaitForChild("ToggleBtn").Text, "On") then
													CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("JFImg"), 20);
													return;
												end;
											else
												RemoteEvent:FireServer({ "+JF1" });
												if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt4"):WaitForChild("ToggleBtn").Text, "On") then
													CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("JFImg"), 1);
												end;
											end;
										else
											RemoteEvent:FireServer({ "+JF1" });
											if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt4"):WaitForChild("ToggleBtn").Text, "On") then
												CreateXpGuiFunc(script:WaitForChild("XpFrame"), script:WaitForChild("JFImg"), 1);
											end;
										end;
									end;
								end;
							end;
						end);
					end;
					return;
				end;
			end;
		else
			return;
		end;
		if not _G.Flying then
			if Humanoid.JumpPower <= 9 then
				if HumanoidRootPart then
					if HumanoidRootPart.Anchored == false then
						WarnTxt.Text = "too heavy to train Jump Force!";
						WarnTxt.Visible = true;
						delay(1, function()
							WarnTxt.Visible = false;
						end);
					end;
				end;
			end;
		end;
	end);
	Humanoid.Changed:Connect(function(p22)
		if p22 == "WalkSpeed" then
			if Humanoid.WalkSpeed ~= 0 then
				if Humanoid.WalkSpeed == 10 then
					if Humanoid.WalkSpeed == 10 then
						if MovementSpeed.Value <= 400 then
							local v66 = 10 + MovementSpeed.Value / 10;
						elseif MovementSpeed.Value <= 5400 then
							v66 = 46 + MovementSpeed.Value / 100;
						elseif MovementSpeed.Value <= 65400 then
							v66 = 91 + MovementSpeed.Value / 600;
						elseif MovementSpeed.Value <= 665400 then
							v66 = 170 + (MovementSpeed.Value - 5400) / 2000;
						else
							v66 = 440 + (MovementSpeed.Value - 65400) / 10000;
						end;
						if Character then
							if Character:FindFirstChild("LeftWeight1") then
								v66 = v66 / 2;
								if v66 < 4 then
									v66 = 1;
								end;
							elseif Character then
								if Character:FindFirstChild("LeftWeight2") then
									v66 = v66 / 10;
									if v66 < 4 then
										v66 = 1;
									end;
								elseif Character then
									if Character:FindFirstChild("LeftWeight3") then
										v66 = v66 / 50;
										if v66 < 4 then
											v66 = 1;
										end;
									elseif Character then
										if Character:FindFirstChild("LeftWeight4") then
											v66 = v66 / 100;
											if v66 < 4 then
												v66 = 1;
											end;
										end;
									end;
								elseif Character then
									if Character:FindFirstChild("LeftWeight4") then
										v66 = v66 / 100;
										if v66 < 4 then
											v66 = 1;
										end;
									end;
								end;
							elseif Character then
								if Character:FindFirstChild("LeftWeight3") then
									v66 = v66 / 50;
									if v66 < 4 then
										v66 = 1;
									end;
								elseif Character then
									if Character:FindFirstChild("LeftWeight4") then
										v66 = v66 / 100;
										if v66 < 4 then
											v66 = 1;
										end;
									end;
								end;
							elseif Character then
								if Character:FindFirstChild("LeftWeight4") then
									v66 = v66 / 100;
									if v66 < 4 then
										v66 = 1;
									end;
								end;
							end;
						elseif Character then
							if Character:FindFirstChild("LeftWeight2") then
								v66 = v66 / 10;
								if v66 < 4 then
									v66 = 1;
								end;
							elseif Character then
								if Character:FindFirstChild("LeftWeight3") then
									v66 = v66 / 50;
									if v66 < 4 then
										v66 = 1;
									end;
								elseif Character then
									if Character:FindFirstChild("LeftWeight4") then
										v66 = v66 / 100;
										if v66 < 4 then
											v66 = 1;
										end;
									end;
								end;
							elseif Character then
								if Character:FindFirstChild("LeftWeight4") then
									v66 = v66 / 100;
									if v66 < 4 then
										v66 = 1;
									end;
								end;
							end;
						elseif Character then
							if Character:FindFirstChild("LeftWeight3") then
								v66 = v66 / 50;
								if v66 < 4 then
									v66 = 1;
								end;
							elseif Character then
								if Character:FindFirstChild("LeftWeight4") then
									v66 = v66 / 100;
									if v66 < 4 then
										v66 = 1;
									end;
								end;
							end;
						elseif Character then
							if Character:FindFirstChild("LeftWeight4") then
								v66 = v66 / 100;
								if v66 < 4 then
									v66 = 1;
								end;
							end;
						end;
						if 10 <= v66 then
							return;
						else
							if MovementSpeed.Value <= 400 then
								local v67 = 10 + MovementSpeed.Value / 10;
							elseif MovementSpeed.Value <= 5400 then
								v67 = 46 + MovementSpeed.Value / 100;
							elseif MovementSpeed.Value <= 65400 then
								v67 = 91 + MovementSpeed.Value / 600;
							elseif MovementSpeed.Value <= 665400 then
								v67 = 170 + (MovementSpeed.Value - 5400) / 2000;
							else
								v67 = 440 + (MovementSpeed.Value - 65400) / 10000;
							end;
							if Character then
								if Character:FindFirstChild("LeftWeight1") then
									v67 = v67 / 2;
									if v67 < 4 then
										v67 = 1;
									end;
								elseif Character then
									if Character:FindFirstChild("LeftWeight2") then
										v67 = v67 / 10;
										if v67 < 4 then
											v67 = 1;
										end;
									elseif Character then
										if Character:FindFirstChild("LeftWeight3") then
											v67 = v67 / 50;
											if v67 < 4 then
												v67 = 1;
											end;
										elseif Character then
											if Character:FindFirstChild("LeftWeight4") then
												v67 = v67 / 100;
												if v67 < 4 then
													v67 = 1;
												end;
											end;
										end;
									elseif Character then
										if Character:FindFirstChild("LeftWeight4") then
											v67 = v67 / 100;
											if v67 < 4 then
												v67 = 1;
											end;
										end;
									end;
								elseif Character then
									if Character:FindFirstChild("LeftWeight3") then
										v67 = v67 / 50;
										if v67 < 4 then
											v67 = 1;
										end;
									elseif Character then
										if Character:FindFirstChild("LeftWeight4") then
											v67 = v67 / 100;
											if v67 < 4 then
												v67 = 1;
											end;
										end;
									end;
								elseif Character then
									if Character:FindFirstChild("LeftWeight4") then
										v67 = v67 / 100;
										if v67 < 4 then
											v67 = 1;
										end;
									end;
								end;
							elseif Character then
								if Character:FindFirstChild("LeftWeight2") then
									v67 = v67 / 10;
									if v67 < 4 then
										v67 = 1;
									end;
								elseif Character then
									if Character:FindFirstChild("LeftWeight3") then
										v67 = v67 / 50;
										if v67 < 4 then
											v67 = 1;
										end;
									elseif Character then
										if Character:FindFirstChild("LeftWeight4") then
											v67 = v67 / 100;
											if v67 < 4 then
												v67 = 1;
											end;
										end;
									end;
								elseif Character then
									if Character:FindFirstChild("LeftWeight4") then
										v67 = v67 / 100;
										if v67 < 4 then
											v67 = 1;
										end;
									end;
								end;
							elseif Character then
								if Character:FindFirstChild("LeftWeight3") then
									v67 = v67 / 50;
									if v67 < 4 then
										v67 = 1;
									end;
								elseif Character then
									if Character:FindFirstChild("LeftWeight4") then
										v67 = v67 / 100;
										if v67 < 4 then
											v67 = 1;
										end;
									end;
								end;
							elseif Character then
								if Character:FindFirstChild("LeftWeight4") then
									v67 = v67 / 100;
									if v67 < 4 then
										v67 = 1;
									end;
								end;
							end;
							if 10 < CustomMS then
								if CustomMS < v67 then
									v67 = CustomMS;
								end;
							end;
							if 1000 < v67 then
								v67 = 1000;
							end;
							Humanoid.WalkSpeed = v67;
							if JumpForce.Value <= 2500 then
								local v68 = 50 + JumpForce.Value / 50;
							elseif JumpForce.Value <= 8750 then
								v68 = 65 + JumpForce.Value / 250;
							elseif JumpForce.Value <= 33750 then
								v68 = 84 + (JumpForce.Value - 750) / 500;
							elseif JumpForce.Value <= 83750 then
								v68 = 120 + (JumpForce.Value - 3750) / 1000;
							elseif JumpForce.Value <= 665000 then
								v68 = 193 + (JumpForce.Value - 65000) / 2500;
							else
								v68 = 400 + JumpForce.Value / 20000;
							end;
							if Character then
								if Character:FindFirstChild("LeftWeight1") then
									v68 = v68 / 2;
									if v68 < 50 then
										v68 = 1;
									end;
								elseif Character then
									if Character:FindFirstChild("LeftWeight2") then
										v68 = v68 / 5;
										if v68 < 50 then
											v68 = 1;
										end;
									elseif Character then
										if Character:FindFirstChild("LeftWeight3") then
											v68 = v68 / 10;
											if v68 < 50 then
												v68 = 1;
											end;
										elseif Character then
											if Character:FindFirstChild("LeftWeight4") then
												v68 = v68 / 20;
												if v68 < 50 then
													v68 = 1;
												end;
											end;
										end;
									elseif Character then
										if Character:FindFirstChild("LeftWeight4") then
											v68 = v68 / 20;
											if v68 < 50 then
												v68 = 1;
											end;
										end;
									end;
								elseif Character then
									if Character:FindFirstChild("LeftWeight3") then
										v68 = v68 / 10;
										if v68 < 50 then
											v68 = 1;
										end;
									elseif Character then
										if Character:FindFirstChild("LeftWeight4") then
											v68 = v68 / 20;
											if v68 < 50 then
												v68 = 1;
											end;
										end;
									end;
								elseif Character then
									if Character:FindFirstChild("LeftWeight4") then
										v68 = v68 / 20;
										if v68 < 50 then
											v68 = 1;
										end;
									end;
								end;
							elseif Character then
								if Character:FindFirstChild("LeftWeight2") then
									v68 = v68 / 5;
									if v68 < 50 then
										v68 = 1;
									end;
								elseif Character then
									if Character:FindFirstChild("LeftWeight3") then
										v68 = v68 / 10;
										if v68 < 50 then
											v68 = 1;
										end;
									elseif Character then
										if Character:FindFirstChild("LeftWeight4") then
											v68 = v68 / 20;
											if v68 < 50 then
												v68 = 1;
											end;
										end;
									end;
								elseif Character then
									if Character:FindFirstChild("LeftWeight4") then
										v68 = v68 / 20;
										if v68 < 50 then
											v68 = 1;
										end;
									end;
								end;
							elseif Character then
								if Character:FindFirstChild("LeftWeight3") then
									v68 = v68 / 10;
									if v68 < 50 then
										v68 = 1;
									end;
								elseif Character then
									if Character:FindFirstChild("LeftWeight4") then
										v68 = v68 / 20;
										if v68 < 50 then
											v68 = 1;
										end;
									end;
								end;
							elseif Character then
								if Character:FindFirstChild("LeftWeight4") then
									v68 = v68 / 20;
									if v68 < 50 then
										v68 = 1;
									end;
								end;
							end;
							if 50 < CustomJP then
								if CustomJP < v68 then
									v68 = CustomJP;
								end;
							end;
							if 500 < v68 then
								v68 = 500;
							end;
							Humanoid.JumpPower = v68;
							return;
						end;
					else
						return;
					end;
				else
					if MovementSpeed.Value <= 400 then
						local v69 = 10 + MovementSpeed.Value / 10;
					elseif MovementSpeed.Value <= 5400 then
						v69 = 46 + MovementSpeed.Value / 100;
					elseif MovementSpeed.Value <= 65400 then
						v69 = 91 + MovementSpeed.Value / 600;
					elseif MovementSpeed.Value <= 665400 then
						v69 = 170 + (MovementSpeed.Value - 5400) / 2000;
					else
						v69 = 440 + (MovementSpeed.Value - 65400) / 10000;
					end;
					if Humanoid.WalkSpeed ~= 0 then
						if Humanoid.WalkSpeed ~= 10 then
							if Character then
								if Character:FindFirstChild("LeftWeight1") then
									v69 = v69 / 2;
									if v69 < 4 then
										v69 = 1;
									end;
								elseif Character then
									if Character:FindFirstChild("LeftWeight2") then
										v69 = v69 / 10;
										if v69 < 4 then
											v69 = 1;
										end;
									elseif Character then
										if Character:FindFirstChild("LeftWeight3") then
											v69 = v69 / 50;
											if v69 < 4 then
												v69 = 1;
											end;
										elseif Character then
											if Character:FindFirstChild("LeftWeight4") then
												v69 = v69 / 100;
												if v69 < 4 then
													v69 = 1;
												end;
											end;
										end;
									elseif Character then
										if Character:FindFirstChild("LeftWeight4") then
											v69 = v69 / 100;
											if v69 < 4 then
												v69 = 1;
											end;
										end;
									end;
								elseif Character then
									if Character:FindFirstChild("LeftWeight3") then
										v69 = v69 / 50;
										if v69 < 4 then
											v69 = 1;
										end;
									elseif Character then
										if Character:FindFirstChild("LeftWeight4") then
											v69 = v69 / 100;
											if v69 < 4 then
												v69 = 1;
											end;
										end;
									end;
								elseif Character then
									if Character:FindFirstChild("LeftWeight4") then
										v69 = v69 / 100;
										if v69 < 4 then
											v69 = 1;
										end;
									end;
								end;
							elseif Character then
								if Character:FindFirstChild("LeftWeight2") then
									v69 = v69 / 10;
									if v69 < 4 then
										v69 = 1;
									end;
								elseif Character then
									if Character:FindFirstChild("LeftWeight3") then
										v69 = v69 / 50;
										if v69 < 4 then
											v69 = 1;
										end;
									elseif Character then
										if Character:FindFirstChild("LeftWeight4") then
											v69 = v69 / 100;
											if v69 < 4 then
												v69 = 1;
											end;
										end;
									end;
								elseif Character then
									if Character:FindFirstChild("LeftWeight4") then
										v69 = v69 / 100;
										if v69 < 4 then
											v69 = 1;
										end;
									end;
								end;
							elseif Character then
								if Character:FindFirstChild("LeftWeight3") then
									v69 = v69 / 50;
									if v69 < 4 then
										v69 = 1;
									end;
								elseif Character then
									if Character:FindFirstChild("LeftWeight4") then
										v69 = v69 / 100;
										if v69 < 4 then
											v69 = 1;
										end;
									end;
								end;
							elseif Character then
								if Character:FindFirstChild("LeftWeight4") then
									v69 = v69 / 100;
									if v69 < 4 then
										v69 = 1;
									end;
								end;
							end;
						end;
					end;
					if 10 < CustomMS then
						if CustomMS < v69 then
							v69 = CustomMS;
						end;
					end;
					if 1000 < v69 then
						v69 = 1000;
					end;
					Humanoid.WalkSpeed = v69;
					if Humanoid.JumpPower ~= 0 then
						if Humanoid.JumpPower == 50 then
							return;
						end;
					else
						return;
					end;
					if JumpForce.Value <= 2500 then
						local v70 = 50 + JumpForce.Value / 50;
					elseif JumpForce.Value <= 8750 then
						v70 = 65 + JumpForce.Value / 250;
					elseif JumpForce.Value <= 33750 then
						v70 = 84 + (JumpForce.Value - 750) / 500;
					elseif JumpForce.Value <= 83750 then
						v70 = 120 + (JumpForce.Value - 3750) / 1000;
					elseif JumpForce.Value <= 665000 then
						v70 = 193 + (JumpForce.Value - 65000) / 2500;
					else
						v70 = 400 + JumpForce.Value / 20000;
					end;
					if Humanoid.JumpPower ~= 0 then
						if Humanoid.JumpPower ~= 50 then
							if Character then
								if Character:FindFirstChild("LeftWeight1") then
									v70 = v70 / 2;
									if v70 < 50 then
										v70 = 1;
									end;
								elseif Character then
									if Character:FindFirstChild("LeftWeight2") then
										v70 = v70 / 5;
										if v70 < 50 then
											v70 = 1;
										end;
									elseif Character then
										if Character:FindFirstChild("LeftWeight3") then
											v70 = v70 / 10;
											if v70 < 50 then
												v70 = 1;
											end;
										elseif Character then
											if Character:FindFirstChild("LeftWeight4") then
												v70 = v70 / 20;
												if v70 < 50 then
													v70 = 1;
												end;
											end;
										end;
									elseif Character then
										if Character:FindFirstChild("LeftWeight4") then
											v70 = v70 / 20;
											if v70 < 50 then
												v70 = 1;
											end;
										end;
									end;
								elseif Character then
									if Character:FindFirstChild("LeftWeight3") then
										v70 = v70 / 10;
										if v70 < 50 then
											v70 = 1;
										end;
									elseif Character then
										if Character:FindFirstChild("LeftWeight4") then
											v70 = v70 / 20;
											if v70 < 50 then
												v70 = 1;
											end;
										end;
									end;
								elseif Character then
									if Character:FindFirstChild("LeftWeight4") then
										v70 = v70 / 20;
										if v70 < 50 then
											v70 = 1;
										end;
									end;
								end;
							elseif Character then
								if Character:FindFirstChild("LeftWeight2") then
									v70 = v70 / 5;
									if v70 < 50 then
										v70 = 1;
									end;
								elseif Character then
									if Character:FindFirstChild("LeftWeight3") then
										v70 = v70 / 10;
										if v70 < 50 then
											v70 = 1;
										end;
									elseif Character then
										if Character:FindFirstChild("LeftWeight4") then
											v70 = v70 / 20;
											if v70 < 50 then
												v70 = 1;
											end;
										end;
									end;
								elseif Character then
									if Character:FindFirstChild("LeftWeight4") then
										v70 = v70 / 20;
										if v70 < 50 then
											v70 = 1;
										end;
									end;
								end;
							elseif Character then
								if Character:FindFirstChild("LeftWeight3") then
									v70 = v70 / 10;
									if v70 < 50 then
										v70 = 1;
									end;
								elseif Character then
									if Character:FindFirstChild("LeftWeight4") then
										v70 = v70 / 20;
										if v70 < 50 then
											v70 = 1;
										end;
									end;
								end;
							elseif Character then
								if Character:FindFirstChild("LeftWeight4") then
									v70 = v70 / 20;
									if v70 < 50 then
										v70 = 1;
									end;
								end;
							end;
						end;
					end;
					if 50 < CustomJP then
						if CustomJP < v70 then
							v70 = CustomJP;
						end;
					end;
					if 500 < v70 then
						v70 = 500;
					end;
					Humanoid.JumpPower = v70;
				end;
			elseif Humanoid.WalkSpeed == 10 then
				if MovementSpeed.Value <= 400 then
					v66 = 10 + MovementSpeed.Value / 10;
				elseif MovementSpeed.Value <= 5400 then
					v66 = 46 + MovementSpeed.Value / 100;
				elseif MovementSpeed.Value <= 65400 then
					v66 = 91 + MovementSpeed.Value / 600;
				elseif MovementSpeed.Value <= 665400 then
					v66 = 170 + (MovementSpeed.Value - 5400) / 2000;
				else
					v66 = 440 + (MovementSpeed.Value - 65400) / 10000;
				end;
				if Character then
					if Character:FindFirstChild("LeftWeight1") then
						v66 = v66 / 2;
						if v66 < 4 then
							v66 = 1;
						end;
					elseif Character then
						if Character:FindFirstChild("LeftWeight2") then
							v66 = v66 / 10;
							if v66 < 4 then
								v66 = 1;
							end;
						elseif Character then
							if Character:FindFirstChild("LeftWeight3") then
								v66 = v66 / 50;
								if v66 < 4 then
									v66 = 1;
								end;
							elseif Character then
								if Character:FindFirstChild("LeftWeight4") then
									v66 = v66 / 100;
									if v66 < 4 then
										v66 = 1;
									end;
								end;
							end;
						elseif Character then
							if Character:FindFirstChild("LeftWeight4") then
								v66 = v66 / 100;
								if v66 < 4 then
									v66 = 1;
								end;
							end;
						end;
					elseif Character then
						if Character:FindFirstChild("LeftWeight3") then
							v66 = v66 / 50;
							if v66 < 4 then
								v66 = 1;
							end;
						elseif Character then
							if Character:FindFirstChild("LeftWeight4") then
								v66 = v66 / 100;
								if v66 < 4 then
									v66 = 1;
								end;
							end;
						end;
					elseif Character then
						if Character:FindFirstChild("LeftWeight4") then
							v66 = v66 / 100;
							if v66 < 4 then
								v66 = 1;
							end;
						end;
					end;
				elseif Character then
					if Character:FindFirstChild("LeftWeight2") then
						v66 = v66 / 10;
						if v66 < 4 then
							v66 = 1;
						end;
					elseif Character then
						if Character:FindFirstChild("LeftWeight3") then
							v66 = v66 / 50;
							if v66 < 4 then
								v66 = 1;
							end;
						elseif Character then
							if Character:FindFirstChild("LeftWeight4") then
								v66 = v66 / 100;
								if v66 < 4 then
									v66 = 1;
								end;
							end;
						end;
					elseif Character then
						if Character:FindFirstChild("LeftWeight4") then
							v66 = v66 / 100;
							if v66 < 4 then
								v66 = 1;
							end;
						end;
					end;
				elseif Character then
					if Character:FindFirstChild("LeftWeight3") then
						v66 = v66 / 50;
						if v66 < 4 then
							v66 = 1;
						end;
					elseif Character then
						if Character:FindFirstChild("LeftWeight4") then
							v66 = v66 / 100;
							if v66 < 4 then
								v66 = 1;
							end;
						end;
					end;
				elseif Character then
					if Character:FindFirstChild("LeftWeight4") then
						v66 = v66 / 100;
						if v66 < 4 then
							v66 = 1;
						end;
					end;
				end;
				if 10 <= v66 then
					return;
				else
					if MovementSpeed.Value <= 400 then
						v67 = 10 + MovementSpeed.Value / 10;
					elseif MovementSpeed.Value <= 5400 then
						v67 = 46 + MovementSpeed.Value / 100;
					elseif MovementSpeed.Value <= 65400 then
						v67 = 91 + MovementSpeed.Value / 600;
					elseif MovementSpeed.Value <= 665400 then
						v67 = 170 + (MovementSpeed.Value - 5400) / 2000;
					else
						v67 = 440 + (MovementSpeed.Value - 65400) / 10000;
					end;
					if Character then
						if Character:FindFirstChild("LeftWeight1") then
							v67 = v67 / 2;
							if v67 < 4 then
								v67 = 1;
							end;
						elseif Character then
							if Character:FindFirstChild("LeftWeight2") then
								v67 = v67 / 10;
								if v67 < 4 then
									v67 = 1;
								end;
							elseif Character then
								if Character:FindFirstChild("LeftWeight3") then
									v67 = v67 / 50;
									if v67 < 4 then
										v67 = 1;
									end;
								elseif Character then
									if Character:FindFirstChild("LeftWeight4") then
										v67 = v67 / 100;
										if v67 < 4 then
											v67 = 1;
										end;
									end;
								end;
							elseif Character then
								if Character:FindFirstChild("LeftWeight4") then
									v67 = v67 / 100;
									if v67 < 4 then
										v67 = 1;
									end;
								end;
							end;
						elseif Character then
							if Character:FindFirstChild("LeftWeight3") then
								v67 = v67 / 50;
								if v67 < 4 then
									v67 = 1;
								end;
							elseif Character then
								if Character:FindFirstChild("LeftWeight4") then
									v67 = v67 / 100;
									if v67 < 4 then
										v67 = 1;
									end;
								end;
							end;
						elseif Character then
							if Character:FindFirstChild("LeftWeight4") then
								v67 = v67 / 100;
								if v67 < 4 then
									v67 = 1;
								end;
							end;
						end;
					elseif Character then
						if Character:FindFirstChild("LeftWeight2") then
							v67 = v67 / 10;
							if v67 < 4 then
								v67 = 1;
							end;
						elseif Character then
							if Character:FindFirstChild("LeftWeight3") then
								v67 = v67 / 50;
								if v67 < 4 then
									v67 = 1;
								end;
							elseif Character then
								if Character:FindFirstChild("LeftWeight4") then
									v67 = v67 / 100;
									if v67 < 4 then
										v67 = 1;
									end;
								end;
							end;
						elseif Character then
							if Character:FindFirstChild("LeftWeight4") then
								v67 = v67 / 100;
								if v67 < 4 then
									v67 = 1;
								end;
							end;
						end;
					elseif Character then
						if Character:FindFirstChild("LeftWeight3") then
							v67 = v67 / 50;
							if v67 < 4 then
								v67 = 1;
							end;
						elseif Character then
							if Character:FindFirstChild("LeftWeight4") then
								v67 = v67 / 100;
								if v67 < 4 then
									v67 = 1;
								end;
							end;
						end;
					elseif Character then
						if Character:FindFirstChild("LeftWeight4") then
							v67 = v67 / 100;
							if v67 < 4 then
								v67 = 1;
							end;
						end;
					end;
					if 10 < CustomMS then
						if CustomMS < v67 then
							v67 = CustomMS;
						end;
					end;
					if 1000 < v67 then
						v67 = 1000;
					end;
					Humanoid.WalkSpeed = v67;
					if JumpForce.Value <= 2500 then
						v68 = 50 + JumpForce.Value / 50;
					elseif JumpForce.Value <= 8750 then
						v68 = 65 + JumpForce.Value / 250;
					elseif JumpForce.Value <= 33750 then
						v68 = 84 + (JumpForce.Value - 750) / 500;
					elseif JumpForce.Value <= 83750 then
						v68 = 120 + (JumpForce.Value - 3750) / 1000;
					elseif JumpForce.Value <= 665000 then
						v68 = 193 + (JumpForce.Value - 65000) / 2500;
					else
						v68 = 400 + JumpForce.Value / 20000;
					end;
					if Character then
						if Character:FindFirstChild("LeftWeight1") then
							v68 = v68 / 2;
							if v68 < 50 then
								v68 = 1;
							end;
						elseif Character then
							if Character:FindFirstChild("LeftWeight2") then
								v68 = v68 / 5;
								if v68 < 50 then
									v68 = 1;
								end;
							elseif Character then
								if Character:FindFirstChild("LeftWeight3") then
									v68 = v68 / 10;
									if v68 < 50 then
										v68 = 1;
									end;
								elseif Character then
									if Character:FindFirstChild("LeftWeight4") then
										v68 = v68 / 20;
										if v68 < 50 then
											v68 = 1;
										end;
									end;
								end;
							elseif Character then
								if Character:FindFirstChild("LeftWeight4") then
									v68 = v68 / 20;
									if v68 < 50 then
										v68 = 1;
									end;
								end;
							end;
						elseif Character then
							if Character:FindFirstChild("LeftWeight3") then
								v68 = v68 / 10;
								if v68 < 50 then
									v68 = 1;
								end;
							elseif Character then
								if Character:FindFirstChild("LeftWeight4") then
									v68 = v68 / 20;
									if v68 < 50 then
										v68 = 1;
									end;
								end;
							end;
						elseif Character then
							if Character:FindFirstChild("LeftWeight4") then
								v68 = v68 / 20;
								if v68 < 50 then
									v68 = 1;
								end;
							end;
						end;
					elseif Character then
						if Character:FindFirstChild("LeftWeight2") then
							v68 = v68 / 5;
							if v68 < 50 then
								v68 = 1;
							end;
						elseif Character then
							if Character:FindFirstChild("LeftWeight3") then
								v68 = v68 / 10;
								if v68 < 50 then
									v68 = 1;
								end;
							elseif Character then
								if Character:FindFirstChild("LeftWeight4") then
									v68 = v68 / 20;
									if v68 < 50 then
										v68 = 1;
									end;
								end;
							end;
						elseif Character then
							if Character:FindFirstChild("LeftWeight4") then
								v68 = v68 / 20;
								if v68 < 50 then
									v68 = 1;
								end;
							end;
						end;
					elseif Character then
						if Character:FindFirstChild("LeftWeight3") then
							v68 = v68 / 10;
							if v68 < 50 then
								v68 = 1;
							end;
						elseif Character then
							if Character:FindFirstChild("LeftWeight4") then
								v68 = v68 / 20;
								if v68 < 50 then
									v68 = 1;
								end;
							end;
						end;
					elseif Character then
						if Character:FindFirstChild("LeftWeight4") then
							v68 = v68 / 20;
							if v68 < 50 then
								v68 = 1;
							end;
						end;
					end;
					if 50 < CustomJP then
						if CustomJP < v68 then
							v68 = CustomJP;
						end;
					end;
					if 500 < v68 then
						v68 = 500;
					end;
					Humanoid.JumpPower = v68;
					return;
				end;
			else
				return;
			end;
		end;
	end);
	Humanoid.Died:Connect(function()
		CanFly = false;
		Flying = false;
		Swimming = false;
		_G.Flying = false;
		Landed = true;
		TalkingOnQuest = false;
		TouchingQuestPart = false;
		Combat_FirstPunch = false;
		CanPunch = true;
		CanBeInvisible = true;
		CanSpherePunch = true;
		CanSoulReap = true;
		CanUseDevilFlame = true;
		CanTeleport = true;
		CanBulletPunch = true;
		_G.NearTrainingRock = false;
		_G.NearTrainingCrystal = false;
		_G.NearStarFSTraining1 = false;
		_G.NearStarFSTraining2 = false;
		_G.NearStarFSTraining3 = false;
		_G.NearPPTrainingPart1 = false;
		_G.NearPPTrainingPart2 = false;
		_G.NearPPTrainingPart3 = false;
		_G.NearPPTrainingPart4 = false;
		Invisible = false;
		u2 = {};
		ScreenGui.Enabled = false;
		WeightFrame.Visible = false;
		QuestTalkBtn.Visible = false;
		QuestTalkBtn.Position = UDim2.new(0.387, 0, -0.1, 0);
		QuestTalkBtn.Visible = false;
		QuestMsgFrame.Visible = false;
		QuestMsgFrame:WaitForChild("Page").Value = 1;
		DeathSound:Play();
		workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable;
		TweenService:Create(workspace.CurrentCamera, TweenInfo.new(3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
			CFrame = MenuCamCFrame, 
			Focus = MenuCamFocus
		}):Play();
		if ScreenGui:FindFirstChild("XpFrame") then
			ScreenGui:FindFirstChild("XpFrame"):Destroy();
		end;
		if ScreenGui:FindFirstChild("XpFrame") then
			ScreenGui:FindFirstChild("XpFrame"):Destroy();
		end;
		if ScreenGui:FindFirstChild("XpFrame") then
			ScreenGui:FindFirstChild("XpFrame"):Destroy();
		end;
		wait(3);
		IntroGui:WaitForChild("PlayBtn").Text = " SPAWN ";
		local l__Blur__71 = Lighting:WaitForChild("Blur");
		l__Blur__71.Enabled = true;
		IntroGui.Enabled = true;
		local v72 = 0 - 1;
		while true do
			local v73 = v72 + 1;
			wait(0.05);
			local v74, v75, v76 = pairs(IntroGui:GetChildren());
			while true do
				local v77, v78 = v74(v75, v76);
				if v77 then

				else
					break;
				end;
				v76 = v77;
				if v78.Name == "PlayBtn" then
					v78.TextTransparency = (20 - v73) / 20;
					v78.BackgroundTransparency = (20 - v73) / 20;
				elseif v78.Name == "VersionTxt" then
					v78.TextTransparency = (20 - v73) / 20;
				elseif v78.Name == "HeaderTxt" then
					v78.TextTransparency = (20 - v73) / 20;
					v78.TextStrokeTransparency = (20 - v73) / 20;
				end;			
			end;
			l__Blur__71.Size = l__Blur__71.Size + 0.5;
			if 0 <= 1 then
				if v72 < 20 then

				else
					break;
				end;
			elseif 20 < v72 then

			else
				break;
			end;
			v72 = v72 + 1;		
		end;
		local v79, v80, v81 = pairs(IntroGui:GetChildren());
		while true do
			local v82, v83 = v79(v80, v81);
			if v82 then

			else
				break;
			end;
			v81 = v82;
			if v83.Name == "PlayBtn" then
				v83.TextTransparency = 0;
				v83.BackgroundTransparency = 0;
			elseif v83.Name == "VersionTxt" then
				v83.TextTransparency = 0;
			elseif v83.Name == "HeaderTxt" then
				v83.TextTransparency = 0;
				v83.TextStrokeTransparency = 0;
			end;		
		end;
	end);
	local v84 = HttpService:JSONDecode(QuestData.Value);
	if v84 then
		if v84.MainQuest then
			if 7 <= v84.MainQuest.No then
				if 1000 <= MovementSpeed.Value then
					if 1000 <= PsychicPower.Value then
						workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part1").CanCollide = true;
						workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part2").CanCollide = true;
						workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part3").CanCollide = true;
						workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part4").CanCollide = true;
						workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part5").CanCollide = true;
						workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part6").CanCollide = true;
						workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part7").CanCollide = true;
						workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part8").CanCollide = true;
						workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part9").CanCollide = true;
					end;
				end;
			end;
		end;
	end;
	if v84 then
		if v84.MainQuest then
			if v84.MainQuest.No ~= 0 then
				if v84.MainQuest.Done ~= nil then
					if v84.MainQuest.Done == true then
						workspace:WaitForChild("Main"):WaitForChild("QuestNPC"):WaitForChild("Sathopian"):WaitForChild("QuestBbGui").Enabled = true;
						if Character then
							if Character:FindFirstChild("UpperTorso") then
								if not Character:FindFirstChild("QuestBeam") then
									local v85 = Instance.new("Attachment", Character.UpperTorso);
									v85.Name = "Attachment0";
									local v86 = Instance.new("Attachment", workspace:WaitForChild("Main"):WaitForChild("QuestNPC"):WaitForChild("Sathopian"):WaitForChild("UpperTorso"));
									v86.Name = "Attachment1";
									local v87 = ReplicatedStorage:WaitForChild("QuestBeam"):Clone();
									v87.Attachment0 = v85;
									v87.Attachment1 = v86;
									v87.Parent = Character;
									return;
								end;
							end;
						end;
					else
						workspace:WaitForChild("Main"):WaitForChild("QuestNPC"):WaitForChild("Sathopian"):WaitForChild("QuestBbGui").Enabled = false;
						if Character then
							if Character:FindFirstChild("QuestBeam") then
								Character.QuestBeam:Destroy();
								if Character:FindFirstChild("UpperTorso") then
									if Character.UpperTorso:FindFirstChild("Attachment0") then
										Character.UpperTorso.Attachment0:Destroy();
									end;
								end;
								if workspace:WaitForChild("Main"):WaitForChild("QuestNPC"):WaitForChild("Sathopian"):WaitForChild("UpperTorso"):FindFirstChild("Attachment1") then
									workspace:WaitForChild("Main"):WaitForChild("QuestNPC"):WaitForChild("Sathopian"):WaitForChild("UpperTorso"):FindFirstChild("Attachment1"):Destroy();
								end;
							end;
						end;
					end;
				else
					workspace:WaitForChild("Main"):WaitForChild("QuestNPC"):WaitForChild("Sathopian"):WaitForChild("QuestBbGui").Enabled = false;
					if Character then
						if Character:FindFirstChild("QuestBeam") then
							Character.QuestBeam:Destroy();
							if Character:FindFirstChild("UpperTorso") then
								if Character.UpperTorso:FindFirstChild("Attachment0") then
									Character.UpperTorso.Attachment0:Destroy();
								end;
							end;
							if workspace:WaitForChild("Main"):WaitForChild("QuestNPC"):WaitForChild("Sathopian"):WaitForChild("UpperTorso"):FindFirstChild("Attachment1") then
								workspace:WaitForChild("Main"):WaitForChild("QuestNPC"):WaitForChild("Sathopian"):WaitForChild("UpperTorso"):FindFirstChild("Attachment1"):Destroy();
							end;
						end;
					end;
				end;
			else
				workspace:WaitForChild("Main"):WaitForChild("QuestNPC"):WaitForChild("Sathopian"):WaitForChild("QuestBbGui").Enabled = true;
				if Character then
					if Character:FindFirstChild("UpperTorso") then
						if not Character:FindFirstChild("QuestBeam") then
							v85 = Instance.new("Attachment", Character.UpperTorso);
							v85.Name = "Attachment0";
							v86 = Instance.new("Attachment", workspace:WaitForChild("Main"):WaitForChild("QuestNPC"):WaitForChild("Sathopian"):WaitForChild("UpperTorso"));
							v86.Name = "Attachment1";
							v87 = ReplicatedStorage:WaitForChild("QuestBeam"):Clone();
							v87.Attachment0 = v85;
							v87.Attachment1 = v86;
							v87.Parent = Character;
							return;
						end;
					end;
				end;
			end;
		else
			workspace:WaitForChild("Main"):WaitForChild("QuestNPC"):WaitForChild("Sathopian"):WaitForChild("QuestBbGui").Enabled = false;
			if Character then
				if Character:FindFirstChild("QuestBeam") then
					Character.QuestBeam:Destroy();
					if Character:FindFirstChild("UpperTorso") then
						if Character.UpperTorso:FindFirstChild("Attachment0") then
							Character.UpperTorso.Attachment0:Destroy();
						end;
					end;
					if workspace:WaitForChild("Main"):WaitForChild("QuestNPC"):WaitForChild("Sathopian"):WaitForChild("UpperTorso"):FindFirstChild("Attachment1") then
						workspace:WaitForChild("Main"):WaitForChild("QuestNPC"):WaitForChild("Sathopian"):WaitForChild("UpperTorso"):FindFirstChild("Attachment1"):Destroy();
					end;
				end;
			end;
		end;
	else
		workspace:WaitForChild("Main"):WaitForChild("QuestNPC"):WaitForChild("Sathopian"):WaitForChild("QuestBbGui").Enabled = false;
		if Character then
			if Character:FindFirstChild("QuestBeam") then
				Character.QuestBeam:Destroy();
				if Character:FindFirstChild("UpperTorso") then
					if Character.UpperTorso:FindFirstChild("Attachment0") then
						Character.UpperTorso.Attachment0:Destroy();
					end;
				end;
				if workspace:WaitForChild("Main"):WaitForChild("QuestNPC"):WaitForChild("Sathopian"):WaitForChild("UpperTorso"):FindFirstChild("Attachment1") then
					workspace:WaitForChild("Main"):WaitForChild("QuestNPC"):WaitForChild("Sathopian"):WaitForChild("UpperTorso"):FindFirstChild("Attachment1"):Destroy();
				end;
			end;
		end;
	end;
end;
spawn(function()
	local v88 = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, -1, true, 0);
	local v89 = {
		TextColor3 = Color3.fromRGB(255, 255, 0), 
		TextStrokeColor3 = Color3.fromRGB(255, 0, 255)
	};
	TweenService:Create(MenuFrame:WaitForChild("InfoFrame"):WaitForChild("FSMultiplierTxt"), v88, v89):Play();
	wait(0.25);
	TweenService:Create(MenuFrame:WaitForChild("InfoFrame"):WaitForChild("BTMultiplierTxt"), v88, v89):Play();
	wait(0.25);
	TweenService:Create(MenuFrame:WaitForChild("InfoFrame"):WaitForChild("MSMultiplierTxt"), v88, v89):Play();
	wait(0.25);
	TweenService:Create(MenuFrame:WaitForChild("InfoFrame"):WaitForChild("JFMultiplierTxt"), v88, v89):Play();
	wait(0.25);
	TweenService:Create(MenuFrame:WaitForChild("InfoFrame"):WaitForChild("PPMultiplierTxt"), v88, v89):Play();
	wait(0.25);
	TweenService:Create(MenuFrame:WaitForChild("InfoFrame"):WaitForChild("UpgradeStatFrame"):WaitForChild("MultiplierTxt"), v88, v89):Play();
end);
local u9 = false;
IntroGui:WaitForChild("PlayBtn").MouseButton1Click:Connect(function()
	if IntroGui:WaitForChild("PlayBtn").BackgroundTransparency == 0 and IntroGui:WaitForChild("PlayBtn").TextTransparency == 0 then
		local l__Blur__90 = Lighting:WaitForChild("Blur");
		if not u9 then
			u9 = true;
			spawn(function()
				for v91 = 0, 20 do
					wait(0.05);
					BackgroundSound.Volume = 0.2 - 0.01 * (v91 + 1);
				end;
				BackgroundSound:Stop();
				if string.find(MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt6"):WaitForChild("ToggleBtn").Text, "Off") then
					BackgroundSound.Volume = 0;
					return;
				end;
				BackgroundSound.Volume = 0.2;
			end);
		end;
		for v92 = 0, 20 do
			wait(0.05);
			for v93, v94 in pairs(IntroGui:GetChildren()) do
				if v94.Name == "PlayBtn" then
					v94.TextTransparency = v94.TextTransparency + 0.05;
					v94.BackgroundTransparency = v94.BackgroundTransparency + 0.05;
				elseif v94.Name == "VersionTxt" then
					v94.TextTransparency = v94.TextTransparency + 0.05;
				elseif v94.Name == "HeaderTxt" then
					v94.TextTransparency = v94.TextTransparency + 0.05;
					v94.TextStrokeTransparency = v94.TextStrokeTransparency + 0.05;
				end;
			end;
			l__Blur__90.Size = l__Blur__90.Size - 0.5;
		end;
		for v95, v96 in pairs(IntroGui:GetChildren()) do
			if v96.Name == "PlayBtn" then
				v96.TextTransparency = 1;
				v96.BackgroundTransparency = 1;
			elseif v96.Name == "VersionTxt" then
				v96.TextTransparency = 1;
			elseif v96.Name == "HeaderTxt" then
				v96.TextTransparency = 1;
				v96.TextStrokeTransparency = 1;
			end;
		end;
		l__Blur__90.Size = 0;
		l__Blur__90.Enabled = false;
		IntroGui.Enabled = false;
		ScreenGui.Enabled = true;
		RemoteEvent:FireServer({ "Respawn" });
	end;
end);
for v97, v98 in pairs(ScreenGui:GetChildren()) do
	if v98.Name == "MenuBtn" then
		v98.MouseButton1Click:Connect(function()
			MenuOpenFrameFunc(MenuFrame:WaitForChild("InfoFrame"));
			OpenOrCloseGuiFunc(MenuFrame);
		end);
	elseif v98.Name == "WeightFrame" then
		for v99, v100 in pairs(v98:GetChildren()) do
			if v100.Name == "TxtBtn1" then
				v100.MouseButton1Click:Connect(function()
					if Character and (not (not Character:FindFirstChild("LeftWeight1")) or not (not Character:FindFirstChild("LeftWeight2")) or not (not Character:FindFirstChild("LeftWeight3")) or Character:FindFirstChild("LeftWeight4")) then
						RemoteEvent:FireServer({ "Weight", "Unequip" });
						EquipSound:Play();
						Humanoid:UnequipTools();
					end;
				end);
			elseif v100.Name == "TxtBtn2" then
				v100.MouseButton1Click:Connect(function()
					if Character and not Character:FindFirstChild("LeftWeight1") then
						RemoteEvent:FireServer({ "Weight", "Weight1" });
						EquipSound:Play();
						Humanoid:UnequipTools();
					end;
				end);
			elseif v100.Name == "TxtBtn3" then
				v100.MouseButton1Click:Connect(function()
					if Character and not Character:FindFirstChild("LeftWeight2") then
						RemoteEvent:FireServer({ "Weight", "Weight2" });
						EquipSound:Play();
						Humanoid:UnequipTools();
					end;
				end);
			elseif v100.Name == "TxtBtn4" then
				v100.MouseButton1Click:Connect(function()
					if Character and not Character:FindFirstChild("LeftWeight3") then
						RemoteEvent:FireServer({ "Weight", "Weight3" });
						EquipSound:Play();
						Humanoid:UnequipTools();
					end;
				end);
			elseif v100.Name == "TxtBtn5" then
				v100.MouseButton1Click:Connect(function()
					if Character and not Character:FindFirstChild("LeftWeight4") then
						RemoteEvent:FireServer({ "Weight", "Weight4" });
						EquipSound:Play();
						Humanoid:UnequipTools();
					end;
				end);
			end;
		end;
	elseif v98.Name == "CurrentGemImgBtn" then
		v98.MouseButton1Click:Connect(function()
			MenuFrame.Visible = true;
			MenuOpenFrameFunc(MenuFrame:WaitForChild("SpecialFrame"));
		end);
		v98:WaitForChild("AmountTxtBtn").MouseButton1Click:Connect(function()
			MenuFrame.Visible = true;
			MenuOpenFrameFunc(MenuFrame:WaitForChild("SpecialFrame"));
		end);
		v98.MouseEnter:Connect(function()
			v98:WaitForChild("InfoTxt").Visible = true;
		end);
		v98.MouseLeave:Connect(function()
			v98:WaitForChild("InfoTxt").Visible = false;
		end);
		v98:WaitForChild("AmountTxtBtn").MouseEnter:Connect(function()
			v98:WaitForChild("InfoTxt").Visible = true;
		end);
		v98:WaitForChild("AmountTxtBtn").MouseLeave:Connect(function()
			v98:WaitForChild("InfoTxt").Visible = false;
		end);
	elseif v98.Name == "MenuFrame" then
		for v101, v102 in pairs(v98:GetChildren()) do
			if v102.Name == "InfoBtn" then
				v102.MouseButton1Click:Connect(function()
					MenuOpenFrameFunc(v98.InfoFrame);
				end);
			elseif v102.Name == "SkilBtn" then
				v102.MouseButton1Click:Connect(function()
					MenuOpenFrameFunc(v98.SkillFrame);
				end);
			elseif v102.Name == "GangBtn" then
				v102.MouseButton1Click:Connect(function()
					MenuOpenFrameFunc(v98.GangFrame);
				end);
			elseif v102.Name == "SpecialBtn" then
				v102.MouseButton1Click:Connect(function()
					MenuOpenFrameFunc(v98.SpecialFrame);
				end);
			elseif v102.Name == "SettingBtn" then
				v102.MouseButton1Click:Connect(function()
					MenuOpenFrameFunc(v98.SettingFrame);
				end);
			elseif v102.Name == "InvBtn" then
				v102.MouseButton1Click:Connect(function()
					MenuOpenFrameFunc(v98.InvFrame);
				end);
			elseif v102.Name == "LootBoxBtn" then
				v102.MouseButton1Click:Connect(function()
					MenuOpenFrameFunc(v98.LootBoxFrame);
				end);
			elseif v102.Name == "CloseBtn" then
				v102.MouseButton1Click:Connect(function()
					MenuFrame.Visible = false;
				end);
			elseif v102.Name == "SpecialFrame" then
				for v103, v104 in pairs(v102:GetChildren()) do
					if v104.Name == "BuyBtn1" then
						v104.MouseButton1Click:Connect(function()
							Confirm2Sound:Play();
							local v105 = HttpService:JSONDecode(Inventory.Value);
							if v105 and v105.Vip and v105.Vip.HaveVip then
								MarketplaceService:PromptProductPurchase(player, 380919792);
								return;
							end;
							MarketplaceService:PromptProductPurchase(player, 380918507);
						end);
					elseif v104.Name == "BuyBtn2" then
						v104.MouseButton1Click:Connect(function()
							Confirm2Sound:Play();
							local v106 = HttpService:JSONDecode(Inventory.Value);
							if v106 and v106.Vip and v106.Vip.HaveVip then
								MarketplaceService:PromptProductPurchase(player, 380919975);
								return;
							end;
							MarketplaceService:PromptProductPurchase(player, 380918822);
						end);
					elseif v104.Name == "BuyBtn3" then
						v104.MouseButton1Click:Connect(function()
							Confirm2Sound:Play();
							local v107 = HttpService:JSONDecode(Inventory.Value);
							if v107 and v107.Vip and v107.Vip.HaveVip then
								MarketplaceService:PromptProductPurchase(player, 380920161);
								return;
							end;
							MarketplaceService:PromptProductPurchase(player, 380918935);
						end);
					elseif v104.Name == "BuyBtn4" then
						v104.MouseButton1Click:Connect(function()
							Confirm2Sound:Play();
							local v108 = HttpService:JSONDecode(Inventory.Value);
							if v108 and v108.Vip and v108.Vip.HaveVip then
								MarketplaceService:PromptProductPurchase(player, 380920390);
								return;
							end;
							MarketplaceService:PromptProductPurchase(player, 380919121);
						end);
					elseif v104.Name == "BuyBtn5" then
						v104.MouseButton1Click:Connect(function()
							Confirm2Sound:Play();
							local v109 = HttpService:JSONDecode(Inventory.Value);
							if v109 and v109.Vip and v109.Vip.HaveVip then
								MarketplaceService:PromptProductPurchase(player, 380921641);
								return;
							end;
							MarketplaceService:PromptProductPurchase(player, 380919281);
						end);
					elseif v104.Name == "BuyBtn6" then
						v104.MouseButton1Click:Connect(function()
							Confirm2Sound:Play();
							local v110 = HttpService:JSONDecode(Inventory.Value);
							if v110 and v110.Vip and v110.Vip.HaveVip then
								MarketplaceService:PromptProductPurchase(player, 380922055);
								return;
							end;
							MarketplaceService:PromptProductPurchase(player, 380919392);
						end);
					elseif v104.Name == "BuyBtn7" then
						v104.MouseButton1Click:Connect(function()
							Confirm2Sound:Play();
							MarketplaceService:PromptProductPurchase(player, 380924323);
						end);
					elseif v104.Name == "BuyBtn8" then
						v104.MouseButton1Click:Connect(function()
							Confirm2Sound:Play();
							MarketplaceService:PromptProductPurchase(player, 380924499);
						end);
					elseif v104.Name == "BuyBtn9" then
						v104.MouseButton1Click:Connect(function()
							Confirm2Sound:Play();
							MarketplaceService:PromptProductPurchase(player, 380924635);
						end);
					end;
				end;
			elseif v102.Name == "SettingFrame" then
				for v111, v112 in pairs(v102:GetChildren()) do
					if string.find(v112.Name, "SettingTxt") and v112:FindFirstChild("ToggleBtn") then
						v112:WaitForChild("ToggleBtn").MouseButton1Click:Connect(function()
							if v112.Name == "SettingTxt10" then
								return;
							end;
							Confirm2Sound:Play();
							if v112:WaitForChild("ToggleBtn").Text == "On" then
								v112:WaitForChild("ToggleBtn").Text = "Off";
								v112:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
								v112:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
								if v112.Name == "SettingTxt0" then
									RemoteEvent:FireServer({ "Setting", "OnlyDmgVillain", false });
									return;
								elseif v112.Name == "SettingTxt1" then
									RemoteEvent:FireServer({ "Setting", "FSXpTxt", false });
									return;
								elseif v112.Name == "SettingTxt2" then
									RemoteEvent:FireServer({ "Setting", "BTXpTxt", false });
									return;
								elseif v112.Name == "SettingTxt3" then
									RemoteEvent:FireServer({ "Setting", "MSXpTxt", false });
									return;
								elseif v112.Name == "SettingTxt4" then
									RemoteEvent:FireServer({ "Setting", "JFXpTxt", false });
									return;
								elseif v112.Name == "SettingTxt5" then
									RemoteEvent:FireServer({ "Setting", "PPXpTxt", false });
									return;
								elseif v112.Name == "SettingTxt6" then
									RemoteEvent:FireServer({ "Setting", "BGMusic", false });
									return;
								elseif v112.Name == "SettingTxt7" then
									RemoteEvent:FireServer({ "Setting", "DmgToOpp", false });
									return;
								elseif v112.Name == "SettingTxt8" then
									RemoteEvent:FireServer({ "Setting", "DmgToSelf", false });
									return;
								elseif v112.Name == "SettingTxt9" then
									RemoteEvent:FireServer({ "Setting", "ShowNameTag", false });
									return;
								elseif v112.Name == "SettingTxt10" then
									RemoteEvent:FireServer({ "Setting", "AutoTrainingBot", false });
									return;
								elseif v112.Name == "SettingTxt11" then
									RemoteEvent:FireServer({ "Setting", "ToggleWaterRun", false });
									return;
								elseif v112.Name == "SettingTxt12" then
									RemoteEvent:FireServer({ "Setting", "ToggleVipCape", false });
									return;
								elseif v112.Name == "SettingTxt13" then
									RemoteEvent:FireServer({ "Setting", "ToggleVipTag", false });
									return;
								elseif v112.Name == "SettingTxt14" then
									RemoteEvent:FireServer({ "Setting", "ToggleFlight", false });
									return;
								elseif v112.Name == "SettingTxt18" then
									RemoteEvent:FireServer({ "Setting", "GhostRiderHead", false });
									return;
								else
									return;
								end;
							else
								v112:WaitForChild("ToggleBtn").Text = "On";
								v112:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
								v112:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
								if v112.Name == "SettingTxt0" then
									RemoteEvent:FireServer({ "Setting", "OnlyDmgVillain", true });
									return;
								end;
								if v112.Name == "SettingTxt1" then
									RemoteEvent:FireServer({ "Setting", "FSXpTxt", true });
									return;
								end;
								if v112.Name == "SettingTxt2" then
									RemoteEvent:FireServer({ "Setting", "BTXpTxt", true });
									return;
								end;
								if v112.Name == "SettingTxt3" then
									RemoteEvent:FireServer({ "Setting", "MSXpTxt", true });
									return;
								end;
								if v112.Name == "SettingTxt4" then
									RemoteEvent:FireServer({ "Setting", "JFXpTxt", true });
									return;
								end;
								if v112.Name == "SettingTxt5" then
									RemoteEvent:FireServer({ "Setting", "PPXpTxt", true });
									return;
								end;
								if v112.Name == "SettingTxt6" then
									RemoteEvent:FireServer({ "Setting", "BGMusic", true });
									return;
								end;
								if v112.Name == "SettingTxt7" then
									RemoteEvent:FireServer({ "Setting", "DmgToOpp", true });
									return;
								end;
								if v112.Name == "SettingTxt8" then
									RemoteEvent:FireServer({ "Setting", "DmgToSelf", true });
									return;
								end;
								if v112.Name == "SettingTxt9" then
									RemoteEvent:FireServer({ "Setting", "ShowNameTag", true });
									return;
								end;
								if v112.Name == "SettingTxt10" then
									RemoteEvent:FireServer({ "Setting", "AutoTrainingBot", true });
									return;
								end;
								if v112.Name == "SettingTxt11" then
									RemoteEvent:FireServer({ "Setting", "ToggleWaterRun", true });
									return;
								end;
								if v112.Name == "SettingTxt12" then
									RemoteEvent:FireServer({ "Setting", "ToggleVipCape", true });
									return;
								end;
								if v112.Name == "SettingTxt13" then
									RemoteEvent:FireServer({ "Setting", "ToggleVipTag", true });
									return;
								end;
								if v112.Name ~= "SettingTxt14" then
									if v112.Name == "SettingTxt18" then
										RemoteEvent:FireServer({ "Setting", "GhostRiderHead", true });
									end;
									return;
								end;
							end;
							RemoteEvent:FireServer({ "Setting", "ToggleFlight", true });
						end);
					elseif v112.Name == "SettingTxt15" then
						v112:WaitForChild("TextBox").FocusLost:Connect(function()
							local v113 = tonumber(v112:WaitForChild("TextBox").Text);
							if typeof(v113) ~= "number" or not (v113 > 10) then
								if typeof(v113) == "number" and v113 == 0 then
									v112:WaitForChild("TextBox").Text = 0;
									RemoteEvent:FireServer({ "Setting", "SelectedMS", 0 });
									Confirm2Sound:Play();
									return;
								elseif typeof(v113) == "number" and v113 <= 10 then
									v112:WaitForChild("TextBox").Text = 11;
									RemoteEvent:FireServer({ "Setting", "SelectedMS", 11 });
									Confirm2Sound:Play();
									return;
								else
									local v114 = HttpService:JSONDecode(Setting.Value);
									if v114 and v114.SelectedMS then
										v112:WaitForChild("TextBox").Text = tostring(v114.SelectedMS);
										ErrorSound:Play();
									end;
									return;
								end;
							end;
							if MovementSpeed.Value <= 400 then
								local v115 = 10 + MovementSpeed.Value / 10;
							elseif MovementSpeed.Value <= 5400 then
								v115 = 46 + MovementSpeed.Value / 100;
							elseif MovementSpeed.Value <= 65400 then
								v115 = 91 + MovementSpeed.Value / 600;
							elseif MovementSpeed.Value <= 665400 then
								v115 = 170 + (MovementSpeed.Value - 5400) / 2000;
							else
								v115 = 440 + (MovementSpeed.Value - 65400) / 10000;
							end;
							if v115 > 1000 then
								v115 = 1000;
							end;
							if v113 <= v115 then
								v112:WaitForChild("TextBox").Text = math.floor(v113);
								RemoteEvent:FireServer({ "Setting", "SelectedMS", math.floor(v113) });
								Confirm2Sound:Play();
								return;
							end;
							v112:WaitForChild("TextBox").Text = math.floor(v115);
							RemoteEvent:FireServer({ "Setting", "SelectedMS", math.floor(v115) });
							Confirm2Sound:Play();
						end);
					elseif v112.Name == "SettingTxt16" then
						v112:WaitForChild("TextBox").FocusLost:Connect(function()
							local v116 = tonumber(v112:WaitForChild("TextBox").Text);
							if typeof(v116) ~= "number" or not (v116 > 50) then
								if typeof(v116) == "number" and v116 == 0 then
									v112:WaitForChild("TextBox").Text = 0;
									RemoteEvent:FireServer({ "Setting", "SelectedJP", 0 });
									Confirm2Sound:Play();
									return;
								elseif typeof(v116) == "number" and v116 <= 50 then
									v112:WaitForChild("TextBox").Text = 51;
									RemoteEvent:FireServer({ "Setting", "SelectedJP", 51 });
									Confirm2Sound:Play();
									return;
								else
									local v117 = HttpService:JSONDecode(Setting.Value);
									if v117 and v117.SelectedJP then
										v112:WaitForChild("TextBox").Text = tostring(v117.SelectedJP);
										ErrorSound:Play();
									end;
									return;
								end;
							end;
							if JumpForce.Value <= 2500 then
								local v118 = 50 + JumpForce.Value / 50;
							elseif JumpForce.Value <= 8750 then
								v118 = 65 + JumpForce.Value / 250;
							elseif JumpForce.Value <= 33750 then
								v118 = 84 + (JumpForce.Value - 750) / 500;
							elseif JumpForce.Value <= 83750 then
								v118 = 120 + (JumpForce.Value - 3750) / 1000;
							elseif JumpForce.Value <= 665000 then
								v118 = 193 + (JumpForce.Value - 65000) / 2500;
							else
								v118 = 400 + JumpForce.Value / 20000;
							end;
							if v118 > 500 then
								v118 = 500;
							end;
							if v116 <= v118 then
								v112:WaitForChild("TextBox").Text = math.floor(v116);
								RemoteEvent:FireServer({ "Setting", "SelectedJP", math.floor(v116) });
								Confirm2Sound:Play();
								return;
							end;
							v112:WaitForChild("TextBox").Text = math.floor(v118);
							RemoteEvent:FireServer({ "Setting", "SelectedJP", math.floor(v118) });
							Confirm2Sound:Play();
						end);
					elseif v112.Name == "SettingTxt17" then
						v112:WaitForChild("TextBox").FocusLost:Connect(function()
							local v119 = tonumber(v112:WaitForChild("TextBox").Text);
							if typeof(v119) ~= "number" or not (v119 > 0) then
								if typeof(v119) == "number" and v119 == 0 then
									v112:WaitForChild("TextBox").Text = 0;
									RemoteEvent:FireServer({ "Setting", "SelectedFS", 0 });
									Confirm2Sound:Play();
									return;
								elseif typeof(v119) == "number" and v119 < 1 then
									v112:WaitForChild("TextBox").Text = 1;
									RemoteEvent:FireServer({ "Setting", "SelectedFS", 1 });
									Confirm2Sound:Play();
									return;
								else
									local v120 = HttpService:JSONDecode(Setting.Value);
									if v120 and v120.SelectedFS then
										v112:WaitForChild("TextBox").Text = tostring(v120.SelectedFS);
										ErrorSound:Play();
									end;
									return;
								end;
							end;
							if JumpForce.Value < 100000 then
								local v121 = JumpForce.Value / 200;
							elseif JumpForce.Value < 1000000 then
								v121 = 400 + JumpForce.Value / 1000;
							elseif JumpForce.Value < 10000000 then
								v121 = 1300 + JumpForce.Value / 10000;
							else
								v121 = 2200 + JumpForce.Value / 100000;
							end;
							if v121 > 1000 then
								v121 = 1000;
							end;
							if v119 <= v121 then
								v112:WaitForChild("TextBox").Text = math.floor(v119);
								RemoteEvent:FireServer({ "Setting", "SelectedFS", math.floor(v119) });
								Confirm2Sound:Play();
								return;
							end;
							v112:WaitForChild("TextBox").Text = math.floor(v121);
							RemoteEvent:FireServer({ "Setting", "SelectedFS", math.floor(v121) });
							Confirm2Sound:Play();
						end);
					end;
				end;
			elseif v102.Name == "InfoFrame" then
				for v122, v123 in pairs(v102:GetChildren()) do
					if v123.Name == "VipImgBtn" then
						v123.MouseEnter:Connect(function()
							if v123.Visible == true then
								v123:WaitForChild("TimeTxt").Visible = true;
							end;
						end);
						v123.MouseLeave:Connect(function()
							v123:WaitForChild("TimeTxt").Visible = false;
						end);
					elseif v123.Name == "UpgradeStatFrame" then
						v123:WaitForChild("CancelTxtBtn").MouseButton1Click:Connect(function()
							v123.Visible = false;
						end);
						v123:WaitForChild("ConfirmTxtBtn").MouseButton1Click:Connect(function()
							if not (tonumber(v123:WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text) <= Token.Value) then
								ErrorSound:Play();
								return;
							end;
							Click2Sound:Play();
							RemoteEvent:FireServer({ "StatMultiplier", tostring(v123:WaitForChild("Stat").Value) });
							v123.Visible = false;
						end);
					elseif v123.Name == "FSUpgradeImgBtn" then
						v123.MouseButton1Click:Connect(function()
							Confirm2Sound:Play();
							v102:WaitForChild("UpgradeStatFrame"):WaitForChild("Stat").Value = "FS";
							v102:WaitForChild("UpgradeStatFrame"):WaitForChild("Txt1").Text = "Upgrade Fist Strength Xp Multiplier to";
							local v124 = HttpService:JSONDecode(Inventory.Value);
							if v124 and v124.FSMultiplier then
								if v124.FSMultiplier == 1 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100";
								elseif v124.FSMultiplier == 2 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "200";
								elseif v124.FSMultiplier == 4 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "500";
								elseif v124.FSMultiplier == 8 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "1000";
								elseif v124.FSMultiplier == 16 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "2000";
								elseif v124.FSMultiplier == 32 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "5000";
								elseif v124.FSMultiplier == 64 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "10000";
								elseif v124.FSMultiplier == 128 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "15000";
								elseif v124.FSMultiplier == 256 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "20000";
								elseif v124.FSMultiplier == 512 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "50000";
								elseif v124.FSMultiplier == 1024 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100000";
								elseif v124.FSMultiplier == 2048 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "200000";
								elseif v124.FSMultiplier == 4096 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "500000";
								elseif v124.FSMultiplier == 8192 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "1000000";
								elseif v124.FSMultiplier == 16384 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "2000000";
								elseif v124.FSMultiplier == 32768 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "5000000";
								elseif v124.FSMultiplier == 65536 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "10000000";
								elseif v124.FSMultiplier == 131072 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "20000000";
								elseif v124.FSMultiplier == 262144 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "50000000";
								elseif v124.FSMultiplier == 524288 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100000000";
								end;
								v102:WaitForChild("UpgradeStatFrame"):WaitForChild("MultiplierTxt").Text = "x" .. tostring(v124.FSMultiplier * 2);
							end;
							v102:WaitForChild("UpgradeStatFrame").Visible = true;
						end);
					elseif v123.Name == "BTUpgradeImgBtn" then
						v123.MouseButton1Click:Connect(function()
							Confirm2Sound:Play();
							v102:WaitForChild("UpgradeStatFrame"):WaitForChild("Stat").Value = "BT";
							v102:WaitForChild("UpgradeStatFrame"):WaitForChild("Txt1").Text = "Upgrade Body Toughness Xp Multiplier to";
							local v125 = HttpService:JSONDecode(Inventory.Value);
							if v125 and v125.BTMultiplier then
								if v125.BTMultiplier == 1 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100";
								elseif v125.BTMultiplier == 2 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "200";
								elseif v125.BTMultiplier == 4 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "500";
								elseif v125.BTMultiplier == 8 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "1000";
								elseif v125.BTMultiplier == 16 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "2000";
								elseif v125.BTMultiplier == 32 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "5000";
								elseif v125.BTMultiplier == 64 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "10000";
								elseif v125.BTMultiplier == 128 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "15000";
								elseif v125.BTMultiplier == 256 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "20000";
								elseif v125.BTMultiplier == 512 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "50000";
								elseif v125.BTMultiplier == 1024 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100000";
								elseif v125.BTMultiplier == 2048 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "200000";
								elseif v125.BTMultiplier == 4096 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "500000";
								elseif v125.BTMultiplier == 8192 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "1000000";
								elseif v125.BTMultiplier == 16384 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "2000000";
								elseif v125.BTMultiplier == 32768 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "5000000";
								elseif v125.BTMultiplier == 65536 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "10000000";
								elseif v125.BTMultiplier == 131072 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "20000000";
								elseif v125.BTMultiplier == 262144 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "50000000";
								elseif v125.BTMultiplier == 524288 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100000000";
								end;
								v102:WaitForChild("UpgradeStatFrame"):WaitForChild("MultiplierTxt").Text = "x" .. tostring(v125.BTMultiplier * 2);
							end;
							v102:WaitForChild("UpgradeStatFrame").Visible = true;
						end);
					elseif v123.Name == "MSUpgradeImgBtn" then
						v123.MouseButton1Click:Connect(function()
							Confirm2Sound:Play();
							v102:WaitForChild("UpgradeStatFrame"):WaitForChild("Stat").Value = "MS";
							v102:WaitForChild("UpgradeStatFrame"):WaitForChild("Txt1").Text = "Upgrade Movement Speed Xp Multiplier to";
							local v126 = HttpService:JSONDecode(Inventory.Value);
							if v126 and v126.MSMultiplier then
								if v126.MSMultiplier == 1 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100";
								elseif v126.MSMultiplier == 2 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "200";
								elseif v126.MSMultiplier == 4 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "500";
								elseif v126.MSMultiplier == 8 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "1000";
								elseif v126.MSMultiplier == 16 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "2000";
								elseif v126.MSMultiplier == 32 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "5000";
								elseif v126.MSMultiplier == 64 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "10000";
								elseif v126.MSMultiplier == 128 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "15000";
								elseif v126.MSMultiplier == 256 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "20000";
								elseif v126.MSMultiplier == 512 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "50000";
								elseif v126.MSMultiplier == 1024 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100000";
								elseif v126.MSMultiplier == 2048 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "200000";
								elseif v126.MSMultiplier == 4096 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "500000";
								elseif v126.MSMultiplier == 8192 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "1000000";
								elseif v126.MSMultiplier == 16384 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "2000000";
								elseif v126.MSMultiplier == 32768 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "5000000";
								elseif v126.MSMultiplier == 65536 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "10000000";
								elseif v126.MSMultiplier == 131072 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "20000000";
								elseif v126.MSMultiplier == 262144 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "50000000";
								elseif v126.MSMultiplier == 524288 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100000000";
								end;
								v102:WaitForChild("UpgradeStatFrame"):WaitForChild("MultiplierTxt").Text = "x" .. tostring(v126.MSMultiplier * 2);
							end;
							v102:WaitForChild("UpgradeStatFrame").Visible = true;
						end);
					elseif v123.Name == "JFUpgradeImgBtn" then
						v123.MouseButton1Click:Connect(function()
							Confirm2Sound:Play();
							v102:WaitForChild("UpgradeStatFrame"):WaitForChild("Stat").Value = "JF";
							v102:WaitForChild("UpgradeStatFrame"):WaitForChild("Txt1").Text = "Upgrade Jump Force Xp Multiplier to";
							local v127 = HttpService:JSONDecode(Inventory.Value);
							if v127 and v127.JFMultiplier then
								if v127.JFMultiplier == 1 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100";
								elseif v127.JFMultiplier == 2 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "200";
								elseif v127.JFMultiplier == 4 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "500";
								elseif v127.JFMultiplier == 8 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "1000";
								elseif v127.JFMultiplier == 16 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "2000";
								elseif v127.JFMultiplier == 32 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "5000";
								elseif v127.JFMultiplier == 64 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "10000";
								elseif v127.JFMultiplier == 128 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "15000";
								elseif v127.JFMultiplier == 256 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "20000";
								elseif v127.JFMultiplier == 512 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "50000";
								elseif v127.JFMultiplier == 1024 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100000";
								elseif v127.JFMultiplier == 2048 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "200000";
								elseif v127.JFMultiplier == 4096 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "500000";
								elseif v127.JFMultiplier == 8192 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "1000000";
								elseif v127.JFMultiplier == 16384 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "2000000";
								elseif v127.JFMultiplier == 32768 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "5000000";
								elseif v127.JFMultiplier == 65536 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "10000000";
								elseif v127.JFMultiplier == 131072 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "20000000";
								elseif v127.JFMultiplier == 262144 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "50000000";
								elseif v127.JFMultiplier == 524288 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100000000";
								end;
								v102:WaitForChild("UpgradeStatFrame"):WaitForChild("MultiplierTxt").Text = "x" .. tostring(v127.JFMultiplier * 2);
							end;
							v102:WaitForChild("UpgradeStatFrame").Visible = true;
						end);
					elseif v123.Name == "PPUpgradeImgBtn" then
						v123.MouseButton1Click:Connect(function()
							Confirm2Sound:Play();
							v102:WaitForChild("UpgradeStatFrame"):WaitForChild("Stat").Value = "PP";
							v102:WaitForChild("UpgradeStatFrame"):WaitForChild("Txt1").Text = "Upgrade Psychic Power Xp Multiplier to";
							local v128 = HttpService:JSONDecode(Inventory.Value);
							if v128 and v128.PPMultiplier then
								if v128.PPMultiplier == 1 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100";
								elseif v128.PPMultiplier == 2 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "200";
								elseif v128.PPMultiplier == 4 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "500";
								elseif v128.PPMultiplier == 8 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "1000";
								elseif v128.PPMultiplier == 16 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "2000";
								elseif v128.PPMultiplier == 32 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "5000";
								elseif v128.PPMultiplier == 64 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "10000";
								elseif v128.PPMultiplier == 128 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "15000";
								elseif v128.PPMultiplier == 256 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "20000";
								elseif v128.PPMultiplier == 512 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "50000";
								elseif v128.PPMultiplier == 1024 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100000";
								elseif v128.PPMultiplier == 2048 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "200000";
								elseif v128.PPMultiplier == 4096 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "500000";
								elseif v128.PPMultiplier == 8192 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "1000000";
								elseif v128.PPMultiplier == 16384 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "2000000";
								elseif v128.PPMultiplier == 32768 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "5000000";
								elseif v128.PPMultiplier == 65536 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "10000000";
								elseif v128.PPMultiplier == 131072 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "20000000";
								elseif v128.PPMultiplier == 262144 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "50000000";
								elseif v128.PPMultiplier == 524288 then
									v102:WaitForChild("UpgradeStatFrame"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100000000";
								end;
								v102:WaitForChild("UpgradeStatFrame"):WaitForChild("MultiplierTxt").Text = "x" .. tostring(v128.PPMultiplier * 2);
							end;
							v102:WaitForChild("UpgradeStatFrame").Visible = true;
						end);
					end;
				end;
			end;
		end;
	elseif v98.Name == "SpecialQuestFrame" then
		v98.MouseEnter:Connect(function()
			ScreenGui:WaitForChild("QuestResetTxt").Visible = false;
		end);
		v98.MouseLeave:Connect(function()
			ScreenGui:WaitForChild("QuestResetTxt").Visible = false;
		end);
		v98:WaitForChild("LeftBtn").MouseButton1Click:Connect(function()
			SpecialQuestFrame.Visible = false;
			MainQuestFrame.Visible = true;
		end);
		v98:WaitForChild("RightBtn").MouseButton1Click:Connect(function()
			SpecialQuestFrame.Visible = false;
			DailyQuestFrame.Visible = true;
		end);
	elseif v98.Name == "MainQuestFrame" then
		v98.MouseEnter:Connect(function()
			ScreenGui:WaitForChild("QuestResetTxt").Visible = false;
		end);
		v98.MouseLeave:Connect(function()
			ScreenGui:WaitForChild("QuestResetTxt").Visible = false;
		end);
		v98:WaitForChild("RightBtn").MouseButton1Click:Connect(function()
			MainQuestFrame.Visible = false;
			SpecialQuestFrame.Visible = true;
		end);
	elseif v98.Name == "DailyQuestFrame" then
		v98.MouseEnter:Connect(function()
			local v129 = 1537333200 + (math.floor((os.time() - 1537333200) / 86400) + 1) * 86400 - os.time();
			local v130 = tostring(math.floor(v129 / 86400));
			local v131 = tostring(math.floor((v129 - 86400 * v130) / 3600));
			ScreenGui:WaitForChild("QuestResetTxt").Text = "Reset in : " .. v131 .. "h " .. tostring(math.floor((v129 - 86400 * v130 - 3600 * v131) / 60)) .. "m";
			ScreenGui:WaitForChild("QuestResetTxt").Visible = true;
		end);
		v98.MouseLeave:Connect(function()
			ScreenGui:WaitForChild("QuestResetTxt").Visible = false;
		end);
		for v132, v133 in pairs(v98:GetChildren()) do
			if v133.Name == "RightBtn" then
				v133.MouseButton1Click:Connect(function()
					DailyQuestFrame.Visible = false;
					WeeklyQuestFrame.Visible = true;
				end);
			elseif v133.Name == "LeftBtn" then
				v133.MouseButton1Click:Connect(function()
					DailyQuestFrame.Visible = false;
					SpecialQuestFrame.Visible = true;
				end);
			elseif v133.Name == "MaxFrame1" then
				v133:WaitForChild("ClaimBtn").MouseButton1Click:Connect(function()
					if v133:WaitForChild("ClaimBtn").Text == "Done" then
						return;
					end;
					local v134 = HttpService:JSONDecode(QuestData.Value);
					if v134 and v134.DailyQuest and v134.DailyQuest.FS.Claim == false and v134.DailyQuest.FS.Progress >= 1000 then
						CollectSound:Play();
						RemoteEvent:FireServer({ "DLQ", "FS", "Claim" });
						v133:WaitForChild("ClaimBtn").Text = "Done";
						v133:WaitForChild("ClaimBtn").BackgroundColor3 = Color3.fromRGB(255, 252, 144);
					end;
				end);
			elseif v133.Name == "MaxFrame2" then
				v133:WaitForChild("ClaimBtn").MouseButton1Click:Connect(function()
					if v133:WaitForChild("ClaimBtn").Text == "Done" then
						return;
					end;
					local v135 = HttpService:JSONDecode(QuestData.Value);
					if v135 and v135.DailyQuest and v135.DailyQuest.BT.Claim == false and v135.DailyQuest.BT.Progress >= 1000 then
						CollectSound:Play();
						RemoteEvent:FireServer({ "DLQ", "BT", "Claim" });
						v133:WaitForChild("ClaimBtn").Text = "Done";
						v133:WaitForChild("ClaimBtn").BackgroundColor3 = Color3.fromRGB(255, 252, 144);
					end;
				end);
			elseif v133.Name == "MaxFrame3" then
				v133:WaitForChild("ClaimBtn").MouseButton1Click:Connect(function()
					if v133:WaitForChild("ClaimBtn").Text == "Done" then
						return;
					end;
					local v136 = HttpService:JSONDecode(QuestData.Value);
					if v136 and v136.DailyQuest and v136.DailyQuest.MS.Claim == false and v136.DailyQuest.MS.Progress >= 100 then
						CollectSound:Play();
						RemoteEvent:FireServer({ "DLQ", "MS", "Claim" });
						v133:WaitForChild("ClaimBtn").Text = "Done";
						v133:WaitForChild("ClaimBtn").BackgroundColor3 = Color3.fromRGB(255, 252, 144);
					end;
				end);
			elseif v133.Name == "MaxFrame4" then
				v133:WaitForChild("ClaimBtn").MouseButton1Click:Connect(function()
					if v133:WaitForChild("ClaimBtn").Text == "Done" then
						return;
					end;
					local v137 = HttpService:JSONDecode(QuestData.Value);
					if v137 and v137.DailyQuest and v137.DailyQuest.JF.Claim == false and v137.DailyQuest.JF.Progress >= 100 then
						CollectSound:Play();
						RemoteEvent:FireServer({ "DLQ", "JF", "Claim" });
						v133:WaitForChild("ClaimBtn").Text = "Done";
						v133:WaitForChild("ClaimBtn").BackgroundColor3 = Color3.fromRGB(255, 252, 144);
					end;
				end);
			elseif v133.Name == "MaxFrame5" then
				v133:WaitForChild("ClaimBtn").MouseButton1Click:Connect(function()
					if v133:WaitForChild("ClaimBtn").Text == "Done" then
						return;
					end;
					local v138 = HttpService:JSONDecode(QuestData.Value);
					if v138 and v138.DailyQuest and v138.DailyQuest.PP.Claim == false and v138.DailyQuest.PP.Progress >= 1000 then
						CollectSound:Play();
						RemoteEvent:FireServer({ "DLQ", "PP", "Claim" });
						v133:WaitForChild("ClaimBtn").Text = "Done";
						v133:WaitForChild("ClaimBtn").BackgroundColor3 = Color3.fromRGB(255, 252, 144);
					end;
				end);
			end;
		end;
	elseif v98.Name == "WeeklyQuestFrame" then
		v98.MouseEnter:Connect(function()
			local v139 = 1537333200 + (math.floor((os.time() - 1537333200) / 604800) + 1) * 604800 - os.time();
			local v140 = tostring(math.floor(v139 / 86400));
			local v141 = tostring(math.floor((v139 - 86400 * v140) / 3600));
			ScreenGui:WaitForChild("QuestResetTxt").Text = "Reset in : " .. v140 .. "d " .. v141 .. "h " .. tostring(math.floor((v139 - 86400 * v140 - 3600 * v141) / 60)) .. "m";
			ScreenGui:WaitForChild("QuestResetTxt").Visible = true;
		end);
		v98.MouseLeave:Connect(function()
			ScreenGui:WaitForChild("QuestResetTxt").Visible = false;
		end);
		for v142, v143 in pairs(v98:GetChildren()) do
			if v143.Name == "LeftBtn" then
				v143.MouseButton1Click:Connect(function()
					WeeklyQuestFrame.Visible = false;
					DailyQuestFrame.Visible = true;
				end);
			elseif v143.Name == "MaxFrame1" then
				v143:WaitForChild("ClaimBtn").MouseButton1Click:Connect(function()
					if v143:WaitForChild("ClaimBtn").Text == "Done" then
						return;
					end;
					local v144 = HttpService:JSONDecode(QuestData.Value);
					if v144 and v144.WeeklyQuest and v144.WeeklyQuest.FS1.Claim == false and v144.WeeklyQuest.FS1.Progress >= 100000 then
						CollectSound:Play();
						RemoteEvent:FireServer({ "WLQ", "FS1", "Claim" });
						v143:WaitForChild("ClaimBtn").Text = "Done";
						v143:WaitForChild("ClaimBtn").BackgroundColor3 = Color3.fromRGB(255, 252, 144);
					end;
				end);
			elseif v143.Name == "MaxFrame2" then
				v143:WaitForChild("ClaimBtn").MouseButton1Click:Connect(function()
					if v143:WaitForChild("ClaimBtn").Text == "Done" then
						return;
					end;
					local v145 = HttpService:JSONDecode(QuestData.Value);
					if v145 and v145.WeeklyQuest and v145.WeeklyQuest.BT1.Claim == false and v145.WeeklyQuest.BT1.Progress >= 50000 then
						CollectSound:Play();
						RemoteEvent:FireServer({ "WLQ", "BT1", "Claim" });
						v143:WaitForChild("ClaimBtn").Text = "Done";
						v143:WaitForChild("ClaimBtn").BackgroundColor3 = Color3.fromRGB(255, 252, 144);
					end;
				end);
			elseif v143.Name == "MaxFrame3" then
				v143:WaitForChild("ClaimBtn").MouseButton1Click:Connect(function()
					if v143:WaitForChild("ClaimBtn").Text == "Done" then
						return;
					end;
					local v146 = HttpService:JSONDecode(QuestData.Value);
					if v146 and v146.WeeklyQuest and v146.WeeklyQuest.PP1.Claim == false and v146.WeeklyQuest.PP1.Progress >= 10000 then
						CollectSound:Play();
						RemoteEvent:FireServer({ "WLQ", "PP1", "Claim" });
						v143:WaitForChild("ClaimBtn").Text = "Done";
						v143:WaitForChild("ClaimBtn").BackgroundColor3 = Color3.fromRGB(255, 252, 144);
					end;
				end);
			elseif v143.Name == "MaxFrame4" then
				v143:WaitForChild("ClaimBtn").MouseButton1Click:Connect(function()
					if v143:WaitForChild("ClaimBtn").Text == "Done" then
						return;
					end;
					local v147 = HttpService:JSONDecode(QuestData.Value);
					if v147 and v147.WeeklyQuest and v147.WeeklyQuest.FS2.Claim == false and v147.WeeklyQuest.FS2.Progress >= 10000000 then
						CollectSound:Play();
						RemoteEvent:FireServer({ "WLQ", "FS2", "Claim" });
						v143:WaitForChild("ClaimBtn").Text = "Done";
						v143:WaitForChild("ClaimBtn").BackgroundColor3 = Color3.fromRGB(255, 252, 144);
					end;
				end);
			elseif v143.Name == "MaxFrame5" then
				v143:WaitForChild("ClaimBtn").MouseButton1Click:Connect(function()
					if v143:WaitForChild("ClaimBtn").Text == "Done" then
						return;
					end;
					local v148 = HttpService:JSONDecode(QuestData.Value);
					if v148 and v148.WeeklyQuest and v148.WeeklyQuest.BT2.Claim == false and v148.WeeklyQuest.BT2.Progress >= 5000000 then
						CollectSound:Play();
						RemoteEvent:FireServer({ "WLQ", "BT2", "Claim" });
						v143:WaitForChild("ClaimBtn").Text = "Done";
						v143:WaitForChild("ClaimBtn").BackgroundColor3 = Color3.fromRGB(255, 252, 144);
					end;
				end);
			elseif v143.Name == "MaxFrame6" then
				v143:WaitForChild("ClaimBtn").MouseButton1Click:Connect(function()
					if v143:WaitForChild("ClaimBtn").Text == "Done" then
						return;
					end;
					local v149 = HttpService:JSONDecode(QuestData.Value);
					if v149 and v149.WeeklyQuest and v149.WeeklyQuest.PP2.Claim == false and v149.WeeklyQuest.PP2.Progress >= 1000000 then
						CollectSound:Play();
						RemoteEvent:FireServer({ "WLQ", "PP2", "Claim" });
						v143:WaitForChild("ClaimBtn").Text = "Done";
						v143:WaitForChild("ClaimBtn").BackgroundColor3 = Color3.fromRGB(255, 252, 144);
					end;
				end);
			elseif v143.Name == "MaxFrame7" then
				v143:WaitForChild("ClaimBtn").MouseButton1Click:Connect(function()
					if v143:WaitForChild("ClaimBtn").Text == "Done" then
						return;
					end;
					local v150 = HttpService:JSONDecode(QuestData.Value);
					if v150 and v150.WeeklyQuest and v150.WeeklyQuest.FS3.Claim == false and v150.WeeklyQuest.FS3.Progress >= 1000000000 then
						CollectSound:Play();
						RemoteEvent:FireServer({ "WLQ", "FS3", "Claim" });
						v143:WaitForChild("ClaimBtn").Text = "Done";
						v143:WaitForChild("ClaimBtn").BackgroundColor3 = Color3.fromRGB(255, 252, 144);
					end;
				end);
			elseif v143.Name == "MaxFrame8" then
				v143:WaitForChild("ClaimBtn").MouseButton1Click:Connect(function()
					if v143:WaitForChild("ClaimBtn").Text == "Done" then
						return;
					end;
					local v151 = HttpService:JSONDecode(QuestData.Value);
					if v151 and v151.WeeklyQuest and v151.WeeklyQuest.BT3.Claim == false and v151.WeeklyQuest.BT3.Progress >= 500000000 then
						CollectSound:Play();
						RemoteEvent:FireServer({ "WLQ", "BT3", "Claim" });
						v143:WaitForChild("ClaimBtn").Text = "Done";
						v143:WaitForChild("ClaimBtn").BackgroundColor3 = Color3.fromRGB(255, 252, 144);
					end;
				end);
			elseif v143.Name == "MaxFrame9" then
				v143:WaitForChild("ClaimBtn").MouseButton1Click:Connect(function()
					if v143:WaitForChild("ClaimBtn").Text == "Done" then
						return;
					end;
					local v152 = HttpService:JSONDecode(QuestData.Value);
					if v152 and v152.WeeklyQuest and v152.WeeklyQuest.PP3.Claim == false and v152.WeeklyQuest.PP3.Progress >= 100000000 then
						CollectSound:Play();
						RemoteEvent:FireServer({ "WLQ", "PP3", "Claim" });
						v143:WaitForChild("ClaimBtn").Text = "Done";
						v143:WaitForChild("ClaimBtn").BackgroundColor3 = Color3.fromRGB(255, 252, 144);
					end;
				end);
			end;
		end;
	elseif v98.Name == "RankEmblemFrame" then
		for v153, v154 in pairs(v98:GetChildren()) do
			if v154:IsA("ImageButton") then
				v154.MouseButton1Click:Connect(function()
					if v154.ImageTransparency ~= 0 then
						ErrorSound:Play();
						return;
					end;
					RemoteEvent:FireServer({ "ChangeRankEmblem", tonumber(string.match(v154.Name, "%d+")) });
					Confirm2Sound:Play();
					v98.Visible = false;
				end);
			end;
		end;
	elseif v98.Name == "RankImgBtn" then
		local l__Frame__10 = v98:WaitForChild("Frame");
		v98.MouseEnter:Connect(function()
			local v155 = nil;
			v155 = FistStrength.Value + BodyToughness.Value + MovementSpeed.Value + JumpForce.Value + PsychicPower.Value;
			local v156 = HeroKilled.Value + VillainKilled.Value;
			if Rank.Value == 1 then
				l__Frame__10:WaitForChild("MaxFrame1").Visible = true;
				l__Frame__10:WaitForChild("MaxFrame2").Visible = false;
				l__Frame__10:WaitForChild("MaxFrame3").Visible = false;
				l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 100 Total Power";
				if v155 <= 100 then
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = tostring(v155) .. " / 100";
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v155 / 100, 0, 1, 0);
				else
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "100 / 100";
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
			elseif Rank.Value == 2 then
				l__Frame__10:WaitForChild("MaxFrame1").Visible = true;
				l__Frame__10:WaitForChild("MaxFrame2").Visible = true;
				l__Frame__10:WaitForChild("MaxFrame3").Visible = false;
				l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 1K Total Power";
				if v155 <= 1000 then
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = AddComas(v155) .. " / 1K";
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v155 / 1000, 0, 1, 0);
				else
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "1K / 1K";
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
				l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 1 Hero or Villain";
				if v156 <= 1 then
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v156) .. " / 1";
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v156 / 1, 0, 1, 0);
				else
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "1 / 1";
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
			elseif Rank.Value == 3 then
				l__Frame__10:WaitForChild("MaxFrame1").Visible = true;
				l__Frame__10:WaitForChild("MaxFrame2").Visible = true;
				l__Frame__10:WaitForChild("MaxFrame3").Visible = false;
				l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 10K Total Power";
				if v155 <= 10000 then
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = AddComas(v155) .. " / 10K";
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v155 / 10000, 0, 1, 0);
				else
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "10K / 10K";
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
				l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 5 Hero or Villain";
				if v156 <= 5 then
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v156) .. " / 5";
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v156 / 5, 0, 1, 0);
				else
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "5 / 5";
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
			elseif Rank.Value == 4 then
				l__Frame__10:WaitForChild("MaxFrame1").Visible = true;
				l__Frame__10:WaitForChild("MaxFrame2").Visible = true;
				l__Frame__10:WaitForChild("MaxFrame3").Visible = false;
				l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 100K Total Power";
				if v155 <= 100000 then
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = AddComas(v155) .. " / 100K";
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v155 / 100000, 0, 1, 0);
				else
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "100K / 100K";
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
				l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 10 Hero or Villain";
				if v156 <= 10 then
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v156) .. " / 10";
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v156 / 10, 0, 1, 0);
				else
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "10 / 10";
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
			elseif Rank.Value == 5 then
				l__Frame__10:WaitForChild("MaxFrame1").Visible = true;
				l__Frame__10:WaitForChild("MaxFrame2").Visible = true;
				l__Frame__10:WaitForChild("MaxFrame3").Visible = true;
				l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 1M Total Power";
				if v155 <= 1000000 then
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = AddComas(v155) .. " / 1M";
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v155 / 1000000, 0, 1, 0);
				else
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "1M / 1M";
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
				l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 20 Hero or Villain";
				if v156 <= 20 then
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v156) .. " / 20";
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v156 / 20, 0, 1, 0);
				else
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "20 / 20";
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
				l__Frame__10:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Stay Alive for 60 mins";
				if AliveTime.Value < 60 then
					l__Frame__10:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = tostring(AliveTime.Value) .. "m / 60m";
					l__Frame__10:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(AliveTime.Value / 60, 0, 1, 0);
				else
					l__Frame__10:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "60m / 60m";
					l__Frame__10:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
			elseif Rank.Value == 6 then
				l__Frame__10:WaitForChild("MaxFrame1").Visible = true;
				l__Frame__10:WaitForChild("MaxFrame2").Visible = true;
				l__Frame__10:WaitForChild("MaxFrame3").Visible = true;
				l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 10M Total Power";
				if v155 <= 10000000 then
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = AddComas(v155) .. " / 10M";
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v155 / 10000000, 0, 1, 0);
				else
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "10M / 10M";
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
				l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 50 Hero or Villain";
				if v156 <= 50 then
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v156) .. " / 50";
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v156 / 50, 0, 1, 0);
				else
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "50 / 50";
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
				l__Frame__10:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Stay Alive for 8 hours";
				if AliveTime.Value < 480 then
					local v157 = tostring(math.floor(AliveTime.Value / 60));
					l__Frame__10:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = v157 .. "h " .. tostring(math.floor(AliveTime.Value - v157 * 60)) .. "m / 8h";
					l__Frame__10:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(AliveTime.Value / 480, 0, 1, 0);
				else
					l__Frame__10:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "8h / 8h";
					l__Frame__10:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
			elseif Rank.Value == 7 then
				l__Frame__10:WaitForChild("MaxFrame1").Visible = true;
				l__Frame__10:WaitForChild("MaxFrame2").Visible = true;
				l__Frame__10:WaitForChild("MaxFrame3").Visible = true;
				l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 100M Total Power";
				if v155 <= 100000000 then
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = AddComas(v155) .. " / 100M";
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v155 / 100000000, 0, 1, 0);
				else
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "100M / 100M";
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
				l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 100 Hero or Villain";
				if v156 <= 100 then
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v156) .. " / 100";
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v156 / 100, 0, 1, 0);
				else
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "100 / 100";
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
				l__Frame__10:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Stay Alive for 16 hours";
				if AliveTime.Value < 960 then
					local v158 = tostring(math.floor(AliveTime.Value / 60));
					l__Frame__10:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = v158 .. "h " .. tostring(math.floor(AliveTime.Value - v158 * 60)) .. "m / 16h";
					l__Frame__10:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(AliveTime.Value / 960, 0, 1, 0);
				else
					l__Frame__10:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "16h / 16h";
					l__Frame__10:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
			elseif Rank.Value == 8 then
				l__Frame__10:WaitForChild("MaxFrame1").Visible = true;
				l__Frame__10:WaitForChild("MaxFrame2").Visible = true;
				l__Frame__10:WaitForChild("MaxFrame3").Visible = true;
				l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 1B Total Power";
				if v155 <= 1000000000 then
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = AddComas(v155) .. " / 1B";
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v155 / 1000000000, 0, 1, 0);
				else
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "1B / 1B";
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
				l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 200 Hero or Villain";
				if v156 <= 200 then
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v156) .. " / 200";
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v156 / 200, 0, 1, 0);
				else
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "200 / 200";
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
				l__Frame__10:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Stay Alive for 1 day";
				if AliveTime.Value < 1440 then
					local v159 = tostring(math.floor(AliveTime.Value / 1440));
					local v160 = tostring(math.floor((AliveTime.Value - v159 * 1440) / 60));
					l__Frame__10:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = v159 .. "d " .. v160 .. "h " .. tostring(math.floor(AliveTime.Value - v159 * 1440 - v160 * 60)) .. "m / 1d";
					l__Frame__10:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(AliveTime.Value / 1440, 0, 1, 0);
				else
					l__Frame__10:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "1d / 1d";
					l__Frame__10:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
			elseif Rank.Value == 9 then
				l__Frame__10:WaitForChild("MaxFrame1").Visible = true;
				l__Frame__10:WaitForChild("MaxFrame2").Visible = true;
				l__Frame__10:WaitForChild("MaxFrame3").Visible = true;
				l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 10B Total Power";
				if v155 <= 10000000000 then
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = AddComas(v155) .. " / 10B";
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v155 / 10000000000, 0, 1, 0);
				else
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "10B / 10B";
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
				l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 500 Hero or Villain";
				if v156 <= 500 then
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v156) .. " / 500";
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v156 / 500, 0, 1, 0);
				else
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "500 / 500";
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
				l__Frame__10:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Stay Alive for 2 days";
				if AliveTime.Value < 2880 then
					local v161 = tostring(math.floor(AliveTime.Value / 1440));
					local v162 = tostring(math.floor((AliveTime.Value - v161 * 1440) / 60));
					l__Frame__10:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = v161 .. "d " .. v162 .. "h " .. tostring(math.floor(AliveTime.Value - v161 * 1440 - v162 * 60)) .. "m / 2d";
					l__Frame__10:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(AliveTime.Value / 2880, 0, 1, 0);
				else
					l__Frame__10:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "2d / 2d";
					l__Frame__10:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
			elseif Rank.Value == 10 then
				l__Frame__10:WaitForChild("MaxFrame1").Visible = true;
				l__Frame__10:WaitForChild("MaxFrame2").Visible = true;
				l__Frame__10:WaitForChild("MaxFrame3").Visible = true;
				l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 100B Total Power";
				if v155 <= 100000000000 then
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = AddComas(v155) .. " / 100B";
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v155 / 100000000000, 0, 1, 0);
				else
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "100B / 100B";
					l__Frame__10:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
				l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 1000 Hero or Villain";
				if v156 <= 1000 then
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v156) .. " / 1000";
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v156 / 1000, 0, 1, 0);
				else
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "1000 / 1000";
					l__Frame__10:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
				end;
				l__Frame__10:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Become a Squad Leader";
				l__Frame__10:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "0 / 1";
				l__Frame__10:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(0, 0, 1, 0);
			end;
			l__Frame__10.Visible = true;
		end);
		v98.MouseLeave:Connect(function()
			l__Frame__10.Visible = false;
		end);
		v98.MouseButton1Click:Connect(function()
			OpenOrCloseGuiFunc(RankEmblemFrame);
		end);
	elseif v98.Name == "QuestTalkBtn" then
		v98.MouseEnter:Connect(function()
			v98.BackgroundColor3 = Color3.fromRGB(240, 240, 240);
		end);
		v98.MouseLeave:Connect(function()
			v98.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		end);
		v98.MouseButton1Click:Connect(function()
			local v163 = nil;
			v163 = HttpService:JSONDecode(QuestData.Value);
			if v98:WaitForChild("Npc").Value ~= "Sath" then
				if v98:WaitForChild("Npc").Value == "Grim" then
					if v163 and v163.GrimQuest and (v163.GrimQuest.No == 0 or v163.GrimQuest.Done) then
						TalkingOnQuest = true;
						v98.Visible = false;
						Humanoid.WalkSpeed = 0;
						Humanoid.JumpPower = 0;
						Click2Sound:Play();
						workspace:WaitForChild("Main"):WaitForChild("QuestNPC"):WaitForChild("GrimReaper"):WaitForChild("Head"):WaitForChild("QuestBbGui").Enabled = false;
						BeforeTalkToQuestNPCCameraCFrame = workspace.CurrentCamera.CFrame;
						workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable;
						workspace.CurrentCamera.CameraSubject = nil;
						workspace.CurrentCamera:Interpolate(CFrame.new(-129.54, 255.164, 531.95), CFrame.new(-129.58, 255.187, 541.39), 1);
						wait(1);
						local v164 = HttpService:JSONDecode(QuestData.Value);
						if v164 and v164.GrimQuest and v164.GrimQuest.No then
							local v165 = nil;
							local l__No__166 = v164.GrimQuest.No;
							v165 = QuestMsgFrame:WaitForChild("MsgTxt");
							if l__No__166 == 0 then
								v165.Text = "Greetings human! I have been called by many names in the past.";
							elseif l__No__166 == 1 then
								v165.Text = "Well done " .. player.Name .. "! You have completed your training and passed my test.";
							end;
							QuestMsgFrame:WaitForChild("Page").Value = 2;
						end;
						QuestMsgFrame.Visible = true;
						RemoteEvent:FireServer({ "QuestTalkStart" });
						return;
					else
						QuestTalkBtn:TweenPosition(UDim2.new(0.387, 0, -0.1, 0), "Out", "Back", 0.5, true);
						QuestTalkBtn.Visible = false;
						return;
					end;
				else
					if v98:WaitForChild("Npc").Value == "GhostRider" then
						TalkingOnQuest = true;
						v98.Visible = false;
						Humanoid.WalkSpeed = 0;
						Humanoid.JumpPower = 0;
						Click2Sound:Play();
						workspace:WaitForChild("Main"):WaitForChild("QuestNPC"):WaitForChild("GhostRider"):WaitForChild("Head"):WaitForChild("QuestBbGui").Enabled = false;
						BeforeTalkToQuestNPCCameraCFrame = workspace.CurrentCamera.CFrame;
						workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable;
						workspace.CurrentCamera.CameraSubject = nil;
						workspace.CurrentCamera:Interpolate(CFrame.new(152.91, 251.696, 1235.42), CFrame.new(147.24, 251.696, 1235.42), 1);
						wait(1);
						local v167 = HttpService:JSONDecode(Inventory.Value);
						local l__MsgTxt__168 = QuestMsgFrame:WaitForChild("MsgTxt");
						if v167 and not v167.GhostRiderPass then
							l__MsgTxt__168.Text = "Hey there, I'm Ghost Rider and behind me is my trusty Ghost Bike.";
						else
							l__MsgTxt__168.Text = "We meet again! Now, I shall teach you how to activate your abilities!";
						end;
						QuestMsgFrame:WaitForChild("Page").Value = 2;
						QuestMsgFrame.Visible = true;
						RemoteEvent:FireServer({ "QuestTalkStart" });
					end;
					return;
				end;
			end;
			if not v163 or not v163.MainQuest or v163.MainQuest.No ~= 0 and not v163.MainQuest.Done then
				QuestTalkBtn:TweenPosition(UDim2.new(0.387, 0, -0.1, 0), "Out", "Back", 0.5, true);
				QuestTalkBtn.Visible = false;
				return;
			end;
			TalkingOnQuest = true;
			v98.Visible = false;
			Humanoid.WalkSpeed = 0;
			Humanoid.JumpPower = 0;
			Click2Sound:Play();
			if Character and Character:FindFirstChild("QuestBeam") then
				Character.QuestBeam:Destroy();
				if Character:FindFirstChild("UpperTorso") and Character.UpperTorso:FindFirstChild("Attachment0") then
					Character.UpperTorso.Attachment0:Destroy();
				end;
				if workspace:WaitForChild("Main"):WaitForChild("QuestNPC"):WaitForChild("Sathopian"):WaitForChild("UpperTorso"):FindFirstChild("Attachment1") then
					workspace:WaitForChild("Main"):WaitForChild("QuestNPC"):WaitForChild("Sathopian"):WaitForChild("UpperTorso"):FindFirstChild("Attachment1"):Destroy();
				end;
			end;
			workspace:WaitForChild("Main"):WaitForChild("QuestNPC"):WaitForChild("Sathopian"):WaitForChild("QuestBbGui").Enabled = false;
			BeforeTalkToQuestNPCCameraCFrame = workspace.CurrentCamera.CFrame;
			workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable;
			workspace.CurrentCamera.CameraSubject = nil;
			workspace.CurrentCamera:Interpolate(CFrame.new(490.805, 251.32, 895.98), CFrame.new(497.495, 251.545, 897.271), 1);
			wait(1);
			local v169 = HttpService:JSONDecode(QuestData.Value);
			if v169 and v169.MainQuest and v169.MainQuest.No then
				local v170 = nil;
				local l__No__171 = v169.MainQuest.No;
				v170 = QuestMsgFrame:WaitForChild("MsgTxt");
				if l__No__171 == 0 then
					v170.Text = "Hello newcomer! Nice to meet you. My name is Sathopian.";
				elseif l__No__171 == 1 then
					v170.Text = "Good job. Now in order to become stronger...";
				elseif l__No__171 == 2 then
					v170.Text = "Now we will talk about the most important thing, the mind.";
				elseif l__No__171 == 3 then
					v170.Text = "Congratulation! Now you can become invisible anytime you want just by pressing \"T\".";
				elseif l__No__171 == 4 then
					v170.Text = "Good. From now on you can press \"R\" to execute the Energy Sphere Punch.";
				elseif l__No__171 == 5 then
					v170.Text = "Great! And don't worry, it is a passive skill! So you don't have to execute it everytime.";
				elseif l__No__171 == 6 then
					v170.Text = "Hello, now I'm sure you can run on water!";
				elseif l__No__171 == 7 then
					v170.Text = "Now it's a lot better than before right?";
				elseif l__No__171 == 8 then
					v170.Text = "Good! Now you can teleport by pressing \"V\" and point to where you wanna go.";
				elseif l__No__171 == 9 then
					v170.Text = "Now you can jump when you are falling down to start flying and jump again to stop flying.";
				elseif l__No__171 == 10 then
					v170.Text = "Well done. Now you can press \"F\" to execute the Bullet Punch.";
				elseif l__No__171 == 11 then
					v170.Text = "Cheers! Now you can point to your opponent and press \"B\" to launch the Soul Attack.";
				elseif l__No__171 == 12 then
					v170.Text = "Congratulation! Now you can press \"X\" to Conceal or Reveal your powerful aura.";
				elseif l__No__171 == 13 then
					v170.Text = "OMG!! I never think you will get this far. It's like 100 millions Psychic Power!!";
				end;
				QuestMsgFrame:WaitForChild("Page").Value = 2;
			end;
			QuestMsgFrame.Visible = true;
			RemoteEvent:FireServer({ "QuestTalkStart" });
		end);
	elseif v98.Name == "QuestMsgFrame" then
		for v172, v173 in pairs(v98:GetChildren()) do
			if v173.Name == "Btn" then
				v173.MouseButton1Click:Connect(function()
					QuestTalkFunc();
				end);
				v173.MouseButton2Click:Connect(function()
					QuestTalkFunc();
				end);
			end;
		end;
	end;
end;
while true do
	wait(0.1);
	if player.Character and player.Character:FindFirstChild("Humanoid") then
		break;
	end;
end;
CharacterAddedFunc(player);
player.CharacterAdded:Connect(CharacterAddedFunc);
Players.PlayerAdded:Connect(function(p23)
	if player and player.Character and (player.Character:FindFirstChild("Head") and player.Character.Head.Transparency > 0) then
		RemoteEvent:FireServer({ "CheckInvisible", p23 });
	end;
end);
function onJumpRequest()
	if not Swimming then
		if Character then
			if Humanoid then
				if Character:IsDescendantOf(workspace) then
					if Humanoid:GetState() == Enum.HumanoidStateType.Dead then

					else
						local v174 = HttpService:JSONDecode(Setting.Value);
						local v175 = HttpService:JSONDecode(QuestData.Value);
						if CanFly then
							if not Flying then
								if not TalkingOnQuest then
									if v175 then
										if v175.MainQuest then
											if v175.MainQuest.No then
												if 10 <= v175.MainQuest.No then
													if 10000 <= JumpForce.Value then
														if 10000 <= PsychicPower.Value then
															if v174 then
																if v174.ToggleFlight then
																	CanFly = false;
																	Flying = true;
																	_G.Flying = true;
																	Humanoid:SetStateEnabled(4, false);
																	Humanoid:SetStateEnabled(5, false);
																	Humanoid:SetStateEnabled(7, false);
																	Humanoid:SetStateEnabled(8, false);
																	PlayAnim(script:WaitForChild("FlyIdleAnim"));
																	if not wUp then
																		PlayAnim(script:WaitForChild("FlyForwardAnim"));
																	elseif not sUp then
																		PlayAnim(script:WaitForChild("FlyBackAnim"));
																	elseif not aUp then
																		PlayAnim(script:WaitForChild("FlyLeftAnim"));
																	elseif not dUp then
																		PlayAnim(script:WaitForChild("FlyRightAnim"));
																	elseif not eUp then
																		PlayAnim(script:WaitForChild("FlyUpAnim"));
																	elseif not qUp then
																		PlayAnim(script:WaitForChild("FlyDownAnim"));
																	end;
																	FlyFunc();
																	return;
																else
																	if Flying == true then
																		if 10000 <= JumpForce.Value then
																			if 10000 <= PsychicPower.Value then
																				local v176, v177 = pcall(function()
																					Flying = false;
																					_G.Flying = false;
																					Humanoid:SetStateEnabled(7, true);
																					if FlyRunService then
																						FlyRunService:Disconnect();
																					end;
																					HumanoidRootPart.FlyBodyVel:Destroy();
																					HumanoidRootPart.FlyBodyGyro:Destroy();
																					StopAnim(script:WaitForChild("FlyIdleAnim"));
																					StopAnim(script:WaitForChild("FlyForwardAnim"));
																					StopAnim(script:WaitForChild("FlyBackAnim"));
																					StopAnim(script:WaitForChild("FlyLeftAnim"));
																					StopAnim(script:WaitForChild("FlyRightAnim"));
																					StopAnim(script:WaitForChild("FlyUpAnim"));
																					StopAnim(script:WaitForChild("FlyDownAnim"));
																					Humanoid:SetStateEnabled(4, true);
																					Humanoid:SetStateEnabled(5, true);
																					Humanoid:SetStateEnabled(8, true);
																					delay(0.25, function()
																						if not Landed then
																							CanFly = true;
																						end;
																					end);
																				end);
																				if not v176 then
																					print("Error info :", v177);
																				end;
																			end;
																		end;
																	end;
																	return;
																end;
															else
																if Flying == true then
																	if 10000 <= JumpForce.Value then
																		if 10000 <= PsychicPower.Value then
																			v176, v177 = pcall(function()
																				Flying = false;
																				_G.Flying = false;
																				Humanoid:SetStateEnabled(7, true);
																				if FlyRunService then
																					FlyRunService:Disconnect();
																				end;
																				HumanoidRootPart.FlyBodyVel:Destroy();
																				HumanoidRootPart.FlyBodyGyro:Destroy();
																				StopAnim(script:WaitForChild("FlyIdleAnim"));
																				StopAnim(script:WaitForChild("FlyForwardAnim"));
																				StopAnim(script:WaitForChild("FlyBackAnim"));
																				StopAnim(script:WaitForChild("FlyLeftAnim"));
																				StopAnim(script:WaitForChild("FlyRightAnim"));
																				StopAnim(script:WaitForChild("FlyUpAnim"));
																				StopAnim(script:WaitForChild("FlyDownAnim"));
																				Humanoid:SetStateEnabled(4, true);
																				Humanoid:SetStateEnabled(5, true);
																				Humanoid:SetStateEnabled(8, true);
																				delay(0.25, function()
																					if not Landed then
																						CanFly = true;
																					end;
																				end);
																			end);
																			if not v176 then
																				print("Error info :", v177);
																			end;
																		end;
																	end;
																end;
																return;
															end;
														else
															if Flying == true then
																if 10000 <= JumpForce.Value then
																	if 10000 <= PsychicPower.Value then
																		v176, v177 = pcall(function()
																			Flying = false;
																			_G.Flying = false;
																			Humanoid:SetStateEnabled(7, true);
																			if FlyRunService then
																				FlyRunService:Disconnect();
																			end;
																			HumanoidRootPart.FlyBodyVel:Destroy();
																			HumanoidRootPart.FlyBodyGyro:Destroy();
																			StopAnim(script:WaitForChild("FlyIdleAnim"));
																			StopAnim(script:WaitForChild("FlyForwardAnim"));
																			StopAnim(script:WaitForChild("FlyBackAnim"));
																			StopAnim(script:WaitForChild("FlyLeftAnim"));
																			StopAnim(script:WaitForChild("FlyRightAnim"));
																			StopAnim(script:WaitForChild("FlyUpAnim"));
																			StopAnim(script:WaitForChild("FlyDownAnim"));
																			Humanoid:SetStateEnabled(4, true);
																			Humanoid:SetStateEnabled(5, true);
																			Humanoid:SetStateEnabled(8, true);
																			delay(0.25, function()
																				if not Landed then
																					CanFly = true;
																				end;
																			end);
																		end);
																		if not v176 then
																			print("Error info :", v177);
																		end;
																	end;
																end;
															end;
															return;
														end;
													else
														if Flying == true then
															if 10000 <= JumpForce.Value then
																if 10000 <= PsychicPower.Value then
																	v176, v177 = pcall(function()
																		Flying = false;
																		_G.Flying = false;
																		Humanoid:SetStateEnabled(7, true);
																		if FlyRunService then
																			FlyRunService:Disconnect();
																		end;
																		HumanoidRootPart.FlyBodyVel:Destroy();
																		HumanoidRootPart.FlyBodyGyro:Destroy();
																		StopAnim(script:WaitForChild("FlyIdleAnim"));
																		StopAnim(script:WaitForChild("FlyForwardAnim"));
																		StopAnim(script:WaitForChild("FlyBackAnim"));
																		StopAnim(script:WaitForChild("FlyLeftAnim"));
																		StopAnim(script:WaitForChild("FlyRightAnim"));
																		StopAnim(script:WaitForChild("FlyUpAnim"));
																		StopAnim(script:WaitForChild("FlyDownAnim"));
																		Humanoid:SetStateEnabled(4, true);
																		Humanoid:SetStateEnabled(5, true);
																		Humanoid:SetStateEnabled(8, true);
																		delay(0.25, function()
																			if not Landed then
																				CanFly = true;
																			end;
																		end);
																	end);
																	if not v176 then
																		print("Error info :", v177);
																	end;
																end;
															end;
														end;
														return;
													end;
												else
													if Flying == true then
														if 10000 <= JumpForce.Value then
															if 10000 <= PsychicPower.Value then
																v176, v177 = pcall(function()
																	Flying = false;
																	_G.Flying = false;
																	Humanoid:SetStateEnabled(7, true);
																	if FlyRunService then
																		FlyRunService:Disconnect();
																	end;
																	HumanoidRootPart.FlyBodyVel:Destroy();
																	HumanoidRootPart.FlyBodyGyro:Destroy();
																	StopAnim(script:WaitForChild("FlyIdleAnim"));
																	StopAnim(script:WaitForChild("FlyForwardAnim"));
																	StopAnim(script:WaitForChild("FlyBackAnim"));
																	StopAnim(script:WaitForChild("FlyLeftAnim"));
																	StopAnim(script:WaitForChild("FlyRightAnim"));
																	StopAnim(script:WaitForChild("FlyUpAnim"));
																	StopAnim(script:WaitForChild("FlyDownAnim"));
																	Humanoid:SetStateEnabled(4, true);
																	Humanoid:SetStateEnabled(5, true);
																	Humanoid:SetStateEnabled(8, true);
																	delay(0.25, function()
																		if not Landed then
																			CanFly = true;
																		end;
																	end);
																end);
																if not v176 then
																	print("Error info :", v177);
																end;
															end;
														end;
													end;
													return;
												end;
											else
												if Flying == true then
													if 10000 <= JumpForce.Value then
														if 10000 <= PsychicPower.Value then
															v176, v177 = pcall(function()
																Flying = false;
																_G.Flying = false;
																Humanoid:SetStateEnabled(7, true);
																if FlyRunService then
																	FlyRunService:Disconnect();
																end;
																HumanoidRootPart.FlyBodyVel:Destroy();
																HumanoidRootPart.FlyBodyGyro:Destroy();
																StopAnim(script:WaitForChild("FlyIdleAnim"));
																StopAnim(script:WaitForChild("FlyForwardAnim"));
																StopAnim(script:WaitForChild("FlyBackAnim"));
																StopAnim(script:WaitForChild("FlyLeftAnim"));
																StopAnim(script:WaitForChild("FlyRightAnim"));
																StopAnim(script:WaitForChild("FlyUpAnim"));
																StopAnim(script:WaitForChild("FlyDownAnim"));
																Humanoid:SetStateEnabled(4, true);
																Humanoid:SetStateEnabled(5, true);
																Humanoid:SetStateEnabled(8, true);
																delay(0.25, function()
																	if not Landed then
																		CanFly = true;
																	end;
																end);
															end);
															if not v176 then
																print("Error info :", v177);
															end;
														end;
													end;
												end;
												return;
											end;
										else
											if Flying == true then
												if 10000 <= JumpForce.Value then
													if 10000 <= PsychicPower.Value then
														v176, v177 = pcall(function()
															Flying = false;
															_G.Flying = false;
															Humanoid:SetStateEnabled(7, true);
															if FlyRunService then
																FlyRunService:Disconnect();
															end;
															HumanoidRootPart.FlyBodyVel:Destroy();
															HumanoidRootPart.FlyBodyGyro:Destroy();
															StopAnim(script:WaitForChild("FlyIdleAnim"));
															StopAnim(script:WaitForChild("FlyForwardAnim"));
															StopAnim(script:WaitForChild("FlyBackAnim"));
															StopAnim(script:WaitForChild("FlyLeftAnim"));
															StopAnim(script:WaitForChild("FlyRightAnim"));
															StopAnim(script:WaitForChild("FlyUpAnim"));
															StopAnim(script:WaitForChild("FlyDownAnim"));
															Humanoid:SetStateEnabled(4, true);
															Humanoid:SetStateEnabled(5, true);
															Humanoid:SetStateEnabled(8, true);
															delay(0.25, function()
																if not Landed then
																	CanFly = true;
																end;
															end);
														end);
														if not v176 then
															print("Error info :", v177);
														end;
													end;
												end;
											end;
											return;
										end;
									else
										if Flying == true then
											if 10000 <= JumpForce.Value then
												if 10000 <= PsychicPower.Value then
													v176, v177 = pcall(function()
														Flying = false;
														_G.Flying = false;
														Humanoid:SetStateEnabled(7, true);
														if FlyRunService then
															FlyRunService:Disconnect();
														end;
														HumanoidRootPart.FlyBodyVel:Destroy();
														HumanoidRootPart.FlyBodyGyro:Destroy();
														StopAnim(script:WaitForChild("FlyIdleAnim"));
														StopAnim(script:WaitForChild("FlyForwardAnim"));
														StopAnim(script:WaitForChild("FlyBackAnim"));
														StopAnim(script:WaitForChild("FlyLeftAnim"));
														StopAnim(script:WaitForChild("FlyRightAnim"));
														StopAnim(script:WaitForChild("FlyUpAnim"));
														StopAnim(script:WaitForChild("FlyDownAnim"));
														Humanoid:SetStateEnabled(4, true);
														Humanoid:SetStateEnabled(5, true);
														Humanoid:SetStateEnabled(8, true);
														delay(0.25, function()
															if not Landed then
																CanFly = true;
															end;
														end);
													end);
													if not v176 then
														print("Error info :", v177);
													end;
												end;
											end;
										end;
										return;
									end;
								else
									if Flying == true then
										if 10000 <= JumpForce.Value then
											if 10000 <= PsychicPower.Value then
												v176, v177 = pcall(function()
													Flying = false;
													_G.Flying = false;
													Humanoid:SetStateEnabled(7, true);
													if FlyRunService then
														FlyRunService:Disconnect();
													end;
													HumanoidRootPart.FlyBodyVel:Destroy();
													HumanoidRootPart.FlyBodyGyro:Destroy();
													StopAnim(script:WaitForChild("FlyIdleAnim"));
													StopAnim(script:WaitForChild("FlyForwardAnim"));
													StopAnim(script:WaitForChild("FlyBackAnim"));
													StopAnim(script:WaitForChild("FlyLeftAnim"));
													StopAnim(script:WaitForChild("FlyRightAnim"));
													StopAnim(script:WaitForChild("FlyUpAnim"));
													StopAnim(script:WaitForChild("FlyDownAnim"));
													Humanoid:SetStateEnabled(4, true);
													Humanoid:SetStateEnabled(5, true);
													Humanoid:SetStateEnabled(8, true);
													delay(0.25, function()
														if not Landed then
															CanFly = true;
														end;
													end);
												end);
												if not v176 then
													print("Error info :", v177);
												end;
											end;
										end;
									end;
									return;
								end;
							else
								if Flying == true then
									if 10000 <= JumpForce.Value then
										if 10000 <= PsychicPower.Value then
											v176, v177 = pcall(function()
												Flying = false;
												_G.Flying = false;
												Humanoid:SetStateEnabled(7, true);
												if FlyRunService then
													FlyRunService:Disconnect();
												end;
												HumanoidRootPart.FlyBodyVel:Destroy();
												HumanoidRootPart.FlyBodyGyro:Destroy();
												StopAnim(script:WaitForChild("FlyIdleAnim"));
												StopAnim(script:WaitForChild("FlyForwardAnim"));
												StopAnim(script:WaitForChild("FlyBackAnim"));
												StopAnim(script:WaitForChild("FlyLeftAnim"));
												StopAnim(script:WaitForChild("FlyRightAnim"));
												StopAnim(script:WaitForChild("FlyUpAnim"));
												StopAnim(script:WaitForChild("FlyDownAnim"));
												Humanoid:SetStateEnabled(4, true);
												Humanoid:SetStateEnabled(5, true);
												Humanoid:SetStateEnabled(8, true);
												delay(0.25, function()
													if not Landed then
														CanFly = true;
													end;
												end);
											end);
											if not v176 then
												print("Error info :", v177);
											end;
										end;
									end;
								end;
								return;
							end;
						else
							if Flying == true then
								if 10000 <= JumpForce.Value then
									if 10000 <= PsychicPower.Value then
										v176, v177 = pcall(function()
											Flying = false;
											_G.Flying = false;
											Humanoid:SetStateEnabled(7, true);
											if FlyRunService then
												FlyRunService:Disconnect();
											end;
											HumanoidRootPart.FlyBodyVel:Destroy();
											HumanoidRootPart.FlyBodyGyro:Destroy();
											StopAnim(script:WaitForChild("FlyIdleAnim"));
											StopAnim(script:WaitForChild("FlyForwardAnim"));
											StopAnim(script:WaitForChild("FlyBackAnim"));
											StopAnim(script:WaitForChild("FlyLeftAnim"));
											StopAnim(script:WaitForChild("FlyRightAnim"));
											StopAnim(script:WaitForChild("FlyUpAnim"));
											StopAnim(script:WaitForChild("FlyDownAnim"));
											Humanoid:SetStateEnabled(4, true);
											Humanoid:SetStateEnabled(5, true);
											Humanoid:SetStateEnabled(8, true);
											delay(0.25, function()
												if not Landed then
													CanFly = true;
												end;
											end);
										end);
										if not v176 then
											print("Error info :", v177);
										end;
									end;
								end;
							end;
							return;
						end;
					end;
				end;
			end;
		end;
	end;
end;
FlySpeed = 100;
wUp = true;
aUp = true;
sUp = true;
dUp = true;
eUp = true;
qUp = true;
Combat_FirstPunch = false;
CanPunch = true;
CanBeInvisible = true;
CanSpherePunch = true;
CanSoulReap = true;
CanUseDevilFlame = true;
CanTeleport = true;
CanBulletPunch = true;
Invisible = false;
CanConcealAura = true;
CanSoulAttack = true;
CanKillingIntent = true;
SoulAttacking = false;
local u11 = 0;
local u12 = 0;
local u13 = 0;
local function u14(p24)
	if Humanoid and Humanoid.Health > 0 and HumanoidRootPart and p24 then
		HumanoidRootPart.CFrame = CFrame.new(HumanoidRootPart.Position, Vector3.new(p24.Position.X, HumanoidRootPart.Position.Y, p24.Position.Z));
	end;
end;
local function u15()
	if not Flying and Humanoid and Humanoid.Health > 0 and HumanoidRootPart and SoulAttack_Target then
		HumanoidRootPart.CFrame = CFrame.new(HumanoidRootPart.Position, Vector3.new(SoulAttack_Target.Position.X, HumanoidRootPart.Position.Y, SoulAttack_Target.Position.Z));
	end;
end;
UserInputService.InputBegan:Connect(function(p25, p26)
	if not p26 then
		local l__KeyCode__178 = p25.KeyCode;
		if l__KeyCode__178 == Enum.KeyCode.W then
			u11 = -1;
			wUp = false;
			if Flying then
				PlayAnim(script:WaitForChild("FlyForwardAnim"));
			end;
		elseif l__KeyCode__178 == Enum.KeyCode.A then
			u12 = -1;
			aUp = false;
			if Flying then
				PlayAnim(script:WaitForChild("FlyLeftAnim"));
			end;
		elseif l__KeyCode__178 == Enum.KeyCode.S then
			u11 = 1;
			sUp = false;
			if Flying then
				PlayAnim(script:WaitForChild("FlyBackAnim"));
			end;
		elseif l__KeyCode__178 == Enum.KeyCode.D then
			u12 = 1;
			dUp = false;
			if Flying then
				PlayAnim(script:WaitForChild("FlyRightAnim"));
			end;
		elseif l__KeyCode__178 == Enum.KeyCode.E then
			u13 = 1;
			eUp = false;
			if Flying then
				PlayAnim(script:WaitForChild("FlyUpAnim"));
			end;
		elseif l__KeyCode__178 == Enum.KeyCode.Q then
			u13 = -1;
			qUp = false;
			if Flying then
				PlayAnim(script:WaitForChild("FlyDownAnim"));
			end;
		end;
		if not TalkingOnQuest then
			if not Character or not Humanoid or Humanoid.Health <= 0 or not Character:IsDescendantOf(workspace) or Humanoid:GetState() == Enum.HumanoidStateType.Dead then
				return;
			elseif l__KeyCode__178 == Enum.KeyCode.Space then
				if Humanoid and Humanoid.JumpPower > 0 then
					onJumpRequest();
					return;
				end;
			elseif l__KeyCode__178 == Enum.KeyCode.LeftControl then
				if Humanoid and Humanoid.WalkSpeed ~= 0 and Humanoid.WalkSpeed > 10 and Humanoid.JumpPower ~= 0 and Humanoid.JumpPower > 50 then
					Humanoid.WalkSpeed = 10;
					Humanoid.JumpPower = 50;
					return;
				end;
				if Humanoid and Humanoid.WalkSpeed ~= 0 and Humanoid.WalkSpeed == 10 and Humanoid.JumpPower ~= 0 and Humanoid.JumpPower == 50 then
					local v179 = HttpService:JSONDecode(Setting.Value);
					if v179 and v179.SelectedMS and v179.SelectedJP then
						CustomMS = v179.SelectedMS;
						if MovementSpeed.Value <= 400 then
							local v180 = 10 + MovementSpeed.Value / 10;
						elseif MovementSpeed.Value <= 5400 then
							v180 = 46 + MovementSpeed.Value / 100;
						elseif MovementSpeed.Value <= 65400 then
							v180 = 91 + MovementSpeed.Value / 600;
						elseif MovementSpeed.Value <= 665400 then
							v180 = 170 + (MovementSpeed.Value - 5400) / 2000;
						else
							v180 = 440 + (MovementSpeed.Value - 65400) / 10000;
						end;
						if Character and Character:FindFirstChild("LeftWeight1") then
							v180 = v180 / 2;
							if v180 < 4 then
								v180 = 1;
							end;
						elseif Character and Character:FindFirstChild("LeftWeight2") then
							v180 = v180 / 10;
							if v180 < 4 then
								v180 = 1;
							end;
						elseif Character and Character:FindFirstChild("LeftWeight3") then
							v180 = v180 / 50;
							if v180 < 4 then
								v180 = 1;
							end;
						elseif Character and Character:FindFirstChild("LeftWeight4") then
							v180 = v180 / 100;
							if v180 < 4 then
								v180 = 1;
							end;
						end;
						if CustomMS > 10 and CustomMS < v180 then
							v180 = CustomMS;
						end;
						if v180 > 1000 then
							v180 = 1000;
						end;
						Humanoid.WalkSpeed = v180;
						CustomJP = v179.SelectedJP;
						if JumpForce.Value <= 2500 then
							local v181 = 50 + JumpForce.Value / 50;
						elseif JumpForce.Value <= 8750 then
							v181 = 65 + JumpForce.Value / 250;
						elseif JumpForce.Value <= 33750 then
							v181 = 84 + (JumpForce.Value - 750) / 500;
						elseif JumpForce.Value <= 83750 then
							v181 = 120 + (JumpForce.Value - 3750) / 1000;
						elseif JumpForce.Value <= 665000 then
							v181 = 193 + (JumpForce.Value - 65000) / 2500;
						else
							v181 = 400 + JumpForce.Value / 20000;
						end;
						if Character and Character:FindFirstChild("LeftWeight1") then
							v181 = v181 / 2;
							if v181 < 50 then
								v181 = 1;
							end;
						elseif Character and Character:FindFirstChild("LeftWeight2") then
							v181 = v181 / 5;
							if v181 < 50 then
								v181 = 1;
							end;
						elseif Character and Character:FindFirstChild("LeftWeight3") then
							v181 = v181 / 10;
							if v181 < 50 then
								v181 = 1;
							end;
						elseif Character and Character:FindFirstChild("LeftWeight4") then
							v181 = v181 / 20;
							if v181 < 50 then
								v181 = 1;
							end;
						end;
						if CustomJP > 50 and CustomJP < v181 then
							v181 = CustomJP;
						end;
						if v181 > 500 then
							v181 = 500;
						end;
						Humanoid.JumpPower = v181;
						return;
					end;
				end;
			elseif l__KeyCode__178 == Enum.KeyCode.F then
				local v182 = HttpService:JSONDecode(QuestData.Value);
				if CanBulletPunch and Character and Character:FindFirstChild("HumanoidRootPart") and FistStrength.Value >= 100000 and v182 and v182.MainQuest and v182.MainQuest.No and v182.MainQuest.No >= 11 and mouse and mouse.hit then
					CanBulletPunch = false;
					if not Flying and mouse and mouse.Hit then
						u14(mouse.hit);
					end;
					if Character.Head.Transparency ~= 0 then
						RemoteEvent:FireServer({ "Skill_Invisible", "Stop" });
					end;
					if not Combat_FirstPunch then
						Combat_FirstPunch = true;
						RemoteEvent:FireServer({ "Skill_BulletPunch", "Right", mouse.hit.p });
						if Landed then
							PlayAnim(script:WaitForChild("BulletPunch1Anim"));
						else
							PlayAnim(script:WaitForChild("BulletPunch1_AirAnim"));
						end;
					else
						Combat_FirstPunch = false;
						RemoteEvent:FireServer({ "Skill_BulletPunch", "Left", mouse.hit.p });
						if Landed then
							PlayAnim(script:WaitForChild("BulletPunch2Anim"));
						else
							PlayAnim(script:WaitForChild("BulletPunch2_AirAnim"));
						end;
					end;
					local v183 = HttpService:JSONDecode(Inventory.Value);
					if v183 and v183.x2SkillSpeed then
						delay(0.25, function()
							CanBulletPunch = true;
						end);
						return;
					else
						delay(0.5, function()
							CanBulletPunch = true;
						end);
						return;
					end;
				end;
			elseif l__KeyCode__178 == Enum.KeyCode.V then
				local v184 = HttpService:JSONDecode(QuestData.Value);
				if CanTeleport and Character and Character:FindFirstChild("HumanoidRootPart") and MovementSpeed.Value >= 10000 and v184 and v184.MainQuest and v184.MainQuest.No and v184.MainQuest.No >= 9 and not SoulAttacking then
					if (HumanoidRootPart.CFrame.p - mouse.Hit.p).magnitude < MovementSpeed.Value / 1000 then
						CanTeleport = false;
						WarnTxt.Visible = false;
						if mouse and mouse.Target then
							RemoteEvent:FireServer({ "Skill_Teleport", mouse.Hit.p });
						end;
						local v185 = HttpService:JSONDecode(Inventory.Value);
						if v185 and v185.x2SkillSpeed then
							delay(0.5, function()
								CanTeleport = true;
							end);
							return;
						else
							delay(1, function()
								CanTeleport = true;
							end);
							return;
						end;
					else
						ErrorSound:Play();
						WarnTxt.Text = "too far to teleport!";
						WarnTxt.Visible = true;
						delay(1, function()
							WarnTxt.Visible = false;
						end);
						return;
					end;
				end;
				if CanTeleport and SoulAttacking then
					WarnTxt.Text = "Can't use with soul attack!";
					WarnTxt.Visible = true;
					delay(1, function()
						WarnTxt.Visible = false;
					end);
					return;
				end;
			elseif l__KeyCode__178 == Enum.KeyCode.C then
				if CanPunch and not Combat_FirstPunch then
					CanPunch = false;
					if Character.Head.Transparency ~= 0 then
						RemoteEvent:FireServer({ "Skill_Invisible", "Stop" });
					end;
					Combat_FirstPunch = true;
					RemoteEvent:FireServer({ "Skill_Punch", "Right" });
					if Landed then
						PlayAnim(script:WaitForChild("Punch1Anim"));
					else
						PlayAnim(script:WaitForChild("Punch1_AirAnim"));
					end;
					delay(0.5, function()
						CanPunch = true;
					end);
					return;
				end;
				if CanPunch then
					CanPunch = false;
					if Character.Head.Transparency ~= 0 then
						RemoteEvent:FireServer({ "Skill_Invisible", "Stop" });
					end;
					Combat_FirstPunch = false;
					RemoteEvent:FireServer({ "Skill_Punch", "Left" });
					if Landed then
						PlayAnim(script:WaitForChild("Punch2Anim"));
					else
						PlayAnim(script:WaitForChild("Punch2_AirAnim"));
					end;
					delay(0.5, function()
						CanPunch = true;
					end);
					return;
				end;
			elseif l__KeyCode__178 == Enum.KeyCode.T then
				local v186 = HttpService:JSONDecode(QuestData.Value);
				if CanBeInvisible and PsychicPower.Value >= 100 and v186 and v186.MainQuest and v186.MainQuest.No and v186.MainQuest.No >= 4 and not SoulAttacking then
					CanBeInvisible = false;
					if Character and Character:FindFirstChild("Head") then
						if Character.Head.Transparency == 0 then
							RemoteEvent:FireServer({ "Skill_Invisible", "Start" });
							Invisible = true;
						else
							RemoteEvent:FireServer({ "Skill_Invisible", "Stop" });
							Invisible = false;
						end;
					end;
					local v187 = HttpService:JSONDecode(Inventory.Value);
					if v187 and v187.x2SkillSpeed then
						delay(0.5, function()
							CanBeInvisible = true;
						end);
						return;
					else
						delay(1, function()
							CanBeInvisible = true;
						end);
						return;
					end;
				end;
				if CanBeInvisible and SoulAttacking then
					ErrorSound:Play();
					WarnTxt.Text = "Can't use with soul attack!";
					WarnTxt.Visible = true;
					delay(1, function()
						WarnTxt.Visible = false;
					end);
					return;
				end;
			elseif l__KeyCode__178 == Enum.KeyCode.R then
				local v188 = HttpService:JSONDecode(QuestData.Value);
				if CanSpherePunch and FistStrength.Value >= 1000 and v188 and v188.MainQuest and v188.MainQuest.No and v188.MainQuest.No >= 5 and mouse and mouse.hit then
					CanSpherePunch = false;
					if not Flying then
						u14(mouse.hit);
					end;
					if Character.Head.Transparency ~= 0 then
						RemoteEvent:FireServer({ "Skill_Invisible", "Stop" });
					end;
					if Landed then
						PlayAnim(script:WaitForChild("SpherePunchAnim"));
					else
						PlayAnim(script:WaitForChild("SpherePunch__AirAnim"));
					end;
					RemoteEvent:FireServer({ "Skill_SpherePunch", mouse.hit.p });
					local v189 = HttpService:JSONDecode(Inventory.Value);
					if v189 and v189.x2SkillSpeed then
						delay(0.5, function()
							CanSpherePunch = true;
						end);
						return;
					else
						delay(1, function()
							CanSpherePunch = true;
						end);
						return;
					end;
				end;
			elseif l__KeyCode__178 == Enum.KeyCode.B then
				local v190 = HttpService:JSONDecode(QuestData.Value);
				if CanSoulAttack and not SoulAttacking and v190 and v190.MainQuest and v190.MainQuest.No and v190.MainQuest.No >= 12 and mouse and mouse.Target and (player:DistanceFromCharacter(mouse.Target.Position) < PsychicPower.Value / 10000 and player:DistanceFromCharacter(mouse.Target.Position) <= 250) then
					local v191 = Players:GetPlayerFromCharacter(mouse.Target:FindFirstAncestorOfClass("Model"));
					if v191 and v191 ~= player and v191.Character and (v191.Character:FindFirstChild("Humanoid") and v191.Character.Humanoid.Health > 0) and not v191.Character:FindFirstChildOfClass("ForceField") then
						CanSoulAttack = false;
						SoulAttacking = true;
						if Character.Head.Transparency ~= 0 then
							RemoteEvent:FireServer({ "Skill_Invisible", "Stop" });
						end;
						RemoteEvent:FireServer({ "Skill_SoulAttack_Start", v191 });
						SoulAttack_Target = v191.Character.HumanoidRootPart;
						game:GetService("RunService"):BindToRenderStep("TargetLock", 500, u15);
						local v192 = HttpService:JSONDecode(Inventory.Value);
						if v192 and v192.x2SkillSpeed then
							delay(0.5, function()
								CanSoulAttack = true;
							end);
							return;
						else
							delay(1, function()
								CanSoulAttack = true;
							end);
							return;
						end;
					end;
					if v191 and v191 ~= player and v191.Character and v191.Character:FindFirstChild("SafeZoneShield") then
						if SafeZoneTxt.Text == "Can't Attack People in Safe Zone!" and SafeZoneTxt.Visible == true then
							return;
						else
							SafeZoneTxt.Text = "Can't Attack People in Safe Zone!";
							SafeZoneTxt.Visible = true;
							delay(2, function()
								if SafeZoneTxt.Text == "Can't Attack People in Safe Zone!" then
									SafeZoneTxt.Visible = false;
								end;
							end);
							return;
						end;
					end;
				elseif CanSoulAttack and not SoulAttacking and v190 and v190.MainQuest and v190.MainQuest.No and v190.MainQuest.No >= 12 and mouse and mouse.Target and (PsychicPower.Value / 10000 < player:DistanceFromCharacter(mouse.Target.Position) or player:DistanceFromCharacter(mouse.Target.Position) > 250) then
					WarnTxt.Text = "too far to attack!";
					WarnTxt.Visible = true;
					delay(1, function()
						WarnTxt.Visible = false;
					end);
					return;
				end;
			elseif l__KeyCode__178 == Enum.KeyCode.G then
				local v193 = HttpService:JSONDecode(QuestData.Value);
				if CanSoulReap and v193 and v193.GrimQuest and v193.GrimQuest.No and v193.GrimQuest.No >= 2 and mouse and mouse.Target then
					local v194 = Players:GetPlayerFromCharacter(mouse.Target:FindFirstAncestorOfClass("Model"));
					if v194 and v194 ~= player and v194.Character and (v194.Character:FindFirstChild("Humanoid") and v194.Character.Humanoid.Health > 0) and (not v194.Character:FindFirstChildOfClass("ForceField") and v194:FindFirstChild("PrivateStats")) and (v194.PrivateStats:FindFirstChild("PsychicPower") and v194.PrivateStats.PsychicPower.Value * 1000 < PsychicPower.Value) then
						CanSoulReap = false;
						if Character.Head.Transparency ~= 0 then
							RemoteEvent:FireServer({ "Skill_Invisible", "Stop" });
						end;
						RemoteEvent:FireServer({ "Skill_SoulReap", v194 });
						if not Flying then
							u14(mouse.hit);
						end;
						local v195 = HttpService:JSONDecode(Inventory.Value);
						if v195 and v195.x2SkillSpeed then
							delay(0.5, function()
								CanSoulReap = true;
							end);
							return;
						else
							delay(1, function()
								CanSoulReap = true;
							end);
							return;
						end;
					end;
					if v194 and v194 ~= player and v194.Character and v194.Character:FindFirstChild("SafeZoneShield") then
						if SafeZoneTxt.Text == "Can't Attack People in Safe Zone!" and SafeZoneTxt.Visible == true then
							return;
						else
							SafeZoneTxt.Text = "Can't Attack People in Safe Zone!";
							SafeZoneTxt.Visible = true;
							delay(2, function()
								if SafeZoneTxt.Text == "Can't Attack People in Safe Zone!" then
									SafeZoneTxt.Visible = false;
								end;
							end);
							return;
						end;
					end;
					if v194 and v194 ~= player and PsychicPower.Value <= v194.PrivateStats.PsychicPower.Value * 1000 then
						WarnTxt.Text = "Opponent is not weak enough or too strong!";
						WarnTxt.Visible = true;
						delay(2, function()
							WarnTxt.Visible = false;
						end);
						return;
					end;
				end;
			elseif l__KeyCode__178 == Enum.KeyCode.N then
				local v196 = HttpService:JSONDecode(Inventory.Value);
				if CanUseDevilFlame and v196 and v196.GhostRiderPass and mouse and mouse.Target then
					local v197 = Players:GetPlayerFromCharacter(mouse.Target:FindFirstAncestorOfClass("Model"));
					if v197 and v197 ~= player and v197.Character and (v197.Character:FindFirstChild("Humanoid") and v197.Character.Humanoid.Health > 0) and (not v197.Character:FindFirstChildOfClass("ForceField") and v197:FindFirstChild("PrivateStats")) and (v197.PrivateStats:FindFirstChild("PsychicPower") and v197.PrivateStats.PsychicPower.Value * 100 < PsychicPower.Value and player:DistanceFromCharacter(mouse.Target.Position) <= 100) then
						CanUseDevilFlame = false;
						if Character.Head.Transparency ~= 0 then
							RemoteEvent:FireServer({ "Skill_Invisible", "Stop" });
						end;
						PlayAnim(script:WaitForChild("HellFireAnim"));
						RemoteEvent:FireServer({ "Skill_DevilFlame", v197 });
						if not Flying then
							u14(mouse.hit);
						end;
						local v198 = HttpService:JSONDecode(Inventory.Value);
						if v198 and v198.x2SkillSpeed then
							delay(2, function()
								CanUseDevilFlame = true;
							end);
							return;
						else
							delay(4, function()
								CanUseDevilFlame = true;
							end);
							return;
						end;
					end;
					if v197 and v197 ~= player and player:DistanceFromCharacter(mouse.Target.Position) > 100 then
						WarnTxt.Text = "too far to attack!";
						WarnTxt.Visible = true;
						delay(1, function()
							WarnTxt.Visible = false;
						end);
						return;
					end;
					if v197 and v197 ~= player and v197.Character and v197.Character:FindFirstChild("SafeZoneShield") then
						if SafeZoneTxt.Text == "Can't Attack People in Safe Zone!" and SafeZoneTxt.Visible == true then
							return;
						else
							SafeZoneTxt.Text = "Can't Attack People in Safe Zone!";
							SafeZoneTxt.Visible = true;
							delay(2, function()
								if SafeZoneTxt.Text == "Can't Attack People in Safe Zone!" then
									SafeZoneTxt.Visible = false;
								end;
							end);
							return;
						end;
					end;
					if v197 and v197 ~= player and PsychicPower.Value <= v197.PrivateStats.PsychicPower.Value * 100 then
						WarnTxt.Text = "Opponent is not weak enough or too strong!";
						WarnTxt.Visible = true;
						delay(2, function()
							WarnTxt.Visible = false;
						end);
						return;
					end;
				end;
			elseif l__KeyCode__178 == Enum.KeyCode.Z then
				local v199 = HttpService:JSONDecode(QuestData.Value);
				if PsychicPower.Value >= 100000000 and v199 and v199.MainQuest and v199.MainQuest.No and v199.MainQuest.No >= 14 then
					local v200 = nil;
					local v201 = nil;
					if Character then
						if not Character:FindFirstChild("KillingIntentPart") then
							if Character.Head.Transparency ~= 0 then
								RemoteEvent:FireServer({ "Skill_Invisible", "Stop" });
							end;
							if not Character:FindFirstChild("SafeZoneShield") then
								PlayAnim(script:WaitForChild("KillingIntentAttackerAnim"));
							end;
							RemoteEvent:FireServer({ "Skill_KillingIntent_Start" });
							return;
						end;
						v200 = Character;
						v201 = v200;
						if v201 and Character:FindFirstChild("KillingIntentPart") then
							RemoteEvent:FireServer({ "Skill_KillingIntent_End" });
							return;
						end;
					else
						v200 = Character;
						v201 = v200;
						if v201 and Character:FindFirstChild("KillingIntentPart") then
							RemoteEvent:FireServer({ "Skill_KillingIntent_End" });
							return;
						end;
					end;
				end;
			elseif l__KeyCode__178 == Enum.KeyCode.X then
				local v202 = HttpService:JSONDecode(QuestData.Value);
				if CanConcealAura and v202 and v202.MainQuest and v202.MainQuest.No and v202.MainQuest.No >= 13 then
					CanConcealAura = false;
					RemoteEvent:FireServer({ "ConcealRevealAura" });
					local v203 = HttpService:JSONDecode(Inventory.Value);
					if v203 and v203.x2SkillSpeed then
						delay(0.5, function()
							CanConcealAura = true;
						end);
						return;
					else
						delay(1, function()
							CanConcealAura = true;
						end);
						return;
					end;
				end;
			end;
		elseif l__KeyCode__178 == Enum.KeyCode.Space then
			QuestTalkFunc();
		end;
	end;
end);
UserInputService.InputEnded:Connect(function(p27, p28)
	if not p28 then
		local l__KeyCode__204 = p27.KeyCode;
		if l__KeyCode__204 == Enum.KeyCode.W then
			if sUp then
				u11 = 0;
			end;
			wUp = true;
			if Flying then
				StopAnim(script:WaitForChild("FlyForwardAnim"));
			end;
		elseif l__KeyCode__204 == Enum.KeyCode.A then
			if dUp then
				u12 = 0;
			end;
			aUp = true;
			if Flying then
				StopAnim(script:WaitForChild("FlyLeftAnim"));
			end;
		elseif l__KeyCode__204 == Enum.KeyCode.S then
			if wUp then
				u11 = 0;
			end;
			sUp = true;
			if Flying then
				StopAnim(script:WaitForChild("FlyBackAnim"));
			end;
		elseif l__KeyCode__204 == Enum.KeyCode.D then
			if aUp then
				u12 = 0;
			end;
			dUp = true;
			if Flying then
				StopAnim(script:WaitForChild("FlyRightAnim"));
			end;
		elseif l__KeyCode__204 == Enum.KeyCode.E then
			if qUp then
				u13 = 0;
			end;
			eUp = true;
			if Flying then
				StopAnim(script:WaitForChild("FlyUpAnim"));
			end;
		elseif l__KeyCode__204 == Enum.KeyCode.Q then
			if eUp then
				u13 = 0;
			end;
			qUp = true;
			if Flying then
				StopAnim(script:WaitForChild("FlyDownAnim"));
			end;
		end;
	end;
	if p27.KeyCode == Enum.KeyCode.B and SoulAttacking then
		RemoteEvent:FireServer({ "Skill_SoulAttack_End" });
		game:GetService("RunService"):UnbindFromRenderStep("TargetLock");
		SoulAttack_Target = nil;
		SoulAttacking = false;
	end;
end);
function FlyFunc()
	local v205 = Instance.new("BodyVelocity");
	v205.Name = "FlyBodyVel";
	v205.MaxForce = Vector3.new(math.huge, math.huge, math.huge);
	v205.Velocity = Vector3.new(0, 0, 0);
	local v206 = Instance.new("BodyGyro");
	v206.Name = "FlyBodyGyro";
	v206.MaxTorque = Vector3.new(math.huge, math.huge, math.huge);
	v206.D = 100;
	v206.P = 20000;
	v206.CFrame = HumanoidRootPart.CFrame;
	v205.Parent = HumanoidRootPart;
	v206.Parent = HumanoidRootPart;
	if JumpForce.Value < 100000 then
		FlySpeed = JumpForce.Value / 200;
	elseif JumpForce.Value < 1000000 then
		FlySpeed = 400 + JumpForce.Value / 1000;
	elseif JumpForce.Value < 10000000 then
		FlySpeed = 1300 + JumpForce.Value / 10000;
	else
		FlySpeed = 2200 + JumpForce.Value / 100000;
	end;
	if Humanoid.JumpPower ~= 0 then
		if Humanoid.JumpPower ~= 50 then
			if Character then
				if Character:FindFirstChild("LeftWeight1") then
					FlySpeed = FlySpeed / 2;
				elseif Character then
					if Character:FindFirstChild("LeftWeight2") then
						FlySpeed = FlySpeed / 5;
					elseif Character then
						if Character:FindFirstChild("LeftWeight3") then
							FlySpeed = FlySpeed / 10;
						elseif Character then
							if Character:FindFirstChild("LeftWeight4") then
								FlySpeed = FlySpeed / 20;
							end;
						end;
					elseif Character then
						if Character:FindFirstChild("LeftWeight4") then
							FlySpeed = FlySpeed / 20;
						end;
					end;
				elseif Character then
					if Character:FindFirstChild("LeftWeight3") then
						FlySpeed = FlySpeed / 10;
					elseif Character then
						if Character:FindFirstChild("LeftWeight4") then
							FlySpeed = FlySpeed / 20;
						end;
					end;
				elseif Character then
					if Character:FindFirstChild("LeftWeight4") then
						FlySpeed = FlySpeed / 20;
					end;
				end;
			elseif Character then
				if Character:FindFirstChild("LeftWeight2") then
					FlySpeed = FlySpeed / 5;
				elseif Character then
					if Character:FindFirstChild("LeftWeight3") then
						FlySpeed = FlySpeed / 10;
					elseif Character then
						if Character:FindFirstChild("LeftWeight4") then
							FlySpeed = FlySpeed / 20;
						end;
					end;
				elseif Character then
					if Character:FindFirstChild("LeftWeight4") then
						FlySpeed = FlySpeed / 20;
					end;
				end;
			elseif Character then
				if Character:FindFirstChild("LeftWeight3") then
					FlySpeed = FlySpeed / 10;
				elseif Character then
					if Character:FindFirstChild("LeftWeight4") then
						FlySpeed = FlySpeed / 20;
					end;
				end;
			elseif Character then
				if Character:FindFirstChild("LeftWeight4") then
					FlySpeed = FlySpeed / 20;
				end;
			end;
		end;
	end;
	if 0 < CustomFS then
		if CustomFS < FlySpeed then
			FlySpeed = CustomFS;
		end;
	end;
	if 1000 < FlySpeed then
		FlySpeed = 1000;
	end;
	FlyRunService = RunService.RenderStepped:Connect(function()
		v206.CFrame = CurrentCamera.CFrame;
		if u13 ~= 0 then
			v205.Velocity = CFrame.new(CurrentCamera.CFrame.p, (CurrentCamera.CFrame * CFrame.new(u12, u13, u11)).p).lookVector * FlySpeed;
		elseif u12 == 0 then
			if u11 ~= 0 then
				v205.Velocity = CFrame.new(CurrentCamera.CFrame.p, (CurrentCamera.CFrame * CFrame.new(u12, 0, u11)).p).lookVector * FlySpeed;
			else
				v205.Velocity = Vector3.new(0, 0, 0);
			end;
		else
			v205.Velocity = CFrame.new(CurrentCamera.CFrame.p, (CurrentCamera.CFrame * CFrame.new(u12, 0, u11)).p).lookVector * FlySpeed;
		end;
		if wUp then
			if aUp then
				if sUp then
					if dUp then
						if eUp then
							if qUp then
								if u12 == 0 then
									if u13 == 0 then
										if u11 ~= 0 then
											u12 = 0;
											u13 = 0;
											u11 = 0;
											v205.Velocity = Vector3.new(0, 0, 0);
										end;
									else
										u12 = 0;
										u13 = 0;
										u11 = 0;
										v205.Velocity = Vector3.new(0, 0, 0);
									end;
								else
									u12 = 0;
									u13 = 0;
									u11 = 0;
									v205.Velocity = Vector3.new(0, 0, 0);
								end;
							end;
						end;
					end;
				end;
			end;
		end;
		if not Flying then
			FlyRunService:Disconnect();
		end;
	end);
end;
function RemoteFunction.OnClientInvoke(p29)
	if p29[1] ~= "QuestTalkStartHackCheck" then
		return;
	end;
	if QuestMsgFrame.Visible == true and workspace.CurrentCamera.CameraType == Enum.CameraType.Scriptable and TouchingQuestPart then
		return false;
	end;
	return true;
end;
spawn(function()
	while wait(5) do
		RemoteEvent:FireServer({ "CheckStats", FistStrength.Value, BodyToughness.Value, MovementSpeed.Value, JumpForce.Value, PsychicPower.Value });	
	end;
end);
spawn(function()
	while true do
		for v207 = 1, 25 do
			for v208, v209 in pairs(workspace:WaitForChild("Main"):WaitForChild("Volcano"):WaitForChild("Lava"):GetChildren()) do
				if v209.Name == "LavaPart" then
					for v210, v211 in pairs(v209:GetChildren()) do
						if v211:IsA("Texture") then
							v211.Texture = string.format("rbxasset://textures/water/normal_%02d.dds", v207);
						end;
					end;
				end;
			end;
			for v212, v213 in pairs(workspace:WaitForChild("Main"):WaitForChild("TrainingArea"):WaitForChild("LavaPart2"):GetChildren()) do
				if v213:IsA("Texture") then
					v213.Texture = string.format("rbxasset://textures/water/normal_%02d.dds", v207);
				end;
			end;
			wait(0.1);
		end;	
	end;
end);
spawn(function()
	while wait(1) do
		if HumanoidRootPart and Humanoid then
			if Humanoid.WalkSpeed ~= 0 and Humanoid.Parent:FindFirstChild("GodModeShield") then
				delay(5, function()
					if Humanoid.WalkSpeed ~= 0 and Humanoid.Parent:FindFirstChild("GodModeShield") then
						Humanoid.Parent:BreakJoints();
					end;
				end);
			end;
			if (HumanoidRootPart.CFrame.p - ReplicatedStorage:WaitForChild("SathPart").CFrame.p).magnitude < 25 and QuestTalkBtn.Visible == false and QuestMsgFrame.Visible == false and Humanoid.WalkSpeed ~= 0 then
				TouchingQuestPart = true;
				local v214 = HttpService:JSONDecode(QuestData.Value);
				if v214 and v214.MainQuest and (v214.MainQuest.No == 0 or v214.MainQuest.Done) then
					QuestTalkBtn:WaitForChild("Npc").Value = "Sath";
					QuestTalkBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
					QuestTalkBtn.Visible = true;
					QuestTalkBtn:TweenPosition(UDim2.new(0.387, 0, 0.05, 0), "Out", "Back", 0.5, true);
				else
					QuestTalkBtn:TweenPosition(UDim2.new(0.387, 0, -0.1, 0), "Out", "Back", 0.5, true);
					QuestTalkBtn.Visible = false;
				end;
			elseif (HumanoidRootPart.CFrame.p - ReplicatedStorage:WaitForChild("GrimPart").CFrame.p).magnitude < 25 and QuestTalkBtn.Visible == false and QuestMsgFrame.Visible == false and Humanoid.WalkSpeed ~= 0 then
				TouchingQuestPart = true;
				local v215 = HttpService:JSONDecode(QuestData.Value);
				if v215 and v215.GrimQuest and (v215.GrimQuest.No == 0 or v215.GrimQuest.Done) then
					QuestTalkBtn:WaitForChild("Npc").Value = "Grim";
					QuestTalkBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
					QuestTalkBtn.Visible = true;
					QuestTalkBtn:TweenPosition(UDim2.new(0.387, 0, 0.05, 0), "Out", "Back", 0.5, true);
				else
					QuestTalkBtn:TweenPosition(UDim2.new(0.387, 0, -0.1, 0), "Out", "Back", 0.5, true);
					QuestTalkBtn.Visible = false;
				end;
			elseif (HumanoidRootPart.CFrame.p - ReplicatedStorage:WaitForChild("GhostRiderPart").CFrame.p).magnitude < 25 and QuestTalkBtn.Visible == false and QuestMsgFrame.Visible == false and Humanoid.WalkSpeed ~= 0 then
				TouchingQuestPart = true;
				QuestTalkBtn:WaitForChild("Npc").Value = "GhostRider";
				QuestTalkBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
				QuestTalkBtn.Visible = true;
				QuestTalkBtn:TweenPosition(UDim2.new(0.387, 0, 0.05, 0), "Out", "Back", 0.5, true);
			elseif (HumanoidRootPart.CFrame.p - ReplicatedStorage:WaitForChild("SathPart").CFrame.p).magnitude >= 25 and (HumanoidRootPart.CFrame.p - ReplicatedStorage:WaitForChild("GrimPart").CFrame.p).magnitude >= 25 and (HumanoidRootPart.CFrame.p - ReplicatedStorage:WaitForChild("GhostRiderPart").CFrame.p).magnitude >= 25 then
				TouchingQuestPart = false;
				QuestTalkBtn:TweenPosition(UDim2.new(0.387, 0, -0.1, 0), "Out", "Back", 0.5, true);
				QuestMsgFrame.Visible = false;
				wait(0.5);
				QuestTalkBtn.Visible = false;
			end;
			if (HumanoidRootPart.CFrame.p - ReplicatedStorage:WaitForChild("TrainingRockCollision").CFrame.p).magnitude < 35 then
				_G.NearTrainingRock = true;
			else
				_G.NearTrainingRock = false;
			end;
			if (HumanoidRootPart.CFrame.p - ReplicatedStorage:WaitForChild("TrainingCrystalCollision").CFrame.p).magnitude < 15 then
				_G.NearTrainingCrystal = true;
			else
				_G.NearTrainingCrystal = false;
			end;
			if (HumanoidRootPart.CFrame.p - TrainingArea:WaitForChild("StarFSTraining1").CFrame.p).magnitude < 25 then
				_G.NearStarFSTraining1 = true;
			else
				_G.NearStarFSTraining1 = false;
			end;
			if (HumanoidRootPart.CFrame.p - TrainingArea:WaitForChild("StarFSTraining2").CFrame.p).magnitude < 35 then
				_G.NearStarFSTraining2 = true;
			else
				_G.NearStarFSTraining2 = false;
			end;
			if (HumanoidRootPart.CFrame.p - TrainingArea:WaitForChild("StarFSTraining3").CFrame.p).magnitude < 105 then
				_G.NearStarFSTraining3 = true;
			else
				_G.NearStarFSTraining3 = false;
			end;
			if (HumanoidRootPart.CFrame.p - TrainingArea:WaitForChild("PPTrainingPart1").CFrame.p).magnitude < 20 then
				_G.NearPPTrainingPart1 = true;
			else
				_G.NearPPTrainingPart1 = false;
			end;
			if (HumanoidRootPart.CFrame.p - TrainingArea:WaitForChild("PPTrainingPart2").CFrame.p).magnitude < 20 then
				_G.NearPPTrainingPart2 = true;
			else
				_G.NearPPTrainingPart2 = false;
			end;
			if (HumanoidRootPart.CFrame.p - TrainingArea:WaitForChild("PPTrainingPart3").CFrame.p).magnitude < 25 then
				_G.NearPPTrainingPart3 = true;
			else
				_G.NearPPTrainingPart3 = false;
			end;
			if (HumanoidRootPart.CFrame.p - TrainingArea:WaitForChild("PPTrainingPart4").CFrame.p).magnitude < 35 then
				_G.NearPPTrainingPart4 = true;
			else
				_G.NearPPTrainingPart4 = false;
			end;
		end;	
	end;
end);
Token.Changed:Connect(function(p30)
	TokenImgBtn:WaitForChild("AmountTxtBtn").Text = tostring(p30);
end);
SelectedRank.Changed:Connect(function(p31)
	MenuFrame:WaitForChild("InfoFrame"):WaitForChild("RankImgBtn").Image = require(ModuleStorage:WaitForChild("RankImgVariable"))[p31];
end);
Rank.Changed:Connect(function(p32)
	local v216 = nil;
	MenuFrame:WaitForChild("InfoFrame"):WaitForChild("RankTxt").Text = "Rank : " .. require(ModuleStorage:WaitForChild("RankNameVariable"))[Rank.Value];
	if Rank.Value < 11 then
		RankImgBtn.Image = require(ModuleStorage:WaitForChild("RankImgVariable"))[Rank.Value + 1];
		RankImgBtn.Visible = true;
	else
		RankImgBtn.Visible = false;
	end;
	if Rank.Value > 1 then
		RankEmblemFrame:WaitForChild("Rank2ImgBtn").ImageTransparency = 0;
		RankEmblemFrame:WaitForChild("Rank2ImgBtn").ImageColor3 = Color3.fromRGB(255, 255, 255);
		RankEmblemFrame:WaitForChild("Rank2ImgBtn"):WaitForChild("LockTxt").Visible = false;
	end;
	if Rank.Value > 2 then
		RankEmblemFrame:WaitForChild("Rank3ImgBtn").ImageTransparency = 0;
		RankEmblemFrame:WaitForChild("Rank3ImgBtn").ImageColor3 = Color3.fromRGB(255, 255, 255);
		RankEmblemFrame:WaitForChild("Rank3ImgBtn"):WaitForChild("LockTxt").Visible = false;
	end;
	if Rank.Value > 3 then
		RankEmblemFrame:WaitForChild("Rank4ImgBtn").ImageTransparency = 0;
		RankEmblemFrame:WaitForChild("Rank4ImgBtn").ImageColor3 = Color3.fromRGB(255, 255, 255);
		RankEmblemFrame:WaitForChild("Rank4ImgBtn"):WaitForChild("LockTxt").Visible = false;
	end;
	if Rank.Value > 4 then
		RankEmblemFrame:WaitForChild("Rank5ImgBtn").ImageTransparency = 0;
		RankEmblemFrame:WaitForChild("Rank5ImgBtn").ImageColor3 = Color3.fromRGB(255, 255, 255);
		RankEmblemFrame:WaitForChild("Rank5ImgBtn"):WaitForChild("LockTxt").Visible = false;
	end;
	if Rank.Value > 5 then
		RankEmblemFrame:WaitForChild("Rank6ImgBtn").ImageTransparency = 0;
		RankEmblemFrame:WaitForChild("Rank6ImgBtn").ImageColor3 = Color3.fromRGB(255, 255, 255);
		RankEmblemFrame:WaitForChild("Rank6ImgBtn"):WaitForChild("LockTxt").Visible = false;
	end;
	if Rank.Value > 6 then
		RankEmblemFrame:WaitForChild("Rank7ImgBtn").ImageTransparency = 0;
		RankEmblemFrame:WaitForChild("Rank7ImgBtn").ImageColor3 = Color3.fromRGB(255, 255, 255);
		RankEmblemFrame:WaitForChild("Rank7ImgBtn"):WaitForChild("LockTxt").Visible = false;
	end;
	if Rank.Value > 7 then
		RankEmblemFrame:WaitForChild("Rank8ImgBtn").ImageTransparency = 0;
		RankEmblemFrame:WaitForChild("Rank8ImgBtn").ImageColor3 = Color3.fromRGB(255, 255, 255);
		RankEmblemFrame:WaitForChild("Rank8ImgBtn"):WaitForChild("LockTxt").Visible = false;
	end;
	if Rank.Value > 8 then
		RankEmblemFrame:WaitForChild("Rank9ImgBtn").ImageTransparency = 0;
		RankEmblemFrame:WaitForChild("Rank9ImgBtn").ImageColor3 = Color3.fromRGB(255, 255, 255);
		RankEmblemFrame:WaitForChild("Rank9ImgBtn"):WaitForChild("LockTxt").Visible = false;
	end;
	if Rank.Value > 9 then
		RankEmblemFrame:WaitForChild("Rank10ImgBtn").ImageTransparency = 0;
		RankEmblemFrame:WaitForChild("Rank10ImgBtn").ImageColor3 = Color3.fromRGB(255, 255, 255);
		RankEmblemFrame:WaitForChild("Rank10ImgBtn"):WaitForChild("LockTxt").Visible = false;
	end;
	if Rank.Value > 10 then
		RankEmblemFrame:WaitForChild("Rank11ImgBtn").ImageTransparency = 0;
		RankEmblemFrame:WaitForChild("Rank11ImgBtn").ImageColor3 = Color3.fromRGB(255, 255, 255);
		RankEmblemFrame:WaitForChild("Rank11ImgBtn"):WaitForChild("LockTxt").Visible = false;
	end;
	local l__Frame__217 = RankImgBtn:WaitForChild("Frame");
	v216 = FistStrength.Value + BodyToughness.Value + MovementSpeed.Value + JumpForce.Value + PsychicPower.Value;
	local v218 = HeroKilled.Value + VillainKilled.Value;
	if Rank.Value == 1 then
		l__Frame__217:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__217:WaitForChild("MaxFrame2").Visible = false;
		l__Frame__217:WaitForChild("MaxFrame3").Visible = false;
		l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 100 Total Power";
		if v216 <= 100 then
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = tostring(v216) .. " / 100";
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v216 / 100, 0, 1, 0);
			return;
		else
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "100 / 100";
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value == 2 then
		l__Frame__217:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__217:WaitForChild("MaxFrame2").Visible = true;
		l__Frame__217:WaitForChild("MaxFrame3").Visible = false;
		l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 1K Total Power";
		if v216 <= 1000 then
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = AddComas(v216) .. " / 1K";
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v216 / 1000, 0, 1, 0);
		else
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "1K / 1K";
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 1 Hero or Villain";
		if v218 <= 1 then
			l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v218) .. " / 1";
			l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v218 / 1, 0, 1, 0);
			return;
		else
			l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "1 / 1";
			l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value == 3 then
		l__Frame__217:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__217:WaitForChild("MaxFrame2").Visible = true;
		l__Frame__217:WaitForChild("MaxFrame3").Visible = false;
		l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 10K Total Power";
		if v216 <= 10000 then
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = AddComas(v216) .. " / 10K";
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v216 / 10000, 0, 1, 0);
		else
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "10K / 10K";
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 5 Hero or Villain";
		if v218 <= 5 then
			l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v218) .. " / 5";
			l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v218 / 5, 0, 1, 0);
			return;
		else
			l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "5 / 5";
			l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value == 4 then
		l__Frame__217:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__217:WaitForChild("MaxFrame2").Visible = true;
		l__Frame__217:WaitForChild("MaxFrame3").Visible = false;
		l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 100K Total Power";
		if v216 <= 100000 then
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = AddComas(v216) .. " / 100K";
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v216 / 100000, 0, 1, 0);
		else
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "100K / 100K";
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 10 Hero or Villain";
		if v218 <= 10 then
			l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v218) .. " / 10";
			l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v218 / 10, 0, 1, 0);
			return;
		else
			l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "10 / 10";
			l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value == 5 then
		l__Frame__217:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__217:WaitForChild("MaxFrame2").Visible = true;
		l__Frame__217:WaitForChild("MaxFrame3").Visible = true;
		l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 1M Total Power";
		if v216 <= 1000000 then
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = AddComas(v216) .. " / 1M";
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v216 / 1000000, 0, 1, 0);
		else
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "1M / 1M";
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 20 Hero or Villain";
		if v218 <= 20 then
			l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v218) .. " / 20";
			l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v218 / 20, 0, 1, 0);
		else
			l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "20 / 20";
			l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__217:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Stay Alive for 60 mins";
		if AliveTime.Value < 60 then
			l__Frame__217:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = tostring(AliveTime.Value) .. "m / 60m";
			l__Frame__217:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(AliveTime.Value / 60, 0, 1, 0);
			return;
		else
			l__Frame__217:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "60m / 60m";
			l__Frame__217:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value == 6 then
		l__Frame__217:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__217:WaitForChild("MaxFrame2").Visible = true;
		l__Frame__217:WaitForChild("MaxFrame3").Visible = true;
		l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 10M Total Power";
		if v216 <= 10000000 then
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = AddComas(v216) .. " / 10M";
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v216 / 10000000, 0, 1, 0);
		else
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "10M / 10M";
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 50 Hero or Villain";
		if v218 <= 50 then
			l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v218) .. " / 50";
			l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v218 / 50, 0, 1, 0);
		else
			l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "50 / 50";
			l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__217:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Stay Alive for 8 hours";
		if AliveTime.Value < 480 then
			local v219 = tostring(math.floor(AliveTime.Value / 60));
			l__Frame__217:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = v219 .. "h " .. tostring(math.floor(AliveTime.Value - v219 * 60)) .. "m / 8h";
			l__Frame__217:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(AliveTime.Value / 480, 0, 1, 0);
			return;
		else
			l__Frame__217:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "8h / 8h";
			l__Frame__217:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value == 7 then
		l__Frame__217:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__217:WaitForChild("MaxFrame2").Visible = true;
		l__Frame__217:WaitForChild("MaxFrame3").Visible = true;
		l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 100M Total Power";
		if v216 <= 100000000 then
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = AddComas(v216) .. " / 100M";
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v216 / 100000000, 0, 1, 0);
		else
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "100M / 100M";
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 100 Hero or Villain";
		if v218 <= 100 then
			l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v218) .. " / 100";
			l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v218 / 100, 0, 1, 0);
		else
			l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "100 / 100";
			l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__217:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Stay Alive for 16 hours";
		if AliveTime.Value < 960 then
			local v220 = tostring(math.floor(AliveTime.Value / 60));
			l__Frame__217:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = v220 .. "h " .. tostring(math.floor(AliveTime.Value - v220 * 60)) .. "m / 16h";
			l__Frame__217:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(AliveTime.Value / 960, 0, 1, 0);
			return;
		else
			l__Frame__217:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "16h / 16h";
			l__Frame__217:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value == 8 then
		l__Frame__217:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__217:WaitForChild("MaxFrame2").Visible = true;
		l__Frame__217:WaitForChild("MaxFrame3").Visible = true;
		l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 1B Total Power";
		if v216 <= 1000000000 then
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = AddComas(v216) .. " / 1B";
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v216 / 1000000000, 0, 1, 0);
		else
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "1B / 1B";
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 200 Hero or Villain";
		if v218 <= 200 then
			l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v218) .. " / 200";
			l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v218 / 200, 0, 1, 0);
		else
			l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "200 / 200";
			l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__217:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Stay Alive for 1 day";
		if AliveTime.Value < 1440 then
			local v221 = tostring(math.floor(AliveTime.Value / 1440));
			local v222 = tostring(math.floor((AliveTime.Value - v221 * 1440) / 60));
			l__Frame__217:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = v221 .. "d " .. v222 .. "h " .. tostring(math.floor(AliveTime.Value - v221 * 1440 - v222 * 60)) .. "m / 1d";
			l__Frame__217:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(AliveTime.Value / 1440, 0, 1, 0);
			return;
		else
			l__Frame__217:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "1d / 1d";
			l__Frame__217:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value ~= 9 then
		if Rank.Value == 10 then
			l__Frame__217:WaitForChild("MaxFrame1").Visible = true;
			l__Frame__217:WaitForChild("MaxFrame2").Visible = true;
			l__Frame__217:WaitForChild("MaxFrame3").Visible = true;
			l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 100B Total Power";
			if v216 <= 100000000000 then
				l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = AddComas(v216) .. " / 100B";
				l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v216 / 100000000000, 0, 1, 0);
			else
				l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "100B / 100B";
				l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			end;
			l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 1000 Hero or Villain";
			if v218 <= 1000 then
				l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v218) .. " / 1000";
				l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v218 / 1000, 0, 1, 0);
			else
				l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "1000 / 1000";
				l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			end;
			l__Frame__217:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Become a Squad Leader";
			l__Frame__217:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "0 / 1";
			l__Frame__217:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(0, 0, 1, 0);
			return;
		else
			if Rank.Value == 11 then
				l__Frame__217:WaitForChild("MaxFrame1").Visible = false;
				l__Frame__217:WaitForChild("MaxFrame2").Visible = false;
				l__Frame__217:WaitForChild("MaxFrame3").Visible = false;
			end;
			return;
		end;
	end;
	l__Frame__217:WaitForChild("MaxFrame1").Visible = true;
	l__Frame__217:WaitForChild("MaxFrame2").Visible = true;
	l__Frame__217:WaitForChild("MaxFrame3").Visible = true;
	l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 10B Total Power";
	if v216 <= 10000000000 then
		l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = AddComas(v216) .. " / 10B";
		l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v216 / 10000000000, 0, 1, 0);
	else
		l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "10B / 10B";
		l__Frame__217:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
	end;
	l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 500 Hero or Villain";
	if v218 <= 500 then
		l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v218) .. " / 500";
		l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v218 / 500, 0, 1, 0);
	else
		l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "500 / 500";
		l__Frame__217:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
	end;
	l__Frame__217:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Stay Alive for 2 days";
	if not (AliveTime.Value < 2880) then
		l__Frame__217:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "2d / 2d";
		l__Frame__217:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		return;
	end;
	local v223 = tostring(math.floor(AliveTime.Value / 1440));
	local v224 = tostring(math.floor((AliveTime.Value - v223 * 1440) / 60));
	l__Frame__217:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = v223 .. "d " .. v224 .. "h " .. tostring(math.floor(AliveTime.Value - v223 * 1440 - v224 * 60)) .. "m / 2d";
	l__Frame__217:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(AliveTime.Value / 2880, 0, 1, 0);
end);
Reputation.Changed:Connect(function(p33)
	MenuFrame:WaitForChild("InfoFrame"):WaitForChild("RepTxt").Text = "Reputation : " .. tostring(p33);
end);
Status.Changed:Connect(function(p34)
	MenuFrame:WaitForChild("InfoFrame"):WaitForChild("StatusTxt").Text = "Status : " .. p34;
end);
AliveTime.Changed:Connect(function(p35)
	local v225 = nil;
	local l__Frame__226 = RankImgBtn:WaitForChild("Frame");
	v225 = FistStrength.Value + BodyToughness.Value + MovementSpeed.Value + JumpForce.Value + PsychicPower.Value;
	local v227 = HeroKilled.Value + VillainKilled.Value;
	if Rank.Value == 1 then
		l__Frame__226:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__226:WaitForChild("MaxFrame2").Visible = false;
		l__Frame__226:WaitForChild("MaxFrame3").Visible = false;
		l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 100 Total Power";
		if v225 <= 100 then
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = tostring(v225) .. " / 100";
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v225 / 100, 0, 1, 0);
			return;
		else
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "100 / 100";
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value == 2 then
		l__Frame__226:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__226:WaitForChild("MaxFrame2").Visible = true;
		l__Frame__226:WaitForChild("MaxFrame3").Visible = false;
		l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 1K Total Power";
		if v225 <= 1000 then
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = AddComas(v225) .. " / 1K";
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v225 / 1000, 0, 1, 0);
		else
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "1K / 1K";
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 1 Hero or Villain";
		if v227 <= 1 then
			l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v227) .. " / 1";
			l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v227 / 1, 0, 1, 0);
			return;
		else
			l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "1 / 1";
			l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value == 3 then
		l__Frame__226:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__226:WaitForChild("MaxFrame2").Visible = true;
		l__Frame__226:WaitForChild("MaxFrame3").Visible = false;
		l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 10K Total Power";
		if v225 <= 10000 then
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = AddComas(v225) .. " / 10K";
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v225 / 10000, 0, 1, 0);
		else
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "10K / 10K";
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 5 Hero or Villain";
		if v227 <= 5 then
			l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v227) .. " / 5";
			l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v227 / 5, 0, 1, 0);
			return;
		else
			l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "5 / 5";
			l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value == 4 then
		l__Frame__226:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__226:WaitForChild("MaxFrame2").Visible = true;
		l__Frame__226:WaitForChild("MaxFrame3").Visible = false;
		l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 100K Total Power";
		if v225 <= 100000 then
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = AddComas(v225) .. " / 100K";
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v225 / 100000, 0, 1, 0);
		else
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "100K / 100K";
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 10 Hero or Villain";
		if v227 <= 10 then
			l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v227) .. " / 10";
			l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v227 / 10, 0, 1, 0);
			return;
		else
			l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "10 / 10";
			l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value == 5 then
		l__Frame__226:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__226:WaitForChild("MaxFrame2").Visible = true;
		l__Frame__226:WaitForChild("MaxFrame3").Visible = true;
		l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 1M Total Power";
		if v225 <= 1000000 then
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = AddComas(v225) .. " / 1M";
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v225 / 1000000, 0, 1, 0);
		else
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "1M / 1M";
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 20 Hero or Villain";
		if v227 <= 20 then
			l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v227) .. " / 20";
			l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v227 / 20, 0, 1, 0);
		else
			l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "20 / 20";
			l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__226:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Stay Alive for 60 mins";
		if AliveTime.Value < 60 then
			l__Frame__226:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = tostring(AliveTime.Value) .. "m / 60m";
			l__Frame__226:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(AliveTime.Value / 60, 0, 1, 0);
			return;
		else
			l__Frame__226:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "60m / 60m";
			l__Frame__226:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value == 6 then
		l__Frame__226:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__226:WaitForChild("MaxFrame2").Visible = true;
		l__Frame__226:WaitForChild("MaxFrame3").Visible = true;
		l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 10M Total Power";
		if v225 <= 10000000 then
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = AddComas(v225) .. " / 10M";
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v225 / 10000000, 0, 1, 0);
		else
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "10M / 10M";
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 50 Hero or Villain";
		if v227 <= 50 then
			l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v227) .. " / 50";
			l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v227 / 50, 0, 1, 0);
		else
			l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "50 / 50";
			l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__226:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Stay Alive for 8 hours";
		if AliveTime.Value < 480 then
			local v228 = tostring(math.floor(AliveTime.Value / 60));
			l__Frame__226:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = v228 .. "h " .. tostring(math.floor(AliveTime.Value - v228 * 60)) .. "m / 8h";
			l__Frame__226:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(AliveTime.Value / 480, 0, 1, 0);
			return;
		else
			l__Frame__226:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "8h / 8h";
			l__Frame__226:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value == 7 then
		l__Frame__226:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__226:WaitForChild("MaxFrame2").Visible = true;
		l__Frame__226:WaitForChild("MaxFrame3").Visible = true;
		l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 100M Total Power";
		if v225 <= 100000000 then
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = AddComas(v225) .. " / 100M";
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v225 / 100000000, 0, 1, 0);
		else
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "100M / 100M";
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 100 Hero or Villain";
		if v227 <= 100 then
			l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v227) .. " / 100";
			l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v227 / 100, 0, 1, 0);
		else
			l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "100 / 100";
			l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__226:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Stay Alive for 16 hours";
		if AliveTime.Value < 960 then
			local v229 = tostring(math.floor(AliveTime.Value / 60));
			l__Frame__226:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = v229 .. "h " .. tostring(math.floor(AliveTime.Value - v229 * 60)) .. "m / 16h";
			l__Frame__226:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(AliveTime.Value / 960, 0, 1, 0);
			return;
		else
			l__Frame__226:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "16h / 16h";
			l__Frame__226:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value == 8 then
		l__Frame__226:WaitForChild("MaxFrame1").Visible = true;
		l__Frame__226:WaitForChild("MaxFrame2").Visible = true;
		l__Frame__226:WaitForChild("MaxFrame3").Visible = true;
		l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 1B Total Power";
		if v225 <= 1000000000 then
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = AddComas(v225) .. " / 1B";
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v225 / 1000000000, 0, 1, 0);
		else
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "1B / 1B";
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 200 Hero or Villain";
		if v227 <= 200 then
			l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v227) .. " / 200";
			l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v227 / 200, 0, 1, 0);
		else
			l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "200 / 200";
			l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		end;
		l__Frame__226:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Stay Alive for 1 day";
		if AliveTime.Value < 1440 then
			local v230 = tostring(math.floor(AliveTime.Value / 1440));
			local v231 = tostring(math.floor((AliveTime.Value - v230 * 1440) / 60));
			l__Frame__226:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = v230 .. "d " .. v231 .. "h " .. tostring(math.floor(AliveTime.Value - v230 * 1440 - v231 * 60)) .. "m / 1d";
			l__Frame__226:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(AliveTime.Value / 1440, 0, 1, 0);
			return;
		else
			l__Frame__226:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "1d / 1d";
			l__Frame__226:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			return;
		end;
	end;
	if Rank.Value ~= 9 then
		if Rank.Value == 10 then
			l__Frame__226:WaitForChild("MaxFrame1").Visible = true;
			l__Frame__226:WaitForChild("MaxFrame2").Visible = true;
			l__Frame__226:WaitForChild("MaxFrame3").Visible = true;
			l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 100B Total Power";
			if v225 <= 100000000000 then
				l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = AddComas(v225) .. " / 100B";
				l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v225 / 100000000000, 0, 1, 0);
			else
				l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "100B / 100B";
				l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			end;
			l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 1000 Hero or Villain";
			if v227 <= 1000 then
				l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v227) .. " / 1000";
				l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v227 / 1000, 0, 1, 0);
			else
				l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "1000 / 1000";
				l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
			end;
			l__Frame__226:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Become a Squad Leader";
			l__Frame__226:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "0 / 1";
			l__Frame__226:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(0, 0, 1, 0);
		end;
		return;
	end;
	l__Frame__226:WaitForChild("MaxFrame1").Visible = true;
	l__Frame__226:WaitForChild("MaxFrame2").Visible = true;
	l__Frame__226:WaitForChild("MaxFrame3").Visible = true;
	l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("QuestTxt").Text = "Have 10B Total Power";
	if v225 <= 10000000000 then
		l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = AddComas(v225) .. " / 10B";
		l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(v225 / 10000000000, 0, 1, 0);
	else
		l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgTxt").Text = "10B / 10B";
		l__Frame__226:WaitForChild("MaxFrame1"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
	end;
	l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("QuestTxt").Text = "Defeat 500 Hero or Villain";
	if v227 <= 500 then
		l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = tostring(v227) .. " / 500";
		l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(v227 / 500, 0, 1, 0);
	else
		l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgTxt").Text = "500 / 500";
		l__Frame__226:WaitForChild("MaxFrame2"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
	end;
	l__Frame__226:WaitForChild("MaxFrame3"):WaitForChild("QuestTxt").Text = "Stay Alive for 2 days";
	if not (AliveTime.Value < 2880) then
		l__Frame__226:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = "2d / 2d";
		l__Frame__226:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(1, 0, 1, 0);
		return;
	end;
	local v232 = tostring(math.floor(AliveTime.Value / 1440));
	local v233 = tostring(math.floor((AliveTime.Value - v232 * 1440) / 60));
	l__Frame__226:WaitForChild("MaxFrame3"):WaitForChild("ProgTxt").Text = v232 .. "d " .. v233 .. "h " .. tostring(math.floor(AliveTime.Value - v232 * 1440 - v233 * 60)) .. "m / 2d";
	l__Frame__226:WaitForChild("MaxFrame3"):WaitForChild("ProgFrame").Size = UDim2.new(AliveTime.Value / 2880, 0, 1, 0);
end);
InnocentKilled.Changed:Connect(function(p36)
	MenuFrame:WaitForChild("InfoFrame"):WaitForChild("KilledTxt").Text = "Innocence Killed : " .. tostring(InnocentKilled.Value) .. " , Villain Killed : " .. tostring(VillainKilled.Value) .. " , Hero Killed : " .. tostring(HeroKilled.Value);
end);
VillainKilled.Changed:Connect(function(p37)
	MenuFrame:WaitForChild("InfoFrame"):WaitForChild("KilledTxt").Text = "Innocence Killed : " .. tostring(InnocentKilled.Value) .. " , Villain Killed : " .. tostring(VillainKilled.Value) .. " , Hero Killed : " .. tostring(HeroKilled.Value);
end);
HeroKilled.Changed:Connect(function(p38)
	MenuFrame:WaitForChild("InfoFrame"):WaitForChild("KilledTxt").Text = "Innocence Killed : " .. tostring(InnocentKilled.Value) .. " , Villain Killed : " .. tostring(VillainKilled.Value) .. " , Hero Killed : " .. tostring(HeroKilled.Value);
end);
FistStrength.Changed:Connect(function(p39)
	MenuFrame:WaitForChild("InfoFrame"):WaitForChild("FSTxt").Text = "Fist Strength : " .. AddComas(p39);
end);
BodyToughness.Changed:Connect(function(p40)
	MenuFrame:WaitForChild("InfoFrame"):WaitForChild("BTTxt").Text = "Body Toughness : " .. AddComas(p40);
end);
MovementSpeed.Changed:Connect(function(p41)
	MenuFrame:WaitForChild("InfoFrame"):WaitForChild("MSTxt").Text = "Movement Speed : " .. AddComas(p41);
	if Humanoid.WalkSpeed == 0 or Humanoid.WalkSpeed == 10 then
		return;
	end;
	if MovementSpeed.Value <= 400 then
		local v234 = 10 + MovementSpeed.Value / 10;
	elseif MovementSpeed.Value <= 5400 then
		v234 = 46 + MovementSpeed.Value / 100;
	elseif MovementSpeed.Value <= 65400 then
		v234 = 91 + MovementSpeed.Value / 600;
	elseif MovementSpeed.Value <= 665400 then
		v234 = 170 + (MovementSpeed.Value - 5400) / 2000;
	else
		v234 = 440 + (MovementSpeed.Value - 65400) / 10000;
	end;
	if Humanoid.WalkSpeed ~= 0 and Humanoid.WalkSpeed ~= 10 then
		if Character and Character:FindFirstChild("LeftWeight1") then
			v234 = v234 / 2;
			if v234 < 4 then
				v234 = 1;
			end;
		elseif Character and Character:FindFirstChild("LeftWeight2") then
			v234 = v234 / 5;
			if v234 < 4 then
				v234 = 1;
			end;
		elseif Character and Character:FindFirstChild("LeftWeight3") then
			v234 = v234 / 10;
			if v234 < 4 then
				v234 = 1;
			end;
		elseif Character and Character:FindFirstChild("LeftWeight4") then
			v234 = v234 / 20;
			if v234 < 4 then
				v234 = 1;
			end;
		end;
	end;
	if CustomMS > 10 and CustomMS < v234 then
		v234 = CustomMS;
	end;
	if v234 > 1000 then
		v234 = 1000;
	end;
	Humanoid.WalkSpeed = v234;
end);
JumpForce.Changed:Connect(function(p42)
	MenuFrame:WaitForChild("InfoFrame"):WaitForChild("JFTxt").Text = "Jump Force : " .. AddComas(p42);
	if Humanoid.JumpPower == 0 or Humanoid.JumpPower == 50 then
		return;
	end;
	if JumpForce.Value <= 2500 then
		local v235 = 50 + JumpForce.Value / 50;
	elseif JumpForce.Value <= 8750 then
		v235 = 65 + JumpForce.Value / 250;
	elseif JumpForce.Value <= 33750 then
		v235 = 84 + (JumpForce.Value - 750) / 500;
	elseif JumpForce.Value <= 83750 then
		v235 = 120 + (JumpForce.Value - 3750) / 1000;
	elseif JumpForce.Value <= 665000 then
		v235 = 193 + (JumpForce.Value - 65000) / 2500;
	else
		v235 = 400 + JumpForce.Value / 20000;
	end;
	if Humanoid.JumpPower ~= 0 and Humanoid.JumpPower ~= 50 then
		if Character and Character:FindFirstChild("LeftWeight1") then
			v235 = v235 / 2;
			if v235 < 50 then
				v235 = 1;
			end;
		elseif Character and Character:FindFirstChild("LeftWeight2") then
			v235 = v235 / 3;
			if v235 < 50 then
				v235 = 1;
			end;
		elseif Character and Character:FindFirstChild("LeftWeight3") then
			v235 = v235 / 4;
			if v235 < 50 then
				v235 = 1;
			end;
		elseif Character and Character:FindFirstChild("LeftWeight4") then
			v235 = v235 / 5;
			if v235 < 50 then
				v235 = 1;
			end;
		end;
	end;
	if CustomJP > 50 and CustomJP < v235 then
		v235 = CustomJP;
	end;
	if v235 > 500 then
		v235 = 500;
	end;
	Humanoid.JumpPower = v235;
end);
PsychicPower.Changed:Connect(function(p43)
	MenuFrame:WaitForChild("InfoFrame"):WaitForChild("PPTxt").Text = "Psychic Power : " .. AddComas(p43);
end);
Setting.Changed:Connect(function(p44)
	local v236 = HttpService:JSONDecode(p44);
	if v236 then
		for v237, v238 in pairs(MenuFrame:WaitForChild("SettingFrame"):GetChildren()) do
			if v238.Name == "SettingTxt0" then
				if v236.OnlyDmgVillain ~= nil then
					if v236.OnlyDmgVillain == true then
						v238:WaitForChild("ToggleBtn").Text = "On";
						v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
						v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
					else
						v238:WaitForChild("ToggleBtn").Text = "Off";
						v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
						v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
					end;
				end;
			elseif v238.Name == "SettingTxt1" then
				if v236.FSXpTxt ~= nil then
					if v236.FSXpTxt == true then
						v238:WaitForChild("ToggleBtn").Text = "On";
						v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
						v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
					else
						v238:WaitForChild("ToggleBtn").Text = "Off";
						v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
						v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
					end;
				end;
			elseif v238.Name == "SettingTxt2" then
				if v236.BTXpTxt ~= nil then
					if v236.BTXpTxt == true then
						v238:WaitForChild("ToggleBtn").Text = "On";
						v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
						v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
					else
						v238:WaitForChild("ToggleBtn").Text = "Off";
						v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
						v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
					end;
				end;
			elseif v238.Name == "SettingTxt3" then
				if v236.MSXpTxt ~= nil then
					if v236.MSXpTxt == true then
						v238:WaitForChild("ToggleBtn").Text = "On";
						v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
						v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
					else
						v238:WaitForChild("ToggleBtn").Text = "Off";
						v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
						v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
					end;
				end;
			elseif v238.Name == "SettingTxt4" then
				if v236.JFXpTxt ~= nil then
					if v236.JFXpTxt == true then
						v238:WaitForChild("ToggleBtn").Text = "On";
						v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
						v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
					else
						v238:WaitForChild("ToggleBtn").Text = "Off";
						v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
						v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
					end;
				end;
			elseif v238.Name == "SettingTxt5" then
				if v236.PPXpTxt ~= nil then
					if v236.PPXpTxt == true then
						v238:WaitForChild("ToggleBtn").Text = "On";
						v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
						v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
					else
						v238:WaitForChild("ToggleBtn").Text = "Off";
						v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
						v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
					end;
				end;
			elseif v238.Name == "SettingTxt6" then
				if v236.BGMusic ~= nil then
					if v236.BGMusic == true then
						BackgroundSound.Volume = 0.2;
						v238:WaitForChild("ToggleBtn").Text = "On";
						v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
						v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
					else
						BackgroundSound.Volume = 0;
						v238:WaitForChild("ToggleBtn").Text = "Off";
						v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
						v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
					end;
				end;
			elseif v238.Name == "SettingTxt7" then
				if v236.DmgToOpp ~= nil then
					if v236.DmgToOpp == true then
						v238:WaitForChild("ToggleBtn").Text = "On";
						v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
						v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
					else
						v238:WaitForChild("ToggleBtn").Text = "Off";
						v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
						v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
					end;
				end;
			elseif v238.Name == "SettingTxt8" then
				if v236.DmgToSelf ~= nil then
					if v236.DmgToSelf == true then
						v238:WaitForChild("ToggleBtn").Text = "On";
						v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
						v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
					else
						v238:WaitForChild("ToggleBtn").Text = "Off";
						v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
						v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
					end;
				end;
			elseif v238.Name == "SettingTxt9" then
				if v236.ShowNameTag ~= nil then
					if v236.ShowNameTag == true then
						if Character and Character:FindFirstChild("Head") and Character.Head:FindFirstChild("RankBbGui") and Character.Head:FindFirstChild("NameBbGui") then
							Character.Head:FindFirstChild("RankBbGui").Enabled = true;
							Character.Head:FindFirstChild("NameBbGui").Enabled = true;
						end;
						v238:WaitForChild("ToggleBtn").Text = "On";
						v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
						v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
					else
						if Character and Character:FindFirstChild("Head") and Character.Head:FindFirstChild("RankBbGui") and Character.Head:FindFirstChild("NameBbGui") then
							Character.Head:FindFirstChild("RankBbGui").Enabled = false;
							Character.Head:FindFirstChild("NameBbGui").Enabled = false;
						end;
						v238:WaitForChild("ToggleBtn").Text = "Off";
						v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
						v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
					end;
				end;
			elseif v238.Name == "SettingTxt10" then
				if v236.AutoTrainingBot ~= nil then
					if v236.AutoTrainingBot == true then
						v238:WaitForChild("ToggleBtn").Text = "On";
						v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
						v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
					else
						v238:WaitForChild("ToggleBtn").Text = "Off";
						v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
						v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
					end;
				end;
			elseif v238.Name == "SettingTxt11" then
				if v236.ToggleWaterRun ~= nil then
					if v236.ToggleWaterRun == true then
						v238:WaitForChild("ToggleBtn").Text = "On";
						v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
						v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
						local v239 = HttpService:JSONDecode(QuestData.Value);
						if v239 and v239.MainQuest and v239.MainQuest.No >= 7 and MovementSpeed.Value >= 1000 and PsychicPower.Value >= 1000 then
							workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part1").CanCollide = true;
							workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part2").CanCollide = true;
							workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part3").CanCollide = true;
							workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part4").CanCollide = true;
							workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part5").CanCollide = true;
							workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part6").CanCollide = true;
							workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part7").CanCollide = true;
							workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part8").CanCollide = true;
							workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part9").CanCollide = true;
						end;
					else
						v238:WaitForChild("ToggleBtn").Text = "Off";
						v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
						v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
						workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part1").CanCollide = false;
						workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part2").CanCollide = false;
						workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part3").CanCollide = false;
						workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part4").CanCollide = false;
						workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part5").CanCollide = false;
						workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part6").CanCollide = false;
						workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part7").CanCollide = false;
						workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part8").CanCollide = false;
						workspace:WaitForChild("Main"):WaitForChild("WaterWalkFloor"):WaitForChild("Part9").CanCollide = false;
					end;
				end;
			elseif v238.Name == "SettingTxt12" then
				if v236.ToggleVipCape ~= nil then
					if v236.ToggleVipCape == true then
						v238:WaitForChild("ToggleBtn").Text = "On";
						v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
						v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
					else
						v238:WaitForChild("ToggleBtn").Text = "Off";
						v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
						v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
					end;
				end;
			elseif v238.Name == "SettingTxt13" then
				if v236.ToggleVipTag ~= nil then
					if v236.ToggleVipTag == true then
						v238:WaitForChild("ToggleBtn").Text = "On";
						v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
						v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
					else
						v238:WaitForChild("ToggleBtn").Text = "Off";
						v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
						v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
					end;
				end;
			elseif v238.Name == "SettingTxt14" then
				if v236.ToggleFlight ~= nil then
					if v236.ToggleFlight == true then
						v238:WaitForChild("ToggleBtn").Text = "On";
						v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
						v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
					else
						v238:WaitForChild("ToggleBtn").Text = "Off";
						v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
						v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
					end;
				end;
			elseif v238.Name == "SettingTxt15" then
				if v236.SelectedMS ~= nil then
					v238:WaitForChild("TextBox").Text = tostring(v236.SelectedMS);
					CustomMS = v236.SelectedMS;
					if Humanoid.WalkSpeed == 0 then
						return;
					end;
					if MovementSpeed.Value <= 400 then
						local v240 = 10 + MovementSpeed.Value / 10;
					elseif MovementSpeed.Value <= 5400 then
						v240 = 46 + MovementSpeed.Value / 100;
					elseif MovementSpeed.Value <= 65400 then
						v240 = 91 + MovementSpeed.Value / 600;
					elseif MovementSpeed.Value <= 665400 then
						v240 = 170 + (MovementSpeed.Value - 5400) / 2000;
					else
						v240 = 440 + (MovementSpeed.Value - 65400) / 10000;
					end;
					if Humanoid.WalkSpeed ~= 0 and Humanoid.WalkSpeed ~= 10 then
						if Character and Character:FindFirstChild("LeftWeight1") then
							v240 = v240 / 2;
							if v240 < 4 then
								v240 = 1;
							end;
						elseif Character and Character:FindFirstChild("LeftWeight2") then
							v240 = v240 / 10;
							if v240 < 4 then
								v240 = 1;
							end;
						elseif Character and Character:FindFirstChild("LeftWeight3") then
							v240 = v240 / 50;
							if v240 < 4 then
								v240 = 1;
							end;
						elseif Character and Character:FindFirstChild("LeftWeight4") then
							v240 = v240 / 100;
							if v240 < 4 then
								v240 = 1;
							end;
						end;
					end;
					if CustomMS > 10 and CustomMS < v240 then
						v240 = CustomMS;
					end;
					if v240 > 1000 then
						v240 = 1000;
					end;
					Humanoid.WalkSpeed = v240;
				end;
			elseif v238.Name == "SettingTxt16" then
				if v236.SelectedJP ~= nil then
					v238:WaitForChild("TextBox").Text = tostring(v236.SelectedJP);
					CustomJP = v236.SelectedJP;
					if Humanoid.JumpPower == 0 then
						return;
					end;
					if JumpForce.Value <= 2500 then
						local v241 = 50 + JumpForce.Value / 50;
					elseif JumpForce.Value <= 8750 then
						v241 = 65 + JumpForce.Value / 250;
					elseif JumpForce.Value <= 33750 then
						v241 = 84 + (JumpForce.Value - 750) / 500;
					elseif JumpForce.Value <= 83750 then
						v241 = 120 + (JumpForce.Value - 3750) / 1000;
					elseif JumpForce.Value <= 665000 then
						v241 = 193 + (JumpForce.Value - 65000) / 2500;
					else
						v241 = 400 + JumpForce.Value / 20000;
					end;
					if Humanoid.JumpPower ~= 0 and Humanoid.JumpPower ~= 50 then
						if Character and Character:FindFirstChild("LeftWeight1") then
							v241 = v241 / 2;
							if v241 < 50 then
								v241 = 1;
							end;
						elseif Character and Character:FindFirstChild("LeftWeight2") then
							v241 = v241 / 5;
							if v241 < 50 then
								v241 = 1;
							end;
						elseif Character and Character:FindFirstChild("LeftWeight3") then
							v241 = v241 / 10;
							if v241 < 50 then
								v241 = 1;
							end;
						elseif Character and Character:FindFirstChild("LeftWeight4") then
							v241 = v241 / 20;
							if v241 < 50 then
								v241 = 1;
							end;
						end;
					end;
					if CustomJP > 50 and CustomJP < v241 then
						v241 = CustomJP;
					end;
					if v241 > 500 then
						v241 = 500;
					end;
					Humanoid.JumpPower = v241;
				end;
			elseif v238.Name == "SettingTxt17" then
				if v236.SelectedFS ~= nil then
					v238:WaitForChild("TextBox").Text = tostring(v236.SelectedFS);
					CustomFS = v236.SelectedFS;
					if JumpForce.Value < 100000 then
						FlySpeed = JumpForce.Value / 200;
					elseif JumpForce.Value < 1000000 then
						FlySpeed = 400 + JumpForce.Value / 1000;
					elseif JumpForce.Value < 10000000 then
						FlySpeed = 1300 + JumpForce.Value / 10000;
					else
						FlySpeed = 2200 + JumpForce.Value / 100000;
					end;
					if Humanoid.JumpPower ~= 0 and Humanoid.JumpPower ~= 50 then
						if Character and Character:FindFirstChild("LeftWeight1") then
							FlySpeed = FlySpeed / 2;
						elseif Character and Character:FindFirstChild("LeftWeight2") then
							FlySpeed = FlySpeed / 5;
						elseif Character and Character:FindFirstChild("LeftWeight3") then
							FlySpeed = FlySpeed / 10;
						elseif Character and Character:FindFirstChild("LeftWeight4") then
							FlySpeed = FlySpeed / 20;
						end;
					end;
					if CustomFS > 0 and CustomFS < FlySpeed then
						FlySpeed = CustomFS;
					end;
					if FlySpeed > 1000 then
						FlySpeed = 1000;
					end;
				end;
			elseif v238.Name == "SettingTxt18" and v236.GhostRiderHead ~= nil then
				if v236.GhostRiderHead == true then
					v238:WaitForChild("ToggleBtn").Text = "On";
					v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(213, 255, 0);
					v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(133, 190, 0);
				else
					v238:WaitForChild("ToggleBtn").Text = "Off";
					v238:WaitForChild("ToggleBtn").BackgroundColor3 = Color3.fromRGB(255, 110, 110);
					v238:WaitForChild("ToggleBtn").BorderColor3 = Color3.fromRGB(206, 81, 43);
				end;
			end;
		end;
	end;
end);
Inventory.Changed:Connect(function(p45)
	local v242 = HttpService:JSONDecode(p45);
	if v242 and v242.FSMultiplier and v242.BTMultiplier and v242.MSMultiplier and v242.JFMultiplier and v242.PPMultiplier then
		MenuFrame:WaitForChild("InfoFrame"):WaitForChild("FSMultiplierTxt").Text = "x" .. tostring(v242.FSMultiplier);
		MenuFrame:WaitForChild("InfoFrame"):WaitForChild("BTMultiplierTxt").Text = "x" .. tostring(v242.BTMultiplier);
		MenuFrame:WaitForChild("InfoFrame"):WaitForChild("MSMultiplierTxt").Text = "x" .. tostring(v242.MSMultiplier);
		MenuFrame:WaitForChild("InfoFrame"):WaitForChild("JFMultiplierTxt").Text = "x" .. tostring(v242.JFMultiplier);
		MenuFrame:WaitForChild("InfoFrame"):WaitForChild("PPMultiplierTxt").Text = "x" .. tostring(v242.PPMultiplier);
	end;
	if v242 and v242.Vip and v242.Vip.HaveVip and v242.Vip.TimeLeft and v242.Vip.TimeLeft > 0 then
		if v242.Vip.TimeLeft >= 86400 then
			local v243 = tostring(math.floor(v242.Vip.TimeLeft / 86400));
			local v244 = tostring(math.floor((v242.Vip.TimeLeft - 86400 * v243) / 3600));
			local v245 = "Time Left : " .. v243 .. "d " .. v244 .. "h " .. tostring(math.floor((v242.Vip.TimeLeft - 86400 * v243 - 3600 * v244) / 60)) .. "m";
		elseif v242.Vip.TimeLeft >= 3600 then
			local v246 = tostring(math.floor(v242.Vip.TimeLeft / 3600));
			v245 = "Time Left : " .. v246 .. "h " .. tostring(math.floor((v242.Vip.TimeLeft - 3600 * v246) / 60)) .. "m";
		elseif v242.Vip.TimeLeft >= 60 then
			v245 = "Time Left : " .. tostring(math.floor(v242.Vip.TimeLeft / 60)) .. "m";
		else
			v245 = "Time Left : " .. tostring(v242.Vip.TimeLeft) .. "s";
		end;
		MenuFrame:WaitForChild("InfoFrame"):WaitForChild("VipImgBtn"):WaitForChild("TimeTxt").Text = v245;
		MenuFrame:WaitForChild("InfoFrame"):WaitForChild("VipImgBtn").Visible = true;
		DailyQuestFrame:WaitForChild("MaxFrame1"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "40";
		DailyQuestFrame:WaitForChild("MaxFrame2"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "40";
		DailyQuestFrame:WaitForChild("MaxFrame3"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "40";
		DailyQuestFrame:WaitForChild("MaxFrame4"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "40";
		DailyQuestFrame:WaitForChild("MaxFrame5"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "40";
		WeeklyQuestFrame:WaitForChild("MaxFrame1"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "200";
		WeeklyQuestFrame:WaitForChild("MaxFrame2"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "200";
		WeeklyQuestFrame:WaitForChild("MaxFrame3"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "200";
		WeeklyQuestFrame:WaitForChild("MaxFrame4"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "1000";
		WeeklyQuestFrame:WaitForChild("MaxFrame5"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "1000";
		WeeklyQuestFrame:WaitForChild("MaxFrame6"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "1000";
		WeeklyQuestFrame:WaitForChild("MaxFrame7"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "5000";
		WeeklyQuestFrame:WaitForChild("MaxFrame8"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "5000";
		WeeklyQuestFrame:WaitForChild("MaxFrame9"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "5000";
		MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt1").Text = "+ 400";
		MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt2").Text = "+ 2200";
		MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt3").Text = "+ 5200";
		MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt4").Text = "+ 12000";
		MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt5").Text = "+ 28000";
		MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt6").Text = "+ 60000";
		MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt1"):WaitForChild("VipAdTxt").Visible = false;
		MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt2"):WaitForChild("VipAdTxt").Visible = false;
		MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt3"):WaitForChild("VipAdTxt").Visible = false;
		MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt4"):WaitForChild("VipAdTxt").Visible = false;
		MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt5"):WaitForChild("VipAdTxt").Visible = false;
		MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt6"):WaitForChild("VipAdTxt").Visible = false;
		MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt12").Visible = true;
		MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt13").Visible = true;
	else
		MenuFrame:WaitForChild("InfoFrame"):WaitForChild("VipImgBtn").Visible = false;
		MenuFrame:WaitForChild("InfoFrame"):WaitForChild("VipImgBtn"):WaitForChild("TimeTxt").Visible = false;
		DailyQuestFrame:WaitForChild("MaxFrame1"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "20";
		DailyQuestFrame:WaitForChild("MaxFrame2"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "20";
		DailyQuestFrame:WaitForChild("MaxFrame3"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "20";
		DailyQuestFrame:WaitForChild("MaxFrame4"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "20";
		DailyQuestFrame:WaitForChild("MaxFrame5"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "20";
		WeeklyQuestFrame:WaitForChild("MaxFrame1"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100";
		WeeklyQuestFrame:WaitForChild("MaxFrame2"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100";
		WeeklyQuestFrame:WaitForChild("MaxFrame3"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "100";
		WeeklyQuestFrame:WaitForChild("MaxFrame4"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "500";
		WeeklyQuestFrame:WaitForChild("MaxFrame5"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "500";
		WeeklyQuestFrame:WaitForChild("MaxFrame6"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "500";
		WeeklyQuestFrame:WaitForChild("MaxFrame7"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "2500";
		WeeklyQuestFrame:WaitForChild("MaxFrame8"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "2500";
		WeeklyQuestFrame:WaitForChild("MaxFrame9"):WaitForChild("RewardTxt"):WaitForChild("GemImgBtn"):WaitForChild("AmountTxt").Text = "2500";
		MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt1").Text = "+ 200";
		MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt2").Text = "+ 1100";
		MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt3").Text = "+ 2600";
		MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt4").Text = "+ 6000";
		MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt5").Text = "+ 14000";
		MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt6").Text = "+ 30000";
		MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt1"):WaitForChild("VipAdTxt").Visible = true;
		MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt2"):WaitForChild("VipAdTxt").Visible = true;
		MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt3"):WaitForChild("VipAdTxt").Visible = true;
		MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt4"):WaitForChild("VipAdTxt").Visible = true;
		MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt5"):WaitForChild("VipAdTxt").Visible = true;
		MenuFrame:WaitForChild("SpecialFrame"):WaitForChild("GemTxt6"):WaitForChild("VipAdTxt").Visible = true;
	end;
	if not v242 or not v242.GhostRiderPass then
		MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt18").Visible = false;
		return;
	end;
	MenuFrame:WaitForChild("SettingFrame"):WaitForChild("SettingTxt18").Visible = true;
	MenuFrame:WaitForChild("SkillFrame"):WaitForChild("SkillTxt14").Text = "Hellfire : \"N\"";
end);
QuestData.Changed:Connect(function(p46)
	local v247 = HttpService:JSONDecode(p46);
	local v248 = HttpService:JSONDecode(Inventory.Value);
	if v247 and v248 then
		QuestDataModule.UpdateQuestDataFunc(v247, v248, AddComas, MenuFrame, Character, MainQuestFrame, FistStrength, BodyToughness, MovementSpeed, JumpForce, PsychicPower, VillainKilled, HeroKilled, SpecialQuestFrame, DailyQuestFrame, WeeklyQuestFrame);
	end;
end);
local v249 = Instance.new("BindableEvent");
v249.Event:connect(function()
	RemoteEvent:FireServer({ "ResetCharacter" });
end);
game:GetService("StarterGui"):SetCore("ResetButtonCallback", v249);
