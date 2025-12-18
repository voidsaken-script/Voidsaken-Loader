-- e
local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local inner = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local discordlink = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local title = Instance.new("TextLabel")
local desc = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local validate = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local get = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")

ScreenGui.Parent = gethui()
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = ScreenGui
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.BackgroundColor3 = Color3.fromRGB(51, 65, 91)
main.BorderColor3 = Color3.fromRGB(0, 0, 0)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.5, 0, 0.5, 0)
main.Size = UDim2.new(0, 500, 0, 300)

inner.Name = "inner"
inner.Parent = main
inner.AnchorPoint = Vector2.new(0.5, 0.5)
inner.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
inner.BorderColor3 = Color3.fromRGB(0, 0, 0)
inner.BorderSizePixel = 0
inner.Position = UDim2.new(0.5, 0, 0.5, 0)
inner.Size = UDim2.new(1, -4, 1, -4)

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = inner

discordlink.Name = "discordlink"
discordlink.Parent = inner
discordlink.AnchorPoint = Vector2.new(0, 1)
discordlink.BackgroundColor3 = Color3.fromRGB(61, 171, 255)
discordlink.BackgroundTransparency = 0.550
discordlink.BorderColor3 = Color3.fromRGB(0, 0, 0)
discordlink.BorderSizePixel = 0
discordlink.Position = UDim2.new(0, 15, 1, -50)
discordlink.Size = UDim2.new(1, -30, 0, 40)
discordlink.Font = Enum.Font.ArialBold
discordlink.Text = "discord.gg/fdBZygQthm"
discordlink.TextColor3 = Color3.fromRGB(71, 160, 255)
discordlink.TextSize = 17.000

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = discordlink

title.Name = "title"
title.Parent = main
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.BorderColor3 = Color3.fromRGB(0, 0, 0)
title.BorderSizePixel = 0
title.Position = UDim2.new(0, 20, 0, 10)
title.Size = UDim2.new(1, 0, 0, 21)
title.Font = Enum.Font.ArialBold
title.Text = "Join Discord?"
title.TextColor3 = Color3.fromRGB(255, 151, 151)
title.TextSize = 21.000
title.TextXAlignment = Enum.TextXAlignment.Left

desc.Name = "desc"
desc.Parent = main
desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
desc.BackgroundTransparency = 1.000
desc.BorderColor3 = Color3.fromRGB(0, 0, 0)
desc.BorderSizePixel = 0
desc.Position = UDim2.new(0, 20, 0, 30)
desc.Size = UDim2.new(1, -30, 0, 50)
desc.Font = Enum.Font.ArialBold
local localeid = game.Players.LocalPlayer.LocaleId
local translations = {
    ["en-us"] = "Would you like to join the Voidsaken official discord server? you can view updates and interact with a community. This is completely optional, you do not have to join to access this script.",
    ["zh-cn"] = "您想加入 Voidsaken 官方 Discord 服务器吗？您可以查看更新并与社区互动。这完全是可选的，您无需加入即可访问此脚本。",
    ["zh-tw"] = "您想加入 Voidsaken 官方 Discord 伺服器嗎？您可以查看更新並與社區互動。這完全是可選的，您無需加入即可存取此腳本。",
    ["fr-fr"] = "Souhaitez-vous rejoindre le serveur Discord officiel de Voidsaken ? Vous pourrez y consulter les mises à jour et interagir avec la communauté. C'est entièrement facultatif ; vous n'êtes pas obligé de vous inscrire pour accéder à ce script.",
    ["de-de"] = "Möchtest du dem offiziellen Discord-Server von Voidsaken beitreten? Du kannst Updates ansehen und mit der Community interagieren. Dies ist völlig optional. Du musst nicht beitreten, um auf dieses Skript zuzugreifen.",
    ["id-id"] = "Ingin bergabung dengan server Discord resmi Voidsaken? Anda dapat melihat pembaruan dan berinteraksi dengan komunitas. Ini sepenuhnya opsional, Anda tidak harus bergabung untuk mengakses skrip ini.",
    ["it-it"] = "Vuoi unirti al server Discord ufficiale di Voidsaken? Puoi visualizzare gli aggiornamenti e interagire con la community. Questo è completamente facoltativo, non è necessario iscriversi per accedere a questo script.",
    ["ja-jp"] = "Voidsaken公式Discordサーバーに参加しませんか？アップデートの確認やコミュニティとの交流が可能です。参加は完全に任意です。このスクリプトにアクセスするために参加する必要はありません。",
    ["ko-kr"] = "Voidsaken 공식 디스코드 서버에 가입하시겠습니까? 업데이트를 확인하고 커뮤니티와 소통할 수 있습니다. 이는 완전히 선택 사항이며, 이 스크립트에 접근하기 위해 가입할 필요는 없습니다.",
    ["pl-pl"] = "Chcesz dołączyć do oficjalnego serwera Discord Voidsaken? Możesz przeglądać aktualizacje i wchodzić w interakcje ze społecznością. To całkowicie opcjonalne, nie musisz się rejestrować, aby uzyskać dostęp do tego skryptu.",
    ["ru-ru"] = "Хотите присоединиться к официальному Discord-серверу Voidsaken? Вы сможете просматривать обновления и взаимодействовать с сообществом. Это совершенно необязательно, вам не нужно регистрироваться, чтобы получить доступ к этому скрипту.",
    ["es-es"] = "¿Te gustaría unirte al servidor oficial de Discord de Voidsaken? Puedes ver actualizaciones e interactuar con la comunidad. Esto es completamente opcional; no es necesario unirse para acceder a este script.",
    ["th-th"] = "คุณต้องการเข้าร่วมเซิร์ฟเวอร์ดิสคอร์ดอย่างเป็นทางการของ Voidsaken ไหม? คุณสามารถดูการอัปเดตและโต้ตอบกับชุมชนได้ การดำเนินการนี้เป็นทางเลือก คุณไม่จำเป็นต้องเข้าร่วมเพื่อเข้าถึงสคริปต์นี้",
    ["tr-tr"] = "Voidsaken resmi Discord sunucusuna katılmak ister misiniz? Güncellemeleri görüntüleyebilir ve bir toplulukla etkileşim kurabilirsiniz. Bu tamamen isteğe bağlıdır, bu betiğe erişmek için katılmanız gerekmez.",
    ["vi-vn"] = "Bạn có muốn tham gia máy chủ Discord chính thức của Voidsaken không? Bạn có thể xem các bản cập nhật và tương tác với cộng đồng. Điều này hoàn toàn tùy chọn, bạn không cần phải tham gia để truy cập tập lệnh này."
}
desc.Text = (translations[localeid] and ("--auto translated to your language--\n" .. translations[localeid])) or ("--failed to auto translate--\n" .. translations["en-us"])
desc.TextColor3 = Color3.fromRGB(255, 255, 255)
desc.TextSize = 15.000
desc.TextWrapped = true
desc.TextScaled = true
desc.TextXAlignment = Enum.TextXAlignment.Left
desc.TextYAlignment = Enum.TextYAlignment.Top

UICorner_3.CornerRadius = UDim.new(0, 5)
UICorner_3.Parent = main

validate.Name = "validate"
validate.Parent = main
validate.AnchorPoint = Vector2.new(0, 1)
validate.BackgroundColor3 = Color3.fromRGB(70, 255, 122)
validate.BackgroundTransparency = 0.550
validate.BorderColor3 = Color3.fromRGB(0, 0, 0)
validate.BorderSizePixel = 0
validate.Position = UDim2.new(0, 15, 1, -15)
validate.Size = UDim2.new(0, 100, 0, 30)
validate.Font = Enum.Font.ArialBold
validate.Text = "Copy Link (✅)"
validate.TextColor3 = Color3.fromRGB(84, 255, 113)
validate.TextSize = 14.000

UICorner_4.CornerRadius = UDim.new(0, 5)
UICorner_4.Parent = validate

get.Name = "get"
get.Parent = main
get.AnchorPoint = Vector2.new(0, 1)
get.BackgroundColor3 = Color3.fromRGB(255, 242, 66)
get.BackgroundTransparency = 0.550
get.BorderColor3 = Color3.fromRGB(0, 0, 0)
get.BorderSizePixel = 0
get.Position = UDim2.new(0, 130, 1, -15)
get.Size = UDim2.new(0, 100, 0, 30)
get.Font = Enum.Font.ArialBold
get.Text = "No Thanks (❌)"
get.TextColor3 = Color3.fromRGB(237, 255, 42)
get.TextSize = 14.000

UICorner_5.CornerRadius = UDim.new(0, 5)
UICorner_5.Parent = get

local UIS = game:GetService("UserInputService")
local function dragify(Frame, DragInp)
	local dragToggle = nil
	local dragInput = nil
	local dragStart = nil
	local Delta
	local Position
	local startPos
	local function updateInput(input)
		Delta = input.Position - dragStart
		Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
		Frame.Position = Position
	end
	DragInp.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
			dragToggle = true
			dragStart = input.Position
			startPos = Frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	DragInp.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	UIS.InputChanged:Connect(function(input)
		if input == dragInput and dragToggle then
			updateInput(input)
		end
	end)
end
dragify(main, inner)

local pressed = false
validate.MouseButton1Click:Connect(function()
    main:Destroy()
    pressed = true
    setclipboard(discordlink.Text)
end)

get.MouseButton1Click:Connect(function()
    main:Destroy()
    pressed = true
end)

repeat
	task.wait()
until pressed;
